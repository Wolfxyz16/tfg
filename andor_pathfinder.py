"""
andor_pathfinder.py
-------------------
Planner over the bipartite AND/OR task graph (task_andor_graph.gexf),
with optional GEXF export of the plan subgraph for visualization.

THE GRAPH STRUCTURE MAKES AND/OR EXPLICIT
------------------------------------------
The graph has two node kinds (node attribute "kind"):

  task nodes      "craft(default:pick_bronze)", "collect(default:tree)", ...
                  Group nodes "group(wood)" behave identically (OR semantics).
  instance nodes  "inst_42", ... -- one per task/4 solution in the Prolog KB.

  in-edges of an INSTANCE node  =  AND  (all preconditions of one solution)
  in-edges of a TASK node       =  OR   (alternative ways to achieve it)

Usage
-----
    python andor_pathfinder.py
    python andor_pathfinder.py --start "collect(default:tree)" \\
                               --end   "collect(default:diamond)" \\
                               --export diamond_plan.gexf
"""

import argparse
import networkx as nx


# ---------------------------------------------------------------------------
# Graph loading
# ---------------------------------------------------------------------------


def load_graph(path: str) -> nx.DiGraph:
    G = nx.read_gexf(path)
    tasks = [n for n, d in G.nodes(data=True) if d.get("kind") == "task"]
    insts = [n for n, d in G.nodes(data=True) if d.get("kind") == "instance"]
    print(
        f"Loaded graph: {G.number_of_nodes()} nodes, "
        f"{G.number_of_edges()} edges "
        f"({len(tasks)} tasks, {len(insts)} instances)"
    )
    return G


def is_instance(G: nx.DiGraph, node: str) -> bool:
    return G.nodes[node].get("kind") == "instance"


def is_group(G: nx.DiGraph, node: str) -> bool:
    return G.nodes[node].get("action") == "group"


# ---------------------------------------------------------------------------
# AND/OR planner
# ---------------------------------------------------------------------------


def solve(
    G: nx.DiGraph, node: str, acquired: frozenset, visiting: frozenset, memo: dict
) -> list[str] | None:
    """
    Returns the full ordered node sequence achieving `node` (task, group,
    AND instance nodes included), or None if unreachable.

    Task/group node: OR over in-instances/in-members -- cheapest one wins.
                     No in-edges means primitive: sequence is [node].
    Instance node:   AND over in-tasks -- all planned, concatenated, then
                     the instance itself is appended.
    """
    if node in acquired:
        return []
    if node in visiting:
        return None  # cycle guard

    key = (node, acquired)
    if key in memo:
        return memo[key]

    visiting = visiting | {node}

    if is_instance(G, node):
        # AND: every in-task is required
        seq: list[str] = []
        local = set(acquired)
        for req in G.predecessors(node):
            sub = solve(G, req, frozenset(local), visiting, memo)
            if sub is None:
                memo[key] = None
                return None
            seq.extend(sub)
            local.update(sub)
        seq.append(node)
        memo[key] = seq
        return seq

    # Task or group node: OR over in-neighbors
    alternatives = list(G.predecessors(node))

    if not alternatives:
        result = [node]
        memo[key] = result
        return result

    best: list[str] | None = None
    for alt in alternatives:
        sub = solve(G, alt, acquired, visiting, memo)
        if sub is not None and (best is None or len(sub) < len(best)):
            best = sub

    if best is None:
        memo[key] = None
        return None

    result = best + [node]
    memo[key] = result
    return result


def find_plan(G: nx.DiGraph, start: str, end: str) -> list[str] | None:
    """
    Full prerequisite node sequence for `end` (tasks, groups, instances),
    deduplicated, trimmed or prefixed with `start`.
    """
    full = solve(G, end, frozenset(), frozenset(), {})
    if full is None:
        return None

    seen: set[str] = set()
    seq = [n for n in full if not (n in seen or seen.add(n))]

    if start in seq:
        return seq[seq.index(start) :]
    return [start] + seq


def task_view(G: nx.DiGraph, seq: list[str]) -> list[str]:
    """Filter the full node sequence down to executable task steps
    (instances and group junctions hidden)."""
    return [n for n in seq if not is_instance(G, n) and not is_group(G, n)]


# ---------------------------------------------------------------------------
# Plan subgraph export (for Gephi)
# ---------------------------------------------------------------------------


def export_plan_subgraph(G: nx.DiGraph, seq: list[str], path: str) -> None:
    """
    Write the induced subgraph over the plan's node sequence as GEXF,
    preserving the kind/action/label attributes so Gephi styling matches
    the full-graph figure. Adds a 'step' attribute with the execution
    order of task nodes (for layout or label ordering in Gephi).
    """
    SG = G.subgraph(seq).copy()

    step = 0
    for n in seq:
        if not is_instance(G, n) and not is_group(G, n):
            step += 1
            SG.nodes[n]["step"] = step

    nx.write_gexf(SG, path)
    tasks = sum(1 for n in SG if not is_instance(SG, n) and not is_group(SG, n))
    groups = sum(1 for n in SG if is_group(SG, n))
    insts = sum(1 for n in SG if is_instance(SG, n))
    print(f"\nExported plan subgraph: {path}")
    print(
        f"  {SG.number_of_nodes()} nodes "
        f"({tasks} tasks, {groups} groups, {insts} instances), "
        f"{SG.number_of_edges()} edges"
    )


# ---------------------------------------------------------------------------
# Pretty printing
# ---------------------------------------------------------------------------


def print_plan(steps: list[str]) -> None:
    print(f"\nAND/OR plan  ({len(steps)} steps)")
    print("  " + "-" * 56)
    for i, node in enumerate(steps):
        action, _, rest = node.partition("(")
        item = rest.rstrip(")")
        tag = "  <- START" if i == 0 else ("  <- GOAL" if i == len(steps) - 1 else "")
        print(f"  [{i:>2}] {action:<10} {item}{tag}")
    print("  " + "-" * 56)


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Planner over the bipartite AND/OR task graph."
    )
    parser.add_argument("--gexf", default="task_andor_graph.gexf")
    parser.add_argument("--start", default="collect(default:tree)")
    parser.add_argument("--end", default="collect(default:diamond)")
    parser.add_argument(
        "--export",
        default=None,
        metavar="OUT.gexf",
        help="Write the plan subgraph (tasks, groups, "
        "instances) as GEXF for Gephi visualization",
    )
    parser.add_argument(
        "--show-junctions",
        action="store_true",
        help="Include group nodes in the printed plan",
    )
    args = parser.parse_args()

    G = load_graph(args.gexf)

    for node in (args.start, args.end):
        if node not in G.nodes:
            item = node.split(":")[-1].rstrip(")")
            close = [n for n in G.nodes if item in n][:5]
            print(f"\nNode not found: '{node}'")
            if close:
                print(f"Similar nodes: {close}")
            return

    print(f"\nSource : {args.start}")
    print(f"Target : {args.end}")

    seq = find_plan(G, args.start, args.end)
    if seq is None:
        print("\nNo plan found -- the goal is unreachable from primitives.")
        return

    if args.show_junctions:
        steps = [n for n in seq if not is_instance(G, n)]
    else:
        steps = task_view(G, seq)
    print_plan(steps)

    if args.export:
        export_plan_subgraph(G, seq, args.export)


if __name__ == "__main__":
    main()
