% =============================================================================
% PLANNER LOGIC: Pathfinding in State Space
% =============================================================================

% Met_preconditions: ignores context (at/near/not) and focuses on resources.
met_preconditions([], _).
met_preconditions([has(Item, Q)|Rest], State) :-
    member(has(Item, Q), State),
    met_preconditions(Rest, State).
met_preconditions([_|Rest], State) :- met_preconditions(Rest, State).

% Executes a task and returns the updated state.
perform_task(CurrentState, Task, NewState) :-
    task(Action, Target, Preconditions, Effects),
    Task = task(Action, Target),
    met_preconditions(Preconditions, CurrentState),
    append(CurrentState, Effects, Temp),
    list_to_set(Temp, NewState).

% --- EXHAUSTIVE SEARCH ---
% Explores all possibilities in the state space.
find_all_paths(Goal, CurrentState, _, []) :-
    member(Goal, CurrentState), !.
find_all_paths(Goal, CurrentState, Visited, [Task|Rest]) :-
    perform_task(CurrentState, Task, NewState),
    \+ member(Task, Visited),
    find_all_paths(Goal, NewState, [Task|Visited], Rest).

% --- OPTIMIZED SEARCH (SHORTEST PATH) ---
% Uses iterative deepening to ensure the first found path is the shortest.
shortest_path(Goal, StartState, Plan) :-
    between(1, 20, Depth),          % Search for plans from 1 to 20 steps
    length(Plan, Depth),            % Enforce current depth
    find_all_paths(Goal, StartState, [], Plan),
    !.                              % Cut: return only the shortest valid plan
