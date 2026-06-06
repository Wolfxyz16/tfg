:- use_module(library(solution_sequences)).
:- use_module(library(http/json)).

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
    (ore_in_biome(Id, Biome) ; (\+ ore_in_biome(Id, _), biome(Biome))).

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
    tool(Tool),
    groups(Node, oddly_breakable_by_hand, _).

can_break(Tool, Node) :-
    tool(Tool),
    groups(Node, Group, Hardness),
    groupcaps_meta(Tool, Group, _, MaxLevel),
    MaxLevel >= Hardness.

total_unique_tasks(N) :-
    findall(Action-Target, task(Action, Target, _, _), RawList),
    sort(RawList, UniqueList),
    length(UniqueList, N).

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

% --- EXPORTACIÓN ULTRA-ROBUSTA ---
export_unique_graph :-
    % 1. Sacamos la lista de pares únicos limpiamente
    setof(Action-Target, Pre^Eff^task(Action, Target, Pre, Eff), UniqueTasks),
    
    % 2. Abrimos el archivo
    open('unique_task_graph.json', write, Stream),
    
    % 3. Construimos los objetos JSON uno a uno asegurando que no se crucen variables
    findall(TaskJSON,
            (
                member(A-T, UniqueTasks),
                % Buscamos los datos reales de esa tarea
                task(A, T, Pre, Eff),
                % Convertimos las listas de condiciones a strings
                maplist(term_string, Pre, PreStrings),
                maplist(term_string, Eff, EffStrings),
                % Estructuramos el diccionario para SWI-Prolog
                TaskJSON = json([action=A, target=T, pre=PreStrings, eff=EffStrings])
            ),
            JSONList),
    
    % 4. Escribimos y cerramos
    json_write(Stream, JSONList),
    close(Stream),
    format('✅ Archivo unique_task_graph.json generado correctamente con tareas únicas.~n').
