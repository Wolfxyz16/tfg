% =============================================================================
% TASK ATOM INTERFACES
% =============================================================================
collect(Item) :- once(task(collect, Item, _, _)).
explore(Biome) :- once(task(explore, Biome, _, _)).
craft(Item) :- once(task(craft, Item, _, _)).

% Generic task wrapper
task(task(A, B, C, D)) :- task(A, B, C, D).

% =============================================================================
% COLLECT TASKS
% =============================================================================

% Case 1: Node drops itself (No drop rule exists)
task(collect, Node, [has(Tool, 1), at(Biome)], [has(Node, 1)]) :-
    node(Node),
    \+ groups(Node, not_in_creative_inventory, 1),
    \+ drop(Node, _),
    spawns_in(Node, Biome),
    can_break(Tool, Node).

% Case 2: Node drops a different item (Drop rule exists)
task(collect, DropItem, [has(Tool, 1), near(Node), at(Biome)], [has(DropItem, 1)]) :-
    drop(Node, DropItem),
    \+ groups(Node, not_in_creative_inventory, 1),
    spawns_in(Node, Biome),
    can_break(Tool, Node).

% =============================================================================
% EXPLORE TASKS
% =============================================================================
task(explore, Biome, [not(at(Biome))], [at(Biome)]) :-
    biome(Biome).

% =============================================================================
% CRAFT TASKS
% =============================================================================
task(craft, Item, Preconditions, [has(Item, Yield)]) :-
    craft(Item, Yield, _, Ingredients),
    msort(Ingredients, Sorted),
    clumped(Sorted, Pairs),
    findall(has(M, N), member(M-N, Pairs), Preconditions).
