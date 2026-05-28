% we must define a list of preconditions+effects

% task(Action, Target, Preconditions, Effects).

% COLLECT task
task(collect, Node, Preconditions, Effects) :-
  node(Node),
  tool(Tool),
  can_drop(Tool, Node),
  \+ drop(Node, _),
  Preconditions = [has(Tool)],
  Effects = [has(Node)].


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

% Counts how many materials of each type are required for a craft
required_materials(Item, GroupedMaterials) :-
    craft(Item, _, _, FlatList),
    msort(FlatList, SortedList),
    clumped(SortedList, GroupedMaterials).
