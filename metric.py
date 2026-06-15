"""
compute_task_space_metrics.py
=============================
Computes every quantitative metric reported in Chapter 5 ("Analysis of the
Task Space") directly from the two authoritative exports of the knowledge base,
and stores the results as machine-readable JSON plus a human-readable report.

This script is the single source of truth for the chapter's numbers: the thesis
prose, tables, and figures should all trace back to the values it produces, so
that the analysis stays reproducible and cannot drift from the code.

Inputs
------
  task_instances.json   Exported by export_andor_graph/0 in kb/main.pl.
                        One JSON object per task/4 solution (the instantiations),
                        with fields: id, action, target, pre[], eff[].
  task_andor_graph.gexf Bipartite AND/OR graph built by build_andor_gexf.py.
                        Node kinds: "task" (action in craft/collect/explore/group)
                        and "instance" (one per task/4 solution).

Outputs
-------
  metrics.json          All computed metrics, nested by section.
  metrics_report.txt    The same numbers formatted as a readable report.

Two levels of abstraction are reported throughout, matching the chapter:
  * task instantiation  -- a full <Action, Target, Pre, Eff> tuple.
  * task objective      -- a distinct (Action, Target) pair.

Topology is computed on the OBJECTIVE-LEVEL PROJECTION of the AND/OR graph:
each instance node is contracted onto the objective it produces, item-group
junctions are passed through transitively, and an edge A -> B is kept whenever
an effect of A satisfies a precondition of some instantiation of B.

Usage
-----
  python compute_task_space_metrics.py
  python compute_task_space_metrics.py --instances task_instances.json \
                                       --gexf task_andor_graph.gexf \
                                       --out-json metrics.json \
                                       --out-report metrics_report.txt
"""

from __future__ import annotations

import argparse
import json
import statistics as st
from collections import Counter, defaultdict, deque

import networkx as nx

ACTIONS = ["craft", "collect", "explore"]


# ---------------------------------------------------------------------------
# Loading
# ---------------------------------------------------------------------------
def load_instances(path: str) -> list[dict]:
    with open(path) as f:
        inst = json.load(f)
    return inst


def load_graph(path: str) -> nx.DiGraph:
    return nx.read_gexf(path)


# ---------------------------------------------------------------------------
# Instantiation- and objective-level metrics (from the Prolog export)
# ---------------------------------------------------------------------------
def task_level_metrics(inst: list[dict]) -> dict:
    by_action = Counter(e["action"] for e in inst)

    # objectives = distinct (action, target)
    objs: dict[tuple, list] = defaultdict(list)
    for e in inst:
        objs[(e["action"], e["target"])].append(e)
    obj_by_action = Counter(a for (a, _t) in objs)

    # preconditions per instantiation, by action
    pre_stats = {}
    for act in ACTIONS:
        counts = [len(e["pre"]) for e in inst if e["action"] == act]
        pre_stats[act] = {
            "mean_preconditions": round(st.mean(counts), 3) if counts else 0.0,
            "max_preconditions": max(counts) if counts else 0,
        }

    # the instantiation with the most preconditions (worked-example anchor)
    widest = max(inst, key=lambda e: len(e["pre"]))

    # effect arity (the chapter claims every task has exactly one effect)
    eff_arity = Counter(len(e["eff"]) for e in inst)

    # contextual density: instantiations per objective, by action
    density = {}
    for act in ACTIONS:
        mult = [len(v) for (a, _t), v in objs.items() if a == act]
        density[act] = {
            "objectives": len(mult),
            "instantiations": sum(mult),
            "mean_instantiations_per_objective": round(st.mean(mult), 2)
            if mult
            else 0.0,
            "max_instantiations_per_objective": max(mult) if mult else 0,
        }
    # which objective expands the most (the long tail)
    collect_objs = {t: len(v) for (a, t), v in objs.items() if a == "collect"}
    densest = (
        max(collect_objs.items(), key=lambda kv: kv[1]) if collect_objs else (None, 0)
    )

    return {
        "instantiations": {
            "total": len(inst),
            "by_action": dict(by_action),
        },
        "objectives": {
            "total": len(objs),
            "by_action": dict(obj_by_action),
            "by_action_pct": {
                a: round(100 * obj_by_action[a] / len(objs), 1) for a in obj_by_action
            },
        },
        "preconditions_per_instantiation": pre_stats,
        "widest_precondition_task": {
            "action": widest["action"],
            "target": widest["target"],
            "n_preconditions": len(widest["pre"]),
            "preconditions": widest["pre"],
        },
        "effect_arity_distribution": dict(sorted(eff_arity.items())),
        "contextual_density": density,
        "densest_collect_objective": {
            "target": densest[0],
            "instantiations": densest[1],
        },
    }


