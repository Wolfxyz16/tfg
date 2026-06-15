:- use_module(library(solution_sequences)).

% =============================================================================
% TASK ATOM INTERFACES
% =============================================================================
collect(Item) :- once(task(collect, Item, _, _)).
explore(Biome) :- once(task(explore, Biome, _, _)).
craft(Item) :- once(task(craft, Item, _, _)).

% =============================================================================
% HELPER RULES
% =============================================================================

% get_task(+Action, +Goal, -PreStr, -EffStr)
get_task(Action, Goal, PreStr, EffStr) :-
    task(Action, Goal, Pre, Eff),
    term_string(Pre, PreStr),
    term_string(Eff, EffStr).

% collectable(?Node, ?Item)
% Item is obtained by digging Node: either the node drops itself (no drop
% rule exists) or it drops a different item.
collectable(Node, Node) :-
    node(Node),
    \+ groups(Node, not_in_creative_inventory, 1),
    \+ drop(Node, _).

collectable(Node, DropItem) :-
    drop(Node, DropItem),
    \+ groups(Node, not_in_creative_inventory, 1).

% tool_precondition(+Tool, -Preconditions)
% The hand requires no inventory precondition.
tool_precondition(hand, []) :- !.
tool_precondition(Tool, [has(Tool, 1)]).

% resolve_tool_precondition(+Node, -ToolPre)
% If breakable by hand, shortcut immediately and clear tool requirements.
resolve_tool_precondition(Node, []) :-
    groups(Node, oddly_breakable_by_hand, _), !.
resolve_tool_precondition(Node, ToolPre) :-
    can_break(Tool, Node),
    tool_precondition(Tool, ToolPre).

% group_member_exists(+GroupData)
% True if at least one registered item belongs to the given group spec.
% Handles both simple groups ('wood') and comma subgroups ('dye,color_red').
group_member_exists(GroupData) :-
    (   sub_atom(GroupData, _, _, _, ',')
    ->  atomic_list_concat([GroupMain, GroupSub], ',', GroupData),
        once(( groups(Item, GroupMain, 1),
               groups(Item, GroupSub, 1) ))
    ;   once(groups(_, GroupData, 1))
    ).

% resolve_ingredient(+Ingredient, -RealItem)
% Craft recipes may reference ingredients by group (e.g. 'group:wood')
% instead of by item name. Group references are resolved to every member
% item, generating one task alternative per member. Plain items pass
% through unchanged.

% Case 1: unresolvable group -- warn and fail so the KB gap is visible
resolve_ingredient(Ingredient, _) :-
    atom(Ingredient),
    atom_concat('group:', GroupData, Ingredient),
    \+ group_member_exists(GroupData),
    print_message(warning, format("Unresolvable group: ~w", [Ingredient])),
    !, fail.

% Case 2: satisfiable group -- keep the group reference symbolic
resolve_ingredient(Ingredient, Ingredient) :-
    atom(Ingredient),
    atom_concat('group:', _, Ingredient), !.

% Case 3: plain item -- passes through unchanged
resolve_ingredient(Ingredient, Ingredient).

% =============================================================================
% COLLECT TASKS
% =============================================================================
% Deduplication is handled globally by ':- table task/4.' in main.pl, so the
% clause bodies below are plain conjunctions.

% Case 1: Omnipresent node (no biome restriction)
task(collect, Item, ToolPre, [has(Item, 1)]) :-
    collectable(Node, Item),
    can_naturally_spawn(Node),
    \+ is_biome_restricted(Node),
    resolve_tool_precondition(Node, ToolPre).

% Case 2: Node restricted to specific biomes
task(collect, Item, Preconditions, [has(Item, 1)]) :-
    collectable(Node, Item),
    is_biome_restricted(Node),
    spawns_in(Node, Biome),
    resolve_tool_precondition(Node, ToolPre),
    append(ToolPre, [at(Biome)], Preconditions).

% =============================================================================
% EXPLORE TASKS
% =============================================================================
task(explore, Biome, [], [at(Biome)]) :-
    biome(Biome).

% =============================================================================
% CRAFT TASKS
% =============================================================================
task(craft, Item, Preconditions, [has(Item, Yield)]) :-
    craft(Item, Yield, _, Ingredients),
    maplist(resolve_ingredient, Ingredients, RealIngredients),
    msort(RealIngredients, Sorted),
    clumped(Sorted, Pairs),
    findall(has(M, N), member(M-N, Pairs), Preconditions).
