% we must define a list of preconditions+effects

% task(Action, Target, Preconditions, Effects).

% COLLECT task
% when the node has not a drop rule
task(collect, Node, Preconditions, Effects) :-
  node(Node),
  tool(Tool),
  can_drop(Tool, Node),
  spawns_in(Node, Biome),
  \+ drop(Node, _),
  Preconditions = [has(Tool), at(Biome)],
  Effects = [has(Node)].

% when a node drops another item
task(collect, DropItem, Preconditions, Effects) :-
  node(Node),
  drop(Node, DropItem),
  spawns_in(Node, Biome),
  tool(Tool),
  can_drop(Tool, Node),
  ore(_, _, Node, Min, Max),
  Preconditions = [has(Tool), at(Biome), between(Min, Max)],
  Effects = [has(DropItem)].


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
