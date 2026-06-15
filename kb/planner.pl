% =============================================================================
% planner.pl
% Backward-chaining, depth-limited planner over the task/4 knowledge base.
%
% A plan is an ordered list of task(Action, Target) terms, executable
% left-to-right: every task's preconditions are satisfied by the initial
% state or by the effects of tasks earlier in the list.
%
% Example:
%   ?- plan(has('default:pick_wood', 1), Plan).
%   Plan = [task(collect, 'default:tree'),
%           task(craft,   'default:wood'),
%           task(craft,   'default:stick'),
%           task(craft,   'default:pick_wood')].
% =============================================================================

% print_plan(+Plan)
% Pretty-print a plan, one numbered task per line.
print_plan(Plan) :-
    length(Plan, N),
    format("Plan with ~w steps:~n", [N]),
    forall(nth1(I, Plan, task(Action, Target)),
    format("  ~t~w~3|. ~w(~w)~n", [I, Action, Target])).

% -----------------------------------------------------------------------------
% Group matching (shared semantics with resolve_ingredient/2 in tasks.pl)
%
% A group spec is an atom of the form 'group:Name' or 'group:Name,SubName'.
% group_spec_member(+GroupSpec, ?Item) succeeds if Item belongs to the group.
% -----------------------------------------------------------------------------
group_spec_member(GroupSpec, Item) :-
    atom_concat('group:', GroupData, GroupSpec),
    (   sub_atom(GroupData, _, _, _, ',')
    ->  atomic_list_concat([GroupMain, GroupSub], ',', GroupData),
        groups(Item, GroupMain, 1),
        groups(Item, GroupSub, 1)
    ;   groups(Item, GroupData, 1)
    ).

% -----------------------------------------------------------------------------
% match(+Goal, +Effect)
% A goal precondition matches an effect either syntactically or through
% group membership: has('group:wool', N) is satisfied by has('wool:white', N).
% -----------------------------------------------------------------------------
match(Goal, Effect) :-
    Goal == Effect, !.
match(has(Item, _), has(Item, _)) :- !.
match(has(GroupSpec, _), has(Item, _)) :-
    group_spec_member(GroupSpec, Item), !.

% -----------------------------------------------------------------------------
% solve(+Goal, +StateIn, -StateOut, -Plan, +Depth)
%
% Satisfies a single goal. StateOut extends StateIn with the effects of
% every task planned along the way, so subsequent goals see prior progress
% and shared prerequisites are planned only once.
% -----------------------------------------------------------------------------

% Goal already satisfied by the current state: nothing to do.
solve(Goal, State, State, [], _) :-
    member(E, State),
    match(Goal, E), !.

% Otherwise, find a task whose effects satisfy the goal, plan its
% preconditions first, then append the task itself.
solve(Goal, StateIn, StateOut, Plan, Depth) :-
    Depth > 0,
    task(Action, Target, Pre, Effects),
    member(Eff, Effects),
    match(Goal, Eff),
    NewDepth is Depth - 1,
    solve_all(Pre, StateIn, State1, PrePlan, NewDepth),
    append(State1, Effects, StateOut),
    append(PrePlan, [task(Action, Target)], Plan).

% -----------------------------------------------------------------------------
% solve_all(+Goals, +StateIn, -StateOut, -Plan, +Depth)
% Satisfies a conjunction of goals, threading the state left to right.
% -----------------------------------------------------------------------------
solve_all([], State, State, [], _).
solve_all([Goal | Rest], StateIn, StateOut, Plan, Depth) :-
    solve(Goal, StateIn, State1, Plan1, Depth),
    solve_all(Rest, State1, StateOut, Plan2, Depth),
    append(Plan1, Plan2, Plan).

% -----------------------------------------------------------------------------
% Top-level interfaces
% -----------------------------------------------------------------------------

% plan(+Goal, -Plan)
% Plans from the default initial state with iterative deepening, so the
% first solution returned is a shortest plan (in task count).
plan(Goal, Plan) :-
    initial_state(State),
    plan(Goal, State, Plan).

% plan(+Goal, +InitialState, -Plan)
plan(Goal, InitialState, Plan) :-
    between(1, 25, Depth),                 % iterative deepening
    solve(Goal, InitialState, _, Plan, Depth),
    !.

% plan_at_depth(+Goal, +InitialState, -Plan, +Depth)
% Fixed-depth variant, exposed for experimentation and analysis.
plan_at_depth(Goal, InitialState, Plan, Depth) :-
    solve(Goal, InitialState, _, Plan, Depth).

% The agent's assumed starting knowledge. Mirrors world_model.pl: the agent
% spawns in a deciduous forest with empty hands.
initial_state([at(deciduous_forest)]).
