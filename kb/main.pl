:- ['data/main'].
:- ['tasks'].

% spawns_in(?Node, ?Biome)
% Node spawns in Biome if it matchs the ore_in_biome/2 rule
spawns_in(Node, Biome) :-
  node(Node),
  biome(Biome),
  ore(Id, _, Node, _, _),
  ore_in_biome(Id, Biome).

% A node that is a ore and does not match ore_in_biome/2, spawns in every biome
spawns_in(Node, Biome) :-
  node(Node),
  biome(Biome),
  ore(Id, _, Node, _, _),
  \+ ore_in_biome(Id, _).

spawns_in(Node, Biome) :-
  decoration(Id, Node, _, _),
  node(Node),
  biome(Biome),
  decoration_biome(Id, Biome).

% can_drop(?Tool, ?Node)
% If the given tool will succesfuly break the node
required_drop_level(3, 0).
required_drop_level(2, 1).
required_drop_level(1, 2).
can_drop(Tool, Node) :-
    groups(Node, Group, Rating),
    groupcaps_meta(Tool, Group, _, _),
    required_drop_level(Rating, RequiredLevel),
    max_drop_level(Tool, MaxDropLevel),
    MaxDropLevel >= RequiredLevel.
