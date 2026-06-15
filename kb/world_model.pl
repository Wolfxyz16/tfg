:- dynamic inv/2.        % inv(Item, Qty)   — the agent's inventory facts
:- dynamic agent_at/1.   % agent_at(Biome)  — the agent's location fact

agent_at(deciduous_forest).   % initial assumption, updated at runtime

has(Item, Qty)  :- inv(Item, Q), Q >= Qty.
has(Group, Qty) :-
    atom_concat('group:', GroupName, Group),
    groups(Item, GroupName, _),
    inv(Item, Q), Q >= Qty.

at(Biome) :- agent_at(Biome).
