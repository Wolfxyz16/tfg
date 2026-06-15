:- use_module(library(solution_sequences)).
:- use_module(library(http/json)).

% for performance generation
:- table task/4.
:- table spawns_in/2.
:- table can_break/2.

:- ['data/main'].
:- ['tasks'].
:- ['planner'].
:- ['world_model'].

source(Node, Biome) :- node_top(Biome, Node).
source(Node, Biome) :- node_filler(Biome, Node).
source(Node, Biome) :- node_stone(Biome, Node).
source(Node, Biome) :- node_riverbed(Biome, Node).
source(Node, Biome) :- node_dungeon(Biome, Node).
source(Node, Biome) :- node_dust(Biome, Node).
source(Node, Biome) :- node_water_top(Biome, Node).

ore_source(Node, Biome) :-
    ore(Id, _, Node, _, _),
    (ore_in_biome(Id, Biome) ; (\+ ore_in_biome(Id, _), biome(Biome))).

% the pair node-biome can be repeated in decorations
decoration_source(Node, Biome) :-
    distinct([Node, Biome], (
        deco_node(Id, Node),
        (   decoration_biome(Id, Biome)
        ;   (\+ decoration_biome(Id, _), biome(Biome))
        )
    )).

% spawns_in(?Node, ?Biome)
spawns_in_raw(Node, Biome) :- decoration_source(Node, Biome).
spawns_in_raw(Node, Biome) :- ore_source(Node, Biome).
spawns_in_raw(Node, Biome) :- source(Node, Biome).

spawns_in(Node, Biome) :- spawns_in_raw(Node, Biome).

% can_naturally_spawn(+Node)
can_naturally_spawn(Node) :- once(spawns_in(Node, _)).

% can_break(?Tool, ?Node)
% If the given tool will succesfuly break the node
required_break(3, 0).
required_break(2, 1).
required_break(1, 2).
can_break(Tool, Node) :-
    tool(Tool),
    groups(Node, oddly_breakable_by_hand, _).

can_break(Tool, Node) :-
    tool(Tool),
    groups(Node, Group, Hardness),
    groupcaps_meta(Tool, Group, _, MaxLevel),
    required_break(Hardness, ReqLevel),
    MaxLevel >= ReqLevel.

% =============================================================================
% BIOME RESTRICTION HELPERS
% =============================================================================

% Checks if a node has explicit biome constraints in the scraped facts
is_biome_restricted(Node) :-
    deco_node(Id, Node),
    decoration_biome(Id, _).

is_biome_restricted(Node) :-
    ore(Id, _, Node, _, _),
    ore_in_biome(Id, _).


% =======================================================

total_unique_tasks(N) :- aggregate_all(count, task(_,_,_,_), N).

% A 4-tuple random task in string format
% Interfaz de entrada
get_random_task(ActionStr, GoalStr, PreconditionsStr, EffectsStr) :-
    get_random_task(task(ActionStr, GoalStr, PreconditionsStr, EffectsStr)).

get_random_task(task(ActionStr, GoalStr, PreconditionsStr, EffectsStr)) :-
    findall(task(A, B, C, D), task(A, B, C, D), TaskList),
    random_member(task(Action, Goal, Preconditions, Effects), TaskList),
    atom_string(Action, ActionStr),
    atom_string(Goal, GoalStr),
    term_string(Preconditions, PreconditionsStr),
    term_string(Effects, EffectsStr).

% =======================================================
export_groups :-
    open('groups.json', write, Stream),
    write(Stream, '['), nl(Stream),
    nb_setval(first_group, true),
    forall(
        distinct([Item, Group], groups(Item, Group, 1)),
        (   (   nb_getval(first_group, true)
            ->  nb_setval(first_group, false)
            ;   write(Stream, ',')
            ),
            format(Stream, '{"item": "~w", "group": "~w"}', [Item, Group]),
            nl(Stream)
        )
    ),
    write(Stream, ']'),
    close(Stream),
    format('Groups exported.~n').

export_andor_graph :-
    open('task_instances.json', write, Stream),
    write(Stream, '['), nl(Stream),
    nb_setval(inst_id, 0),
    forall(
        task(Action, Target, Pre, Eff),
        (
            % Get and increment the instance counter
            nb_getval(inst_id, Id),
            Id1 is Id + 1,
            nb_setval(inst_id, Id1),

            % Comma separator for all entries except the first
            ( Id > 0 -> write(Stream, ',') ; true ),

            % Serialize preconditions and effects as strings
            maplist(term_string, Pre, PreStrings),
            maplist(term_string, Eff, EffStrings),

            % Write one JSON object per task/4 solution
            Dict = _{ id: Id,
                      action: Action,
                      target: Target,
                      pre: PreStrings,
                      eff: EffStrings },
            json_write_dict(Stream, Dict),
            nl(Stream)
        )
    ),
    write(Stream, ']'),
    close(Stream),
    nb_getval(inst_id, Total),
    format('Exported ~w task instances.~n', [Total]).