# ---------------------------------------------------------------------------
# Objective-level dependency graph (projection of the AND/OR graph)
# ---------------------------------------------------------------------------
def build_objective_projection(G: nx.DiGraph) -> nx.DiGraph:
    kind = {n: d.get("kind") for n, d in G.nodes(data=True)}
    action = {n: d.get("action") for n, d in G.nodes(data=True)}

    P = nx.DiGraph()
    P.add_nodes_from(n for n in G if kind[n] == "task")

    # edges via instances: task/group pred -> instance -> task succ
    for i in [n for n in G if kind[n] == "instance"]:
        preds = [p for p in G.predecessors(i) if kind[p] == "task"]
        succs = [s for s in G.successors(i) if kind[s] == "task"]
        for p in preds:
            for s in succs:
                if p != s:
                    P.add_edge(p, s)

    # direct task->task edges already present in the GEXF (producer -> group)
    for u, v in G.edges():
        if kind[u] == "task" and kind[v] == "task" and u != v:
            P.add_edge(u, v)

    # contract group junctions (pass-through), leaving the 448 real objectives
    Pg = P.copy()
    for g in [n for n in Pg if action.get(n) == "group"]:
        ins = list(Pg.predecessors(g))
        outs = list(Pg.successors(g))
        for a in ins:
            for b in outs:
                if a != b:
                    Pg.add_edge(a, b)
        Pg.remove_node(g)

    return Pg


def graph_metrics(G_full: nx.DiGraph, Pg: nx.DiGraph) -> dict:
    action = {n: d.get("action") for n, d in G_full.nodes(data=True)}
    kind = {n: d.get("kind") for n, d in G_full.nodes(data=True)}

    n, e = Pg.number_of_nodes(), Pg.number_of_edges()

    # connectivity
    wccs = sorted((len(c) for c in nx.weakly_connected_components(Pg)), reverse=True)
    # cycles
    sccs = sorted(
        (len(c) for c in nx.strongly_connected_components(Pg) if len(c) > 1),
        reverse=True,
    )
    in_cycles = sum(sccs)

    # condensation -> DAG, longest path
    C = nx.condensation(Pg)
    longest = nx.dag_longest_path_length(C)

    # top hubs by out-degree (objective level + full-graph group hubs)
    obj_hubs = sorted(Pg.nodes(), key=lambda x: Pg.out_degree(x), reverse=True)[:5]
    group_hubs = sorted(
        [x for x in G_full if action.get(x) == "group"],
        key=lambda x: G_full.out_degree(x),
        reverse=True,
    )[:5]

    return {
        "full_andor_graph": {
            "nodes": G_full.number_of_nodes(),
            "edges": G_full.number_of_edges(),
            "task_nodes": sum(1 for x in G_full if kind[x] == "task"),
            "instance_nodes": sum(1 for x in G_full if kind[x] == "instance"),
        },
        "objective_projection": {
            "nodes": n,
            "edges": e,
            "mean_out_degree": round(e / n, 2),
        },
        "connectivity": {
            "n_components": len(wccs),
            "largest_component": wccs[0],
            "largest_component_pct": round(100 * wccs[0] / n, 1),
            "small_components_le8": sum(1 for w in wccs if w <= 8),
        },
        "cycles": {
            "n_nontrivial_sccs": len(sccs),
            "objectives_in_cycles": in_cycles,
            "objectives_in_cycles_pct": round(100 * in_cycles / n, 1),
            "acyclic_backbone": n - in_cycles,
            "acyclic_backbone_pct": round(100 * (n - in_cycles) / n, 1),
            "largest_scc": sccs[0] if sccs else 0,
        },
        "condensation": {
            "nodes": C.number_of_nodes(),
            "edges": C.number_of_edges(),
            "longest_path": longest,
        },
        "hubs": {
            "top_objective_out_degree": [(x, Pg.out_degree(x)) for x in obj_hubs],
            "top_group_out_degree": [(x, G_full.out_degree(x)) for x in group_hubs],
        },
    }


# ---------------------------------------------------------------------------
# Depth distribution (objective curriculum)
# ---------------------------------------------------------------------------
def depth_metrics(G_full: nx.DiGraph, Pg: nx.DiGraph) -> dict:
    action = {n: d.get("action") for n, d in G_full.nodes(data=True)}

    # map node -> SCC id, then BFS from source SCCs over the condensation
    comp = {}
    for cid, c in enumerate(nx.strongly_connected_components(Pg)):
        for x in c:
            comp[x] = cid
    C = nx.condensation(Pg)
    sources = [c for c in C.nodes() if C.in_degree(c) == 0]
    dist = {s: 0 for s in sources}
    dq = deque(sources)
    while dq:
        u = dq.popleft()
        for v in C.successors(u):
            if v not in dist:
                dist[v] = dist[u] + 1
                dq.append(v)

    node_depth = {x: dist[comp[x]] for x in Pg.nodes() if comp[x] in dist}
    hist = Counter(node_depth.values())

    by_action_mean = {}
    for act in ACTIONS:
        ds = [node_depth[x] for x in node_depth if action.get(x) == act]
        by_action_mean[act] = round(st.mean(ds), 2) if ds else 0.0

    return {
        "distribution": {int(d): hist[d] for d in sorted(hist)},
        "mean_depth": round(st.mean(node_depth.values()), 2),
        "mean_depth_by_action": by_action_mean,
        "unreachable_excluded": Pg.number_of_nodes() - len(node_depth),
    }


