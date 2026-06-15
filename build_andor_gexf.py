"""
build_andor_gexf.py
-------------------
Builds the bipartite AND/OR task graph from the Prolog exports:

    task_instances.json   (export_andor_graph/0)
    groups.json           (export_groups/0)

Structure:
  - Task nodes:     "craft(default:pick_bronze)", "collect(default:tree)", ...
  - Group nodes:    "group(wood)", "group(dye,color_red)" -- behave as OR
                    nodes whose in-edges are their member items' producers.
  - Instance nodes: "inst_17", ... -- one per task/4 solution.
  - Edges task/group -> instance encode AND (preconditions of one solution)
  - Edges instance -> task encode OR (alternative ways to achieve the task)

Usage
-----
    python build_andor_gexf.py
    python build_andor_gexf.py --label-hubs 8        # label only top-8 hubs
    python build_andor_gexf.py --label-hubs 0        # no labels at all
    python build_andor_gexf.py --tasks task_instances.json \\
                               --groups groups.json \\
                               --output task_andor_graph.gexf
"""

import argparse
import json
import re
import sys
from collections import defaultdict

import networkx as nx


# ---------------------------------------------------------------------------
# Loading the Prolog exports
# ---------------------------------------------------------------------------


def load_instances(path: str) -> list[dict]:
    with open(path) as f:
        instances = json.load(f)
    print(f"Loaded {len(instances)} task instances")
    return instances


def load_group_members(path: str) -> dict[str, set[str]]:
    with open(path) as f:
        rows = json.load(f)
    members: dict[str, set[str]] = defaultdict(set)
    for row in rows:
        members[row["group"]].add(row["item"])
    print(
        f"Loaded {sum(len(v) for v in members.values())} group memberships "
        f"across {len(members)} groups"
    )
    return members


def members_of_spec(spec: str, group_members: dict[str, set[str]]) -> set[str]:
    """
    Resolve a group spec to its member items.
    'wood'            -> items with group wood
    'dye,color_red'   -> items with BOTH groups (intersection)
    """
    if "," in spec:
        main, sub = spec.split(",", 1)
        return group_members.get(main, set()) & group_members.get(sub, set())
    return group_members.get(spec, set())


# ---------------------------------------------------------------------------
# Graph construction
# ---------------------------------------------------------------------------


def build_graph(
    instances: list[dict], group_members: dict[str, set[str]]
) -> nx.DiGraph:
    # First pass: map each produced item to the task node producing it
    producer: dict[str, str] = {}
    for inst in instances:
        target_node = f"{inst['action']}({inst['target']})"
        for eff in inst["eff"]:
            m = re.match(r"has\('?([^',)]+)'?,", eff)
            if m:
                producer[m.group(1)] = target_node
        if inst["action"] == "explore":
            producer[f"at:{inst['target']}"] = target_node

    # Second pass: build the bipartite graph
    G = nx.DiGraph()
    unmapped: set[str] = set()

    for inst in instances:
        target_node = f"{inst['action']}({inst['target']})"
        instance_node = f"inst_{inst['id']}"

        G.add_node(
            target_node, kind="task", action=inst["action"], label=inst["target"]
        )
        G.add_node(instance_node, kind="instance", label="")

        # instance -> task  (OR: one alternative way to achieve target)
        G.add_edge(instance_node, target_node)

        # preconditions -> instance  (AND: all required simultaneously)
        for pre in inst["pre"]:
            m_group = re.match(r"has\('?group:([^',)]+)'?,", pre)
            m_has = re.match(r"has\('?([^',)]+)'?,", pre)
            m_at = re.match(r"at\('?([^',)]+)'?\)", pre)

            if m_group:
                spec = m_group.group(1)
                gnode = f"group({spec})"
                if gnode not in G:
                    G.add_node(gnode, kind="task", action="group", label=spec)
                    members = members_of_spec(spec, group_members)
                    if not members:
                        unmapped.add(f"group:{spec} (no members)")
                    for item in members:
                        if item in producer:
                            G.add_edge(producer[item], gnode)
                        else:
                            unmapped.add(f"{item} (member of {spec}, no producer)")
                G.add_edge(gnode, instance_node)

            elif m_has:
                item = m_has.group(1)
                if item in producer:
                    G.add_edge(producer[item], instance_node)
                else:
                    unmapped.add(f"{item} (no producer)")

            elif m_at:
                key = f"at:{m_at.group(1)}"
                if key in producer:
                    G.add_edge(producer[key], instance_node)
                else:
                    unmapped.add(f"at({m_at.group(1)}) (no explore task)")

    if unmapped:
        print(
            f"\nWARNING: {len(unmapped)} unmapped preconditions (edges not created):",
            file=sys.stderr,
        )
        for u in sorted(unmapped)[:20]:
            print(f"  {u}", file=sys.stderr)
        if len(unmapped) > 20:
            print(f"  ... and {len(unmapped) - 20} more", file=sys.stderr)

    return G


