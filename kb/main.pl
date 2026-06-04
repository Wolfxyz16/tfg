:- ['data/main'].
:- ['tasks'].

source(Node, Biome) :- node_top(Biome, Node).
source(Node, Biome) :- node_filler(Biome, Node).
source(Node, Biome) :- node_stone(Biome, Node).
source(Node, Biome) :- node_riverbed(Biome, Node).
source(Node, Biome) :- node_dungeon(Biome, Node).
source(Node, Biome) :- node_dust(Biome, Node).
source(Node, Biome) :- node_water_top(Biome, Node).

ore_source(Node, Biome) :-
    ore(Id, _, Node, _, _),
    (ore_in_biome(Id, Biome) ; \+ ore_in_biome(Id, _)).

decoration_source(Node, Biome) :-
    deco_node(Id, Node),
    \+ decoration_biome(Id, Biome),
    biome(Biome).

decoration_source(Node, Biome) :-
    deco_node(Id, Node),
    decoration_biome(Id, Biome).

% spawns_in(?Node, ?Biome)
spawns_in(Node, Biome) :-
    decoration_source(Node, Biome).
spawns_in(Node, Biome) :-
    ore_source(Node, Biome).
spawns_in(Node, Biome) :-
    source(Node, Biome).

% can_naturally_spawn(+Node)
can_naturally_spawn(Node) :- spawns_in(Node, _).

% can_break(?Tool, ?Node)
% If the given tool will succesfuly break the node
required_break(3, 0).
required_break(2, 1).
required_break(1, 2).
can_break(Tool, Node) :-
    groups(Node, Group, Rating),
    groupcaps_meta(Tool, Group, _, MaxLevel),
    MaxLevel >= Rating.

total_tasks(N) :-
    findall(task(A, B, C, D), task(A, B, C, D), TaskList),
    length(TaskList, N).

get_tasks(T, Preconditions) :-
  T = task(_, _, Precs, _),
  permutation(Precs, Preconditions).


% A 4-tuple random task in string format
get_random_task(ActionStr, GoalStr, PreconditionsStr, EffectsStr) :-
  get_random_task(task(ActionStr, GoalStr, PreconditionsStr, EffectsStr)).

get_random_task(task(ActionStr, GoalStr, PreconditionsStr, EffectsStr)) :-
  findall(task(A, B, C, D), task(A, B, C, D), TaskList),
  random_member(TaskTerm, TaskList),
  TaskTerm = task(Action, Goal, Preconditions, Effects),
  atom_string(Action, ActionStr),
  atom_string(Goal, GoalStr),
  with_output_to(string(PreconditionsStr), format('~w', [Preconditions])),
  with_output_to(string(EffectsStr), format('~w', [Effects])).