# ---------------------------------------------------------------------------
# Report rendering
# ---------------------------------------------------------------------------
def render_report(m: dict) -> str:
    L = []
    w = L.append
    w("=" * 70)
    w("  TASK SPACE METRICS  (Chapter 5)")
    w("=" * 70)

    t = m["task_level"]
    w("\n[ VASTNESS ]")
    w(
        f"  Task instantiations : {t['instantiations']['total']}   {t['instantiations']['by_action']}"
    )
    w(
        f"  Task objectives     : {t['objectives']['total']}   {t['objectives']['by_action']}"
    )
    w(f"                        ({t['objectives']['by_action_pct']})")
    w("  Preconditions per instantiation:")
    for a, s in t["preconditions_per_instantiation"].items():
        w(f"    {a:8s} mean {s['mean_preconditions']:>4}  max {s['max_preconditions']}")
    ww = t["widest_precondition_task"]
    w(
        f"    widest: {ww['action']}({ww['target']}) -> {ww['n_preconditions']} preconditions"
    )
    w(f"  Effect arity distribution: {t['effect_arity_distribution']}")
    w("  Contextual density (instantiations per objective):")
    for a, s in t["contextual_density"].items():
        w(
            f"    {a:8s} {s['objectives']:>3} obj -> {s['instantiations']:>4} inst  "
            f"(mean {s['mean_instantiations_per_objective']}, max {s['max_instantiations_per_objective']})"
        )
    dc = t["densest_collect_objective"]
    w(
        f"    densest collect objective: {dc['target']} ({dc['instantiations']} contexts)"
    )

    g = m["graph"]
    w("\n[ TOPOLOGY ]")
    fa = g["full_andor_graph"]
    w(
        f"  Full AND/OR graph   : {fa['nodes']} nodes, {fa['edges']} edges "
        f"({fa['task_nodes']} task, {fa['instance_nodes']} instance)"
    )
    op = g["objective_projection"]
    w(
        f"  Objective projection: {op['nodes']} nodes, {op['edges']} edges, "
        f"mean out-degree {op['mean_out_degree']}"
    )
    c = g["connectivity"]
    w(
        f"  Connectivity        : largest component {c['largest_component']} "
        f"({c['largest_component_pct']}%), {c['small_components_le8']} small fragments"
    )
    cy = g["cycles"]
    w(
        f"  Cycles              : {cy['n_nontrivial_sccs']} loops, "
        f"{cy['objectives_in_cycles']} objectives ({cy['objectives_in_cycles_pct']}%), "
        f"largest {cy['largest_scc']}"
    )
    w(
        f"  Acyclic backbone    : {cy['acyclic_backbone']} ({cy['acyclic_backbone_pct']}%)"
    )
    cd = g["condensation"]
    w(
        f"  Condensation DAG    : {cd['nodes']} nodes, {cd['edges']} edges, "
        f"longest chain {cd['longest_path']}"
    )
    w("  Top objective hubs (out-degree):")
    for name, deg in g["hubs"]["top_objective_out_degree"]:
        w(f"    {deg:>3}  {name}")

    d = m["depth"]
    w("\n[ DEPTH / CURRICULUM ]")
    w(f"  Depth distribution  : {d['distribution']}")
    w(
        f"  Mean depth          : {d['mean_depth']}  by action {d['mean_depth_by_action']}"
    )

    w("\n" + "=" * 70)
    return "\n".join(L)


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
def main() -> None:
    ap = argparse.ArgumentParser(description="Compute Chapter 5 task-space metrics.")
    ap.add_argument("--instances", default="task_instances.json")
    ap.add_argument("--gexf", default="task_andor_graph.gexf")
    ap.add_argument("--out-json", default="metrics.json")
    ap.add_argument("--out-report", default="metrics_report.txt")
    args = ap.parse_args()

    inst = load_instances(args.instances)
    G = load_graph(args.gexf)
    Pg = build_objective_projection(G)

    metrics = {
        "task_level": task_level_metrics(inst),
        "graph": graph_metrics(G, Pg),
        "depth": depth_metrics(G, Pg),
    }

    with open(args.out_json, "w") as f:
        json.dump(metrics, f, indent=2)

    report = render_report(metrics)
    with open(args.out_report, "w") as f:
        f.write(report + "\n")

    print(report)
    print(f"\nWritten: {args.out_json}, {args.out_report}")


if __name__ == "__main__":
    main()
