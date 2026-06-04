% we must define a list of preconditions+effects

% task(Action, Target, Preconditions, Effects).

% COLLECT task
% when the node has not a drop rule
task(collect, Node, Preconditions, Effects) :-
  node(Node),
  tool(Tool),
  can_break(Tool, Node),
  spawns_in(Node, Biome),
  \+ drop(Node, _),
  \+ groups(Node, not_in_creative_inventory, 1),
  Preconditions = [has(Tool), at(Biome)],
  Effects = [has(Node)].

% when a node drops another item
task(collect, DropItem, Preconditions, Effects) :-
  node(Node),
  tool(Tool),
  can_break(Tool, Node),
  drop(Node, DropItem),
  spawns_in(Node, Biome),
  \+ groups(Node, not_in_creative_inventory, 1),
  Preconditions = [has(Tool), near(Node), at(Biome)],
  Effects = [has(DropItem)].


% CRAFT task
% Models a global crafting action. It can be performed anywhere as long as ingredients are present.
task(craft, Item, Preconditions, Effects) :-
    craft(Item, Yield, _, _),
    required_materials(Item, Ingredients),

    % Preconditions: Only the required materials are needed (Anywhere)
    maplist(to_has_precondition, Ingredients, Preconditions),
    Effects = [has(Item, Yield)].

% EXPLORE task
% The agent must travel to another biome
task(explore, Biome, Preconditions, Effects) :-
  biome(Biome),

  Preconditions = [not(at(Biome))],
  Effects = [at(Biome)].

% Helper predicates to build the 'has' terms
to_has_precondition(Material-Count, has(Material, Count)).

% Counts how many materials of each type are required for a craft
required_materials(Item, GroupedMaterials) :-
    craft(Item, _, _, FlatList),
    msort(FlatList, SortedList),
    clumped(SortedList, GroupedMaterials).
