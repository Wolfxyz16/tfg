:- ['data/main'].

% Counts how many materials of each type are required for a craft
required_materials(Item, GroupedMaterials) :-
    craft(Item, _, _, FlatList),
    msort(FlatList, SortedList),
    clumped(SortedList, GroupedMaterials).

% we must define a list of preconditions+effects

% task(Action, Target, Preconditions, Effects).

% COLLECT task
% task(Action, Target, Preconditions, Effects).

% CRAFT task
% Models a global crafting action. It can be performed anywhere as long as ingredients are present.
task(craft, Item, Preconditions, Effects) :-
    craft(Item, Yield, _, _),
    required_materials(Item, Ingredients),
    
    % Preconditions: Only the required materials are needed (Anywhere)
    maplist(to_has_precondition, Ingredients, Preconditions),
    Effects = [has(Item, Yield)].

% Helper predicates to build the 'has' terms
to_has_precondition(Material-Count, has(Material, Count)).
