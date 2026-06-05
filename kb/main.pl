:- use_module(library(solution_sequences)).

:- ['data/main'].
:- ['tasks'].
:- ['planner'].

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
spawns_in_raw(Node, Biome) :-
    decoration_source(Node, Biome).
spawns_in_raw(Node, Biome) :-
    ore_source(Node, Biome).
spawns_in_raw(Node, Biome) :-
    source(Node, Biome).

spawns_in(Node, Biome) :-
    distinct(Biome, spawns_in_raw(Node, Biome)).

% can_naturally_spawn(+Node)
can_naturally_spawn(Node) :- once(spawns_in(Node, _)).

% can_break(?Tool, ?Node)
% If the given tool will succesfuly break the node
required_break(3, 0).
required_break(2, 1).
required_break(1, 2).
can_break(Tool, Node) :-
    groups(Node, Group, NodeRating),
    groupcaps_meta(Tool, Group, _, ToolMaxLevel),
    LevelDiff is ToolMaxLevel - NodeRating,
    LevelDiff >= 0.

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

% call it to create the the .dot file
export_dot :-
    setup_call_cleanup(
        open('tasks_graph.dot', write, Stream),
        (   % Cabecera del archivo DOT
            format(Stream, 'digraph TaskDependencyGraph {~n', []),
            format(Stream, '  node [shape=box, style=filled, color=lightblue, fontname="Courier"];~n', []),
            
            % Iteramos sobre cada dependencia real y única en el sistema
            forall(
                distinct([Action1, Target1, Action2, Target2, Resource],
                    task_dependency(Action1, Target1, Action2, Target2, Resource)
                ),
                (   % Limpieza de prefijos de Minetest (ej: 'default:wood' -> 'wood')
                    clean_name(Target1, CleanT1),
                    clean_name(Target2, CleanT2),
                    clean_name(Resource, CleanRes),
                    
                    % Escritura con la estructura exacta: "accion(objeto)"
                    format(Stream, '  "~w(~w)" -> "~w(~w)" [label="~w"];~n', 
                           [Action1, CleanT1, Action2, CleanT2, CleanRes])
                )
            ),
            
            format(Stream, '}~n', [])
        ),
        close(Stream)
    ).
