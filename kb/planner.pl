% A = collect,
% B = 'default:tree',
% C = [has(hand, 1), at(deciduous_forest)],
% D = [has('default:tree', 1)] 

% 1. Matching (con soporte de grupos)
match(Goal, Effect) :- Goal == Effect, !.
match(has(Group, _), has(Item, _)) :-
    atomic_list_concat(['group', GroupName], ':', Group),
    groups(Item, GroupName, _), !.

% 2. Solver (Depth-Limited)
% Si Goal está en State, éxito inmediato.
solve(Goal, State, [], _) :- 
    member(E, State), match(Goal, E), !.

% Si no está, intentamos buscar una tarea (solo si profundidad > 0)
solve(Goal, State, [task(Action, Target)|PlanRest], Depth) :-
    Depth > 0,
    % Buscamos tareas que satisfagan el Goal
    task(Action, Target, Pre, Effects),
    member(Eff, Effects),
    match(Goal, Eff),
    
    % Resolvemos prerrequisitos con profundidad reducida
    NewDepth is Depth - 1,
    solve_all(Pre, State, PlanRest, NewDepth).

% 3. Gestión de prerrequisitos
solve_all([], _, [], _).
solve_all([Req|Rest], State, Plan, Depth) :-
    solve(Req, State, Plan1, Depth),
    solve_all(Rest, State, Plan2, Depth),
    append(Plan1, Plan2, Plan).