# ---------------------------------------------------------------------------
# Label control for visualization
# ---------------------------------------------------------------------------


def restrict_labels_to_hubs(G: nx.DiGraph, n_hubs: int) -> None:
    """
    Keep labels only on the n_hubs task nodes with highest out-degree;
    blank every other label. Instance nodes are already unlabelled.
    With n_hubs = 0, all labels are blanked.
    """
    task_nodes = [n for n, d in G.nodes(data=True) if d.get("kind") == "task"]
    hubs = set(sorted(task_nodes, key=G.out_degree, reverse=True)[:n_hubs])

    for n in task_nodes:
        if n not in hubs:
            G.nodes[n]["label"] = ""

    if hubs:
        print(f"Labels kept on top {len(hubs)} hubs:")
        for h in sorted(hubs, key=G.out_degree, reverse=True):
            print(f"  out-degree {G.out_degree(h):>3}  {h}")


# ---------------------------------------------------------------------------
# Sanity report
# ---------------------------------------------------------------------------


def report(G: nx.DiGraph) -> None:
    task_nodes = [n for n, d in G.nodes(data=True) if d.get("kind") == "task"]
    inst_nodes = [n for n, d in G.nodes(data=True) if d.get("kind") == "instance"]
    group_nodes = [n for n in task_nodes if G.nodes[n].get("action") == "group"]
    free_instances = [n for n in inst_nodes if G.in_degree(n) == 0]

    print(f"\nGraph: {G.number_of_nodes()} nodes, {G.number_of_edges()} edges")
    print(
        f"  Task nodes:     {len(task_nodes)} (of which {len(group_nodes)} group nodes)"
    )
    print(f"  Instance nodes: {len(inst_nodes)}")
    print(
        f"  Instances with no preconditions: {len(free_instances)} "
        f"(should be ~explore tasks + hand-breakable collects)"
    )


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Build the bipartite AND/OR task graph as GEXF."
    )
    parser.add_argument(
        "--tasks", default="task_instances.json", help="JSON from export_andor_graph/0"
    )
    parser.add_argument(
        "--groups", default="groups.json", help="JSON from export_groups/0"
    )
    parser.add_argument("--output", default="task_andor_graph.gexf")
    parser.add_argument(
        "--label-hubs",
        type=int,
        default=None,
        metavar="N",
        help="Keep labels only on the N highest out-degree "
        "task nodes (0 = no labels). Default: keep all.",
    )
    args = parser.parse_args()

    instances = load_instances(args.tasks)
    group_members = load_group_members(args.groups)

    G = build_graph(instances, group_members)

    if args.label_hubs is not None:
        restrict_labels_to_hubs(G, args.label_hubs)

    report(G)
    nx.write_gexf(G, args.output)
    print(f"Written: {args.output}")


if __name__ == "__main__":
    main()
