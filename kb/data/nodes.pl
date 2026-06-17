:- discontiguous node/1.
:- discontiguous drop/2.
:- multifile groups/3.
:- discontiguous buildable_to/2.
:- discontiguous sunlight_propagates/2.
:- discontiguous walkable/1.
:- discontiguous diggable/1.
:- discontiguous climbable/1.
:- discontiguous floodable/1.
:- discontiguous damage_per_second/2.
:- discontiguous drowning/2.

node('stairs:stair_goldblock').
groups('stairs:stair_goldblock', stair, 1).
groups('stairs:stair_goldblock', cracky, 1).
buildable_to('stairs:stair_goldblock', false).
sunlight_propagates('stairs:stair_goldblock', false).
walkable('stairs:stair_goldblock').
diggable('stairs:stair_goldblock').
damage_per_second('stairs:stair_goldblock', 0).
drowning('stairs:stair_goldblock', 0).
node('doors:gate_wood_open').
drop('doors:gate_wood_open', 'doors:gate_wood_closed').
groups('doors:gate_wood_open', flammable, 2).
groups('doors:gate_wood_open', not_in_creative_inventory, 1).
groups('doors:gate_wood_open', fence, 1).
groups('doors:gate_wood_open', choppy, 2).
groups('doors:gate_wood_open', oddly_breakable_by_hand, 2).
buildable_to('doors:gate_wood_open', false).
sunlight_propagates('doors:gate_wood_open', true).
walkable('doors:gate_wood_open').
diggable('doors:gate_wood_open').
damage_per_second('doors:gate_wood_open', 0).
drowning('doors:gate_wood_open', 0).
node('stairs:stair_inner_sandstone_block').
groups('stairs:stair_inner_sandstone_block', stair, 1).
groups('stairs:stair_inner_sandstone_block', cracky, 2).
buildable_to('stairs:stair_inner_sandstone_block', false).
sunlight_propagates('stairs:stair_inner_sandstone_block', false).
walkable('stairs:stair_inner_sandstone_block').
diggable('stairs:stair_inner_sandstone_block').
damage_per_second('stairs:stair_inner_sandstone_block', 0).
drowning('stairs:stair_inner_sandstone_block', 0).
node('default:dry_grass_1').
groups('default:dry_grass_1', flammable, 3).
groups('default:dry_grass_1', grass, 1).
groups('default:dry_grass_1', snappy, 3).
groups('default:dry_grass_1', flora, 1).
groups('default:dry_grass_1', dry_grass, 1).
groups('default:dry_grass_1', attached_node, 1).
buildable_to('default:dry_grass_1', true).
sunlight_propagates('default:dry_grass_1', true).
diggable('default:dry_grass_1').
damage_per_second('default:dry_grass_1', 0).
drowning('default:dry_grass_1', 0).
node('default:ladder_wood').
groups('default:ladder_wood', flammable, 2).
groups('default:ladder_wood', choppy, 2).
groups('default:ladder_wood', oddly_breakable_by_hand, 3).
buildable_to('default:ladder_wood', false).
sunlight_propagates('default:ladder_wood', true).
diggable('default:ladder_wood').
climbable('default:ladder_wood').
damage_per_second('default:ladder_wood', 0).
drowning('default:ladder_wood', 0).
node('default:chest').
groups('default:chest', choppy, 2).
groups('default:chest', oddly_breakable_by_hand, 2).
buildable_to('default:chest', false).
sunlight_propagates('default:chest', false).
walkable('default:chest').
diggable('default:chest').
damage_per_second('default:chest', 0).
drowning('default:chest', 0).
node('stairs:stair_outer_sandstone_block').
groups('stairs:stair_outer_sandstone_block', stair, 1).
groups('stairs:stair_outer_sandstone_block', cracky, 2).
buildable_to('stairs:stair_outer_sandstone_block', false).
sunlight_propagates('stairs:stair_outer_sandstone_block', false).
walkable('stairs:stair_outer_sandstone_block').
diggable('stairs:stair_outer_sandstone_block').
damage_per_second('stairs:stair_outer_sandstone_block', 0).
drowning('stairs:stair_outer_sandstone_block', 0).
node('default:ladder_steel').
groups('default:ladder_steel', cracky, 2).
buildable_to('default:ladder_steel', false).
sunlight_propagates('default:ladder_steel', true).
diggable('default:ladder_steel').
climbable('default:ladder_steel').
damage_per_second('default:ladder_steel', 0).
drowning('default:ladder_steel', 0).
node('bones:bones').
groups('bones:bones', dig_immediate, 2).
buildable_to('bones:bones', false).
sunlight_propagates('bones:bones', false).
walkable('bones:bones').
diggable('bones:bones').
damage_per_second('bones:bones', 0).
drowning('bones:bones', 0).
node('doors:gate_pine_wood_open').
drop('doors:gate_pine_wood_open', 'doors:gate_pine_wood_closed').
groups('doors:gate_pine_wood_open', flammable, 3).
groups('doors:gate_pine_wood_open', not_in_creative_inventory, 1).
groups('doors:gate_pine_wood_open', fence, 1).
groups('doors:gate_pine_wood_open', choppy, 3).
groups('doors:gate_pine_wood_open', oddly_breakable_by_hand, 2).
buildable_to('doors:gate_pine_wood_open', false).
sunlight_propagates('doors:gate_pine_wood_open', true).
walkable('doors:gate_pine_wood_open').
diggable('doors:gate_pine_wood_open').
damage_per_second('doors:gate_pine_wood_open', 0).
drowning('doors:gate_pine_wood_open', 0).
node('default:desert_sand').
groups('default:desert_sand', falling_node, 1).
groups('default:desert_sand', crumbly, 3).
groups('default:desert_sand', sand, 1).
groups('default:desert_sand', soil, 1).
buildable_to('default:desert_sand', false).
sunlight_propagates('default:desert_sand', false).
walkable('default:desert_sand').
diggable('default:desert_sand').
damage_per_second('default:desert_sand', 0).
drowning('default:desert_sand', 0).
node('default:silver_sand').
groups('default:silver_sand', falling_node, 1).
groups('default:silver_sand', crumbly, 3).
groups('default:silver_sand', sand, 1).
buildable_to('default:silver_sand', false).
sunlight_propagates('default:silver_sand', false).
walkable('default:silver_sand').
diggable('default:silver_sand').
damage_per_second('default:silver_sand', 0).
drowning('default:silver_sand', 0).
node('stairs:stair_desert_sandstone').
groups('stairs:stair_desert_sandstone', stair, 1).
groups('stairs:stair_desert_sandstone', crumbly, 1).
groups('stairs:stair_desert_sandstone', cracky, 3).
buildable_to('stairs:stair_desert_sandstone', false).
sunlight_propagates('stairs:stair_desert_sandstone', false).
walkable('stairs:stair_desert_sandstone').
diggable('stairs:stair_desert_sandstone').
damage_per_second('stairs:stair_desert_sandstone', 0).
drowning('stairs:stair_desert_sandstone', 0).
node('default:fence_acacia_wood').
groups('default:fence_acacia_wood', flammable, 2).
groups('default:fence_acacia_wood', fence, 1).
groups('default:fence_acacia_wood', choppy, 2).
groups('default:fence_acacia_wood', oddly_breakable_by_hand, 2).
buildable_to('default:fence_acacia_wood', false).
sunlight_propagates('default:fence_acacia_wood', true).
walkable('default:fence_acacia_wood').
diggable('default:fence_acacia_wood').
damage_per_second('default:fence_acacia_wood', 0).
drowning('default:fence_acacia_wood', 0).
node('default:gravel').
groups('default:gravel', falling_node, 1).
groups('default:gravel', crumbly, 2).
buildable_to('default:gravel', false).
sunlight_propagates('default:gravel', false).
walkable('default:gravel').
diggable('default:gravel').
damage_per_second('default:gravel', 0).
drowning('default:gravel', 0).
node('default:marram_grass_1').
groups('default:marram_grass_1', flammable, 3).
groups('default:marram_grass_1', grass, 1).
groups('default:marram_grass_1', marram_grass, 1).
groups('default:marram_grass_1', snappy, 3).
groups('default:marram_grass_1', flora, 1).
groups('default:marram_grass_1', attached_node, 1).
buildable_to('default:marram_grass_1', true).
sunlight_propagates('default:marram_grass_1', true).
diggable('default:marram_grass_1').
damage_per_second('default:marram_grass_1', 0).
drowning('default:marram_grass_1', 0).
node('default:chest_locked').
groups('default:chest_locked', choppy, 2).
groups('default:chest_locked', oddly_breakable_by_hand, 2).
buildable_to('default:chest_locked', false).
sunlight_propagates('default:chest_locked', false).
walkable('default:chest_locked').
diggable('default:chest_locked').
damage_per_second('default:chest_locked', 0).
drowning('default:chest_locked', 0).
node('default:fence_junglewood').
groups('default:fence_junglewood', flammable, 2).
groups('default:fence_junglewood', fence, 1).
groups('default:fence_junglewood', choppy, 2).
groups('default:fence_junglewood', oddly_breakable_by_hand, 2).
buildable_to('default:fence_junglewood', false).
sunlight_propagates('default:fence_junglewood', true).
walkable('default:fence_junglewood').
diggable('default:fence_junglewood').
damage_per_second('default:fence_junglewood', 0).
drowning('default:fence_junglewood', 0).
node('default:clay').
drop('default:clay', 'default:clay_lump').
groups('default:clay', crumbly, 3).
buildable_to('default:clay', false).
sunlight_propagates('default:clay', false).
walkable('default:clay').
diggable('default:clay').
damage_per_second('default:clay', 0).
drowning('default:clay', 0).
node('default:fence_pine_wood').
groups('default:fence_pine_wood', flammable, 3).
groups('default:fence_pine_wood', fence, 1).
groups('default:fence_pine_wood', choppy, 3).
groups('default:fence_pine_wood', oddly_breakable_by_hand, 2).
buildable_to('default:fence_pine_wood', false).
sunlight_propagates('default:fence_pine_wood', true).
walkable('default:fence_pine_wood').
diggable('default:fence_pine_wood').
damage_per_second('default:fence_pine_wood', 0).
drowning('default:fence_pine_wood', 0).
node('default:pine_tree').
groups('default:pine_tree', tree, 1).
groups('default:pine_tree', flammable, 3).
groups('default:pine_tree', choppy, 3).
groups('default:pine_tree', oddly_breakable_by_hand, 1).
buildable_to('default:pine_tree', false).
sunlight_propagates('default:pine_tree', false).
walkable('default:pine_tree').
diggable('default:pine_tree').
damage_per_second('default:pine_tree', 0).
drowning('default:pine_tree', 0).
node('default:pine_needles').
groups('default:pine_needles', flammable, 2).
groups('default:pine_needles', leaves, 1).
groups('default:pine_needles', snappy, 3).
groups('default:pine_needles', leafdecay, 3).
buildable_to('default:pine_needles', false).
sunlight_propagates('default:pine_needles', false).
walkable('default:pine_needles').
diggable('default:pine_needles').
damage_per_second('default:pine_needles', 0).
drowning('default:pine_needles', 0).
node('default:snowblock').
groups('default:snowblock', crumbly, 3).
groups('default:snowblock', snowy, 1).
groups('default:snowblock', cools_lava, 1).
buildable_to('default:snowblock', false).
sunlight_propagates('default:snowblock', false).
walkable('default:snowblock').
diggable('default:snowblock').
damage_per_second('default:snowblock', 0).
drowning('default:snowblock', 0).
node('stairs:slab_desert_sandstone').
groups('stairs:slab_desert_sandstone', crumbly, 1).
groups('stairs:slab_desert_sandstone', cracky, 3).
groups('stairs:slab_desert_sandstone', slab, 1).
buildable_to('stairs:slab_desert_sandstone', false).
sunlight_propagates('stairs:slab_desert_sandstone', false).
walkable('stairs:slab_desert_sandstone').
diggable('stairs:slab_desert_sandstone').
damage_per_second('stairs:slab_desert_sandstone', 0).
drowning('stairs:slab_desert_sandstone', 0).
node('default:ice').
groups('default:ice', cracky, 3).
groups('default:ice', slippery, 3).
groups('default:ice', cools_lava, 1).
buildable_to('default:ice', false).
sunlight_propagates('default:ice', false).
walkable('default:ice').
diggable('default:ice').
damage_per_second('default:ice', 0).
drowning('default:ice', 0).
node('default:blueberry_bush_leaves_with_berries').
drop('default:blueberry_bush_leaves_with_berries', 'default:blueberries').
groups('default:blueberry_bush_leaves_with_berries', flammable, 2).
groups('default:blueberry_bush_leaves_with_berries', dig_immediate, 3).
groups('default:blueberry_bush_leaves_with_berries', leaves, 1).
groups('default:blueberry_bush_leaves_with_berries', snappy, 3).
buildable_to('default:blueberry_bush_leaves_with_berries', false).
sunlight_propagates('default:blueberry_bush_leaves_with_berries', false).
walkable('default:blueberry_bush_leaves_with_berries').
diggable('default:blueberry_bush_leaves_with_berries').
damage_per_second('default:blueberry_bush_leaves_with_berries', 0).
drowning('default:blueberry_bush_leaves_with_berries', 0).
node('default:cave_ice').
drop('default:cave_ice', 'default:ice').
groups('default:cave_ice', not_in_creative_inventory, 1).
groups('default:cave_ice', cracky, 3).
groups('default:cave_ice', slippery, 3).
groups('default:cave_ice', cools_lava, 1).
buildable_to('default:cave_ice', false).
sunlight_propagates('default:cave_ice', false).
walkable('default:cave_ice').
diggable('default:cave_ice').
damage_per_second('default:cave_ice', 0).
drowning('default:cave_ice', 0).
node('default:lava_source').
groups('default:lava_source', liquid, 2).
groups('default:lava_source', lava, 3).
groups('default:lava_source', igniter, 1).
buildable_to('default:lava_source', true).
sunlight_propagates('default:lava_source', false).
damage_per_second('default:lava_source', 8).
drowning('default:lava_source', 1).
node('default:obsidian').
groups('default:obsidian', level, 2).
groups('default:obsidian', cracky, 1).
buildable_to('default:obsidian', false).
sunlight_propagates('default:obsidian', false).
walkable('default:obsidian').
diggable('default:obsidian').
damage_per_second('default:obsidian', 0).
drowning('default:obsidian', 0).
node('default:stone').
drop('default:stone', 'default:cobble').
groups('default:stone', stone, 1).
groups('default:stone', cracky, 3).
buildable_to('default:stone', false).
sunlight_propagates('default:stone', false).
walkable('default:stone').
diggable('default:stone').
damage_per_second('default:stone', 0).
drowning('default:stone', 0).
node('default:wood').
groups('default:wood', flammable, 2).
groups('default:wood', wood, 1).
groups('default:wood', choppy, 2).
groups('default:wood', oddly_breakable_by_hand, 2).
buildable_to('default:wood', false).
sunlight_propagates('default:wood', false).
walkable('default:wood').
diggable('default:wood').
damage_per_second('default:wood', 0).
drowning('default:wood', 0).
node('default:fence_rail_junglewood').
groups('default:fence_rail_junglewood', flammable, 2).
groups('default:fence_rail_junglewood', fence, 1).
groups('default:fence_rail_junglewood', choppy, 2).
groups('default:fence_rail_junglewood', oddly_breakable_by_hand, 2).
buildable_to('default:fence_rail_junglewood', false).
sunlight_propagates('default:fence_rail_junglewood', true).
walkable('default:fence_rail_junglewood').
diggable('default:fence_rail_junglewood').
damage_per_second('default:fence_rail_junglewood', 0).
drowning('default:fence_rail_junglewood', 0).
node('default:acacia_bush_stem').
groups('default:acacia_bush_stem', flammable, 2).
groups('default:acacia_bush_stem', choppy, 2).
groups('default:acacia_bush_stem', oddly_breakable_by_hand, 1).
buildable_to('default:acacia_bush_stem', false).
sunlight_propagates('default:acacia_bush_stem', true).
walkable('default:acacia_bush_stem').
diggable('default:acacia_bush_stem').
damage_per_second('default:acacia_bush_stem', 0).
drowning('default:acacia_bush_stem', 0).
node('default:lava_flowing').
groups('default:lava_flowing', not_in_creative_inventory, 1).
groups('default:lava_flowing', liquid, 2).
groups('default:lava_flowing', lava, 3).
groups('default:lava_flowing', igniter, 1).
buildable_to('default:lava_flowing', true).
sunlight_propagates('default:lava_flowing', false).
damage_per_second('default:lava_flowing', 8).
drowning('default:lava_flowing', 1).
node('default:acacia_bush_leaves').
groups('default:acacia_bush_leaves', flammable, 2).
groups('default:acacia_bush_leaves', leaves, 1).
groups('default:acacia_bush_leaves', snappy, 3).
buildable_to('default:acacia_bush_leaves', false).
sunlight_propagates('default:acacia_bush_leaves', false).
walkable('default:acacia_bush_leaves').
diggable('default:acacia_bush_leaves').
damage_per_second('default:acacia_bush_leaves', 0).
drowning('default:acacia_bush_leaves', 0).
node('tnt:tnt_burning').
groups('tnt:tnt_burning', falling_node, 1).
groups('tnt:tnt_burning', not_in_creative_inventory, 1).
buildable_to('tnt:tnt_burning', false).
sunlight_propagates('tnt:tnt_burning', false).
walkable('tnt:tnt_burning').
diggable('tnt:tnt_burning').
damage_per_second('tnt:tnt_burning', 0).
drowning('tnt:tnt_burning', 0).
node('stairs:stair_stonebrick').
groups('stairs:stair_stonebrick', stair, 1).
groups('stairs:stair_stonebrick', cracky, 2).
buildable_to('stairs:stair_stonebrick', false).
sunlight_propagates('stairs:stair_stonebrick', false).
walkable('stairs:stair_stonebrick').
diggable('stairs:stair_stonebrick').
damage_per_second('stairs:stair_stonebrick', 0).
drowning('stairs:stair_stonebrick', 0).
node('tnt:boom').
groups('tnt:boom', dig_immediate, 3).
groups('tnt:boom', not_in_creative_inventory, 1).
buildable_to('tnt:boom', false).
sunlight_propagates('tnt:boom', false).
diggable('tnt:boom').
damage_per_second('tnt:boom', 0).
drowning('tnt:boom', 0).
node('default:pine_bush_stem').
groups('default:pine_bush_stem', flammable, 2).
groups('default:pine_bush_stem', choppy, 2).
groups('default:pine_bush_stem', oddly_breakable_by_hand, 1).
buildable_to('default:pine_bush_stem', false).
sunlight_propagates('default:pine_bush_stem', true).
walkable('default:pine_bush_stem').
diggable('default:pine_bush_stem').
damage_per_second('default:pine_bush_stem', 0).
drowning('default:pine_bush_stem', 0).
node('default:pine_bush_needles').
groups('default:pine_bush_needles', flammable, 2).
groups('default:pine_bush_needles', leaves, 1).
groups('default:pine_bush_needles', snappy, 3).
buildable_to('default:pine_bush_needles', false).
sunlight_propagates('default:pine_bush_needles', false).
walkable('default:pine_bush_needles').
diggable('default:pine_bush_needles').
damage_per_second('default:pine_bush_needles', 0).
drowning('default:pine_bush_needles', 0).
node('stairs:stair_desert_sandstone_block').
groups('stairs:stair_desert_sandstone_block', stair, 1).
groups('stairs:stair_desert_sandstone_block', cracky, 2).
buildable_to('stairs:stair_desert_sandstone_block', false).
sunlight_propagates('stairs:stair_desert_sandstone_block', false).
walkable('stairs:stair_desert_sandstone_block').
diggable('stairs:stair_desert_sandstone_block').
damage_per_second('stairs:stair_desert_sandstone_block', 0).
drowning('stairs:stair_desert_sandstone_block', 0).
node('default:cactus').
groups('default:cactus', choppy, 3).
buildable_to('default:cactus', false).
sunlight_propagates('default:cactus', false).
walkable('default:cactus').
diggable('default:cactus').
damage_per_second('default:cactus', 0).
drowning('default:cactus', 0).
node('default:sand_with_kelp').
groups('default:sand_with_kelp', snappy, 3).
buildable_to('default:sand_with_kelp', false).
sunlight_propagates('default:sand_with_kelp', false).
walkable('default:sand_with_kelp').
diggable('default:sand_with_kelp').
damage_per_second('default:sand_with_kelp', 0).
drowning('default:sand_with_kelp', 0).
node('default:dirt').
groups('default:dirt', soil, 1).
groups('default:dirt', crumbly, 3).
buildable_to('default:dirt', false).
sunlight_propagates('default:dirt', false).
walkable('default:dirt').
diggable('default:dirt').
damage_per_second('default:dirt', 0).
drowning('default:dirt', 0).
node('default:dirt_with_grass').
drop('default:dirt_with_grass', 'default:dirt').
groups('default:dirt_with_grass', spreading_dirt_type, 1).
groups('default:dirt_with_grass', crumbly, 3).
groups('default:dirt_with_grass', soil, 1).
buildable_to('default:dirt_with_grass', false).
sunlight_propagates('default:dirt_with_grass', false).
walkable('default:dirt_with_grass').
diggable('default:dirt_with_grass').
damage_per_second('default:dirt_with_grass', 0).
drowning('default:dirt_with_grass', 0).
node('stairs:stair_inner_desert_sandstone_block').
groups('stairs:stair_inner_desert_sandstone_block', stair, 1).
groups('stairs:stair_inner_desert_sandstone_block', cracky, 2).
buildable_to('stairs:stair_inner_desert_sandstone_block', false).
sunlight_propagates('stairs:stair_inner_desert_sandstone_block', false).
walkable('stairs:stair_inner_desert_sandstone_block').
diggable('stairs:stair_inner_desert_sandstone_block').
damage_per_second('stairs:stair_inner_desert_sandstone_block', 0).
drowning('stairs:stair_inner_desert_sandstone_block', 0).
node('default:apple_mark').
groups('default:apple_mark', not_in_creative_inventory, 1).
buildable_to('default:apple_mark', true).
sunlight_propagates('default:apple_mark', true).
damage_per_second('default:apple_mark', 0).
drowning('default:apple_mark', 0).
node('default:dry_dirt').
groups('default:dry_dirt', soil, 1).
groups('default:dry_dirt', crumbly, 3).
buildable_to('default:dry_dirt', false).
sunlight_propagates('default:dry_dirt', false).
walkable('default:dry_dirt').
diggable('default:dry_dirt').
damage_per_second('default:dry_dirt', 0).
drowning('default:dry_dirt', 0).
node('default:dry_dirt_with_dry_grass').
drop('default:dry_dirt_with_dry_grass', 'default:dry_dirt').
groups('default:dry_dirt_with_dry_grass', soil, 1).
groups('default:dry_dirt_with_dry_grass', crumbly, 3).
buildable_to('default:dry_dirt_with_dry_grass', false).
sunlight_propagates('default:dry_dirt_with_dry_grass', false).
walkable('default:dry_dirt_with_dry_grass').
diggable('default:dry_dirt_with_dry_grass').
damage_per_second('default:dry_dirt_with_dry_grass', 0).
drowning('default:dry_dirt_with_dry_grass', 0).
node('default:papyrus').
groups('default:papyrus', flammable, 2).
groups('default:papyrus', snappy, 3).
buildable_to('default:papyrus', false).
sunlight_propagates('default:papyrus', true).
diggable('default:papyrus').
damage_per_second('default:papyrus', 0).
drowning('default:papyrus', 0).
node('stairs:stair_outer_desert_sandstone_block').
groups('stairs:stair_outer_desert_sandstone_block', stair, 1).
groups('stairs:stair_outer_desert_sandstone_block', cracky, 2).
buildable_to('stairs:stair_outer_desert_sandstone_block', false).
sunlight_propagates('stairs:stair_outer_desert_sandstone_block', false).
walkable('stairs:stair_outer_desert_sandstone_block').
diggable('stairs:stair_outer_desert_sandstone_block').
damage_per_second('stairs:stair_outer_desert_sandstone_block', 0).
drowning('stairs:stair_outer_desert_sandstone_block', 0).
node('default:meselamp').
groups('default:meselamp', oddly_breakable_by_hand, 3).
groups('default:meselamp', cracky, 3).
buildable_to('default:meselamp', false).
sunlight_propagates('default:meselamp', true).
walkable('default:meselamp').
diggable('default:meselamp').
damage_per_second('default:meselamp', 0).
drowning('default:meselamp', 0).
node('default:chest_open').
drop('default:chest_open', 'default:chest').
groups('default:chest_open', not_in_creative_inventory, 1).
groups('default:chest_open', choppy, 2).
groups('default:chest_open', oddly_breakable_by_hand, 2).
buildable_to('default:chest_open', false).
sunlight_propagates('default:chest_open', false).
walkable('default:chest_open').
diggable('default:chest_open').
damage_per_second('default:chest_open', 0).
drowning('default:chest_open', 0).
node('default:junglewood').
groups('default:junglewood', flammable, 2).
groups('default:junglewood', wood, 1).
groups('default:junglewood', choppy, 2).
groups('default:junglewood', oddly_breakable_by_hand, 2).
buildable_to('default:junglewood', false).
sunlight_propagates('default:junglewood', false).
walkable('default:junglewood').
diggable('default:junglewood').
damage_per_second('default:junglewood', 0).
drowning('default:junglewood', 0).
node('stairs:slab_desert_sandstone_block').
groups('stairs:slab_desert_sandstone_block', slab, 1).
groups('stairs:slab_desert_sandstone_block', cracky, 2).
buildable_to('stairs:slab_desert_sandstone_block', false).
sunlight_propagates('stairs:slab_desert_sandstone_block', false).
walkable('stairs:slab_desert_sandstone_block').
diggable('stairs:slab_desert_sandstone_block').
damage_per_second('stairs:slab_desert_sandstone_block', 0).
drowning('stairs:slab_desert_sandstone_block', 0).
node('default:mese_post_light_acacia_wood').
groups('default:mese_post_light_acacia_wood', flammable, 2).
groups('default:mese_post_light_acacia_wood', choppy, 2).
groups('default:mese_post_light_acacia_wood', oddly_breakable_by_hand, 2).
buildable_to('default:mese_post_light_acacia_wood', false).
sunlight_propagates('default:mese_post_light_acacia_wood', true).
walkable('default:mese_post_light_acacia_wood').
diggable('default:mese_post_light_acacia_wood').
damage_per_second('default:mese_post_light_acacia_wood', 0).
drowning('default:mese_post_light_acacia_wood', 0).
node('wool:black').
groups('wool:black', flammable, 3).
groups('wool:black', snappy, 2).
groups('wool:black', color_black, 1).
groups('wool:black', wool, 1).
groups('wool:black', choppy, 2).
groups('wool:black', oddly_breakable_by_hand, 3).
buildable_to('wool:black', false).
sunlight_propagates('wool:black', false).
walkable('wool:black').
diggable('wool:black').
damage_per_second('wool:black', 0).
drowning('wool:black', 0).
node('stairs:stair_silver_sandstone').
groups('stairs:stair_silver_sandstone', stair, 1).
groups('stairs:stair_silver_sandstone', crumbly, 1).
groups('stairs:stair_silver_sandstone', cracky, 3).
buildable_to('stairs:stair_silver_sandstone', false).
sunlight_propagates('stairs:stair_silver_sandstone', false).
walkable('stairs:stair_silver_sandstone').
diggable('stairs:stair_silver_sandstone').
damage_per_second('stairs:stair_silver_sandstone', 0).
drowning('stairs:stair_silver_sandstone', 0).
node('default:water_source').
groups('default:water_source', liquid, 3).
groups('default:water_source', cools_lava, 1).
groups('default:water_source', water, 3).
buildable_to('default:water_source', true).
sunlight_propagates('default:water_source', false).
damage_per_second('default:water_source', 0).
drowning('default:water_source', 1).
node('default:coral_green').
groups('default:coral_green', snappy, 3).
buildable_to('default:coral_green', false).
sunlight_propagates('default:coral_green', false).
walkable('default:coral_green').
diggable('default:coral_green').
damage_per_second('default:coral_green', 0).
drowning('default:coral_green', 0).
node('farming:seed_cotton').
groups('farming:seed_cotton', flammable, 2).
groups('farming:seed_cotton', snappy, 3).
groups('farming:seed_cotton', seed, 1).
groups('farming:seed_cotton', desert, 1).
groups('farming:seed_cotton', grassland, 1).
groups('farming:seed_cotton', attached_node, 1).
buildable_to('farming:seed_cotton', false).
sunlight_propagates('farming:seed_cotton', true).
diggable('farming:seed_cotton').
damage_per_second('farming:seed_cotton', 0).
drowning('farming:seed_cotton', 0).
node('default:mese_post_light_aspen_wood').
groups('default:mese_post_light_aspen_wood', flammable, 2).
groups('default:mese_post_light_aspen_wood', choppy, 2).
groups('default:mese_post_light_aspen_wood', oddly_breakable_by_hand, 2).
buildable_to('default:mese_post_light_aspen_wood', false).
sunlight_propagates('default:mese_post_light_aspen_wood', true).
walkable('default:mese_post_light_aspen_wood').
diggable('default:mese_post_light_aspen_wood').
damage_per_second('default:mese_post_light_aspen_wood', 0).
drowning('default:mese_post_light_aspen_wood', 0).
node('fireflies:hidden_firefly').
groups('fireflies:hidden_firefly', not_in_creative_inventory, 1).
buildable_to('fireflies:hidden_firefly', true).
sunlight_propagates('fireflies:hidden_firefly', true).
floodable('fireflies:hidden_firefly').
damage_per_second('fireflies:hidden_firefly', 0).
drowning('fireflies:hidden_firefly', 0).
node('stairs:stair_inner_silver_sandstone').
groups('stairs:stair_inner_silver_sandstone', stair, 1).
groups('stairs:stair_inner_silver_sandstone', crumbly, 1).
groups('stairs:stair_inner_silver_sandstone', cracky, 3).
buildable_to('stairs:stair_inner_silver_sandstone', false).
sunlight_propagates('stairs:stair_inner_silver_sandstone', false).
walkable('stairs:stair_inner_silver_sandstone').
diggable('stairs:stair_inner_silver_sandstone').
damage_per_second('stairs:stair_inner_silver_sandstone', 0).
drowning('stairs:stair_inner_silver_sandstone', 0).
node('stairs:stair_pine_wood').
groups('stairs:stair_pine_wood', flammable, 3).
groups('stairs:stair_pine_wood', stair, 1).
groups('stairs:stair_pine_wood', choppy, 3).
groups('stairs:stair_pine_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_pine_wood', false).
sunlight_propagates('stairs:stair_pine_wood', false).
walkable('stairs:stair_pine_wood').
diggable('stairs:stair_pine_wood').
damage_per_second('stairs:stair_pine_wood', 0).
drowning('stairs:stair_pine_wood', 0).
node('default:pine_wood').
groups('default:pine_wood', flammable, 3).
groups('default:pine_wood', wood, 1).
groups('default:pine_wood', choppy, 3).
groups('default:pine_wood', oddly_breakable_by_hand, 2).
buildable_to('default:pine_wood', false).
sunlight_propagates('default:pine_wood', false).
walkable('default:pine_wood').
diggable('default:pine_wood').
damage_per_second('default:pine_wood', 0).
drowning('default:pine_wood', 0).
node('default:coral_cyan').
groups('default:coral_cyan', snappy, 3).
buildable_to('default:coral_cyan', false).
sunlight_propagates('default:coral_cyan', false).
walkable('default:coral_cyan').
diggable('default:coral_cyan').
damage_per_second('default:coral_cyan', 0).
drowning('default:coral_cyan', 0).
node('stairs:stair_outer_silver_sandstone').
groups('stairs:stair_outer_silver_sandstone', stair, 1).
groups('stairs:stair_outer_silver_sandstone', crumbly, 1).
groups('stairs:stair_outer_silver_sandstone', cracky, 3).
buildable_to('stairs:stair_outer_silver_sandstone', false).
sunlight_propagates('stairs:stair_outer_silver_sandstone', false).
walkable('stairs:stair_outer_silver_sandstone').
diggable('stairs:stair_outer_silver_sandstone').
damage_per_second('stairs:stair_outer_silver_sandstone', 0).
drowning('stairs:stair_outer_silver_sandstone', 0).
node('default:coral_brown').
drop('default:coral_brown', 'default:coral_skeleton').
groups('default:coral_brown', cracky, 3).
buildable_to('default:coral_brown', false).
sunlight_propagates('default:coral_brown', false).
walkable('default:coral_brown').
diggable('default:coral_brown').
damage_per_second('default:coral_brown', 0).
drowning('default:coral_brown', 0).
node('wool:cyan').
groups('wool:cyan', flammable, 3).
groups('wool:cyan', snappy, 2).
groups('wool:cyan', color_cyan, 1).
groups('wool:cyan', wool, 1).
groups('wool:cyan', choppy, 2).
groups('wool:cyan', oddly_breakable_by_hand, 3).
buildable_to('wool:cyan', false).
sunlight_propagates('wool:cyan', false).
walkable('wool:cyan').
diggable('wool:cyan').
damage_per_second('wool:cyan', 0).
drowning('wool:cyan', 0).
node('fireflies:firefly_bottle').
groups('fireflies:firefly_bottle', vessel, 1).
groups('fireflies:firefly_bottle', dig_immediate, 3).
groups('fireflies:firefly_bottle', attached_node, 1).
buildable_to('fireflies:firefly_bottle', false).
sunlight_propagates('fireflies:firefly_bottle', true).
diggable('fireflies:firefly_bottle').
damage_per_second('fireflies:firefly_bottle', 0).
drowning('fireflies:firefly_bottle', 0).
node('default:acacia_tree').
groups('default:acacia_tree', tree, 1).
groups('default:acacia_tree', flammable, 2).
groups('default:acacia_tree', choppy, 2).
groups('default:acacia_tree', oddly_breakable_by_hand, 1).
buildable_to('default:acacia_tree', false).
sunlight_propagates('default:acacia_tree', false).
walkable('default:acacia_tree').
diggable('default:acacia_tree').
damage_per_second('default:acacia_tree', 0).
drowning('default:acacia_tree', 0).
node('default:junglesapling').
groups('default:junglesapling', flammable, 2).
groups('default:junglesapling', sapling, 1).
groups('default:junglesapling', snappy, 2).
groups('default:junglesapling', dig_immediate, 3).
groups('default:junglesapling', attached_node, 1).
buildable_to('default:junglesapling', false).
sunlight_propagates('default:junglesapling', true).
diggable('default:junglesapling').
damage_per_second('default:junglesapling', 0).
drowning('default:junglesapling', 0).
node('default:pine_sapling').
groups('default:pine_sapling', flammable, 3).
groups('default:pine_sapling', sapling, 1).
groups('default:pine_sapling', snappy, 2).
groups('default:pine_sapling', dig_immediate, 3).
groups('default:pine_sapling', attached_node, 1).
buildable_to('default:pine_sapling', false).
sunlight_propagates('default:pine_sapling', true).
diggable('default:pine_sapling').
damage_per_second('default:pine_sapling', 0).
drowning('default:pine_sapling', 0).
node('default:acacia_sapling').
groups('default:acacia_sapling', flammable, 2).
groups('default:acacia_sapling', sapling, 1).
groups('default:acacia_sapling', snappy, 2).
groups('default:acacia_sapling', dig_immediate, 3).
groups('default:acacia_sapling', attached_node, 1).
buildable_to('default:acacia_sapling', false).
sunlight_propagates('default:acacia_sapling', true).
diggable('default:acacia_sapling').
damage_per_second('default:acacia_sapling', 0).
drowning('default:acacia_sapling', 0).
node('stairs:stair_silver_sandstone_brick').
groups('stairs:stair_silver_sandstone_brick', stair, 1).
groups('stairs:stair_silver_sandstone_brick', cracky, 2).
buildable_to('stairs:stair_silver_sandstone_brick', false).
sunlight_propagates('stairs:stair_silver_sandstone_brick', false).
walkable('stairs:stair_silver_sandstone_brick').
diggable('stairs:stair_silver_sandstone_brick').
damage_per_second('stairs:stair_silver_sandstone_brick', 0).
drowning('stairs:stair_silver_sandstone_brick', 0).
node('default:bush_sapling').
groups('default:bush_sapling', flammable, 2).
groups('default:bush_sapling', sapling, 1).
groups('default:bush_sapling', snappy, 2).
groups('default:bush_sapling', dig_immediate, 3).
groups('default:bush_sapling', attached_node, 1).
buildable_to('default:bush_sapling', false).
sunlight_propagates('default:bush_sapling', true).
diggable('default:bush_sapling').
damage_per_second('default:bush_sapling', 0).
drowning('default:bush_sapling', 0).
node('default:blueberry_bush_sapling').
groups('default:blueberry_bush_sapling', flammable, 2).
groups('default:blueberry_bush_sapling', sapling, 1).
groups('default:blueberry_bush_sapling', snappy, 2).
groups('default:blueberry_bush_sapling', dig_immediate, 3).
groups('default:blueberry_bush_sapling', attached_node, 1).
buildable_to('default:blueberry_bush_sapling', false).
sunlight_propagates('default:blueberry_bush_sapling', true).
diggable('default:blueberry_bush_sapling').
damage_per_second('default:blueberry_bush_sapling', 0).
drowning('default:blueberry_bush_sapling', 0).
node('default:acacia_bush_sapling').
groups('default:acacia_bush_sapling', flammable, 2).
groups('default:acacia_bush_sapling', sapling, 1).
groups('default:acacia_bush_sapling', snappy, 2).
groups('default:acacia_bush_sapling', dig_immediate, 3).
groups('default:acacia_bush_sapling', attached_node, 1).
buildable_to('default:acacia_bush_sapling', false).
sunlight_propagates('default:acacia_bush_sapling', true).
diggable('default:acacia_bush_sapling').
damage_per_second('default:acacia_bush_sapling', 0).
drowning('default:acacia_bush_sapling', 0).
node('default:pine_bush_sapling').
groups('default:pine_bush_sapling', flammable, 2).
groups('default:pine_bush_sapling', sapling, 1).
groups('default:pine_bush_sapling', snappy, 2).
groups('default:pine_bush_sapling', dig_immediate, 3).
groups('default:pine_bush_sapling', attached_node, 1).
buildable_to('default:pine_bush_sapling', false).
sunlight_propagates('default:pine_bush_sapling', true).
diggable('default:pine_bush_sapling').
damage_per_second('default:pine_bush_sapling', 0).
drowning('default:pine_bush_sapling', 0).
node('stairs:stair_inner_silver_sandstone_brick').
groups('stairs:stair_inner_silver_sandstone_brick', stair, 1).
groups('stairs:stair_inner_silver_sandstone_brick', cracky, 2).
buildable_to('stairs:stair_inner_silver_sandstone_brick', false).
sunlight_propagates('stairs:stair_inner_silver_sandstone_brick', false).
walkable('stairs:stair_inner_silver_sandstone_brick').
diggable('stairs:stair_inner_silver_sandstone_brick').
damage_per_second('stairs:stair_inner_silver_sandstone_brick', 0).
drowning('stairs:stair_inner_silver_sandstone_brick', 0).
node('default:water_flowing').
groups('default:water_flowing', cools_lava, 1).
groups('default:water_flowing', liquid, 3).
groups('default:water_flowing', not_in_creative_inventory, 1).
groups('default:water_flowing', water, 3).
buildable_to('default:water_flowing', true).
sunlight_propagates('default:water_flowing', false).
damage_per_second('default:water_flowing', 0).
drowning('default:water_flowing', 1).
node('stairs:slab_obsidian').
groups('stairs:slab_obsidian', cracky, 1).
groups('stairs:slab_obsidian', level, 2).
groups('stairs:slab_obsidian', slab, 1).
buildable_to('stairs:slab_obsidian', false).
sunlight_propagates('stairs:slab_obsidian', false).
walkable('stairs:slab_obsidian').
diggable('stairs:slab_obsidian').
damage_per_second('stairs:slab_obsidian', 0).
drowning('stairs:slab_obsidian', 0).
node('default:aspen_tree').
groups('default:aspen_tree', tree, 1).
groups('default:aspen_tree', flammable, 3).
groups('default:aspen_tree', choppy, 3).
groups('default:aspen_tree', oddly_breakable_by_hand, 1).
buildable_to('default:aspen_tree', false).
sunlight_propagates('default:aspen_tree', false).
walkable('default:aspen_tree').
diggable('default:aspen_tree').
damage_per_second('default:aspen_tree', 0).
drowning('default:aspen_tree', 0).
node('stairs:stair_outer_silver_sandstone_brick').
groups('stairs:stair_outer_silver_sandstone_brick', stair, 1).
groups('stairs:stair_outer_silver_sandstone_brick', cracky, 2).
buildable_to('stairs:stair_outer_silver_sandstone_brick', false).
sunlight_propagates('stairs:stair_outer_silver_sandstone_brick', false).
walkable('stairs:stair_outer_silver_sandstone_brick').
diggable('stairs:stair_outer_silver_sandstone_brick').
damage_per_second('stairs:stair_outer_silver_sandstone_brick', 0).
drowning('stairs:stair_outer_silver_sandstone_brick', 0).
node('stairs:stair_obsidianbrick').
groups('stairs:stair_obsidianbrick', stair, 1).
groups('stairs:stair_obsidianbrick', cracky, 1).
groups('stairs:stair_obsidianbrick', level, 2).
buildable_to('stairs:stair_obsidianbrick', false).
sunlight_propagates('stairs:stair_obsidianbrick', false).
walkable('stairs:stair_obsidianbrick').
diggable('stairs:stair_obsidianbrick').
damage_per_second('stairs:stair_obsidianbrick', 0).
drowning('stairs:stair_obsidianbrick', 0).
node('default:aspen_wood').
groups('default:aspen_wood', flammable, 3).
groups('default:aspen_wood', wood, 1).
groups('default:aspen_wood', choppy, 3).
groups('default:aspen_wood', oddly_breakable_by_hand, 2).
buildable_to('default:aspen_wood', false).
sunlight_propagates('default:aspen_wood', false).
walkable('default:aspen_wood').
diggable('default:aspen_wood').
damage_per_second('default:aspen_wood', 0).
drowning('default:aspen_wood', 0).
node('default:river_water_flowing').
groups('default:river_water_flowing', cools_lava, 1).
groups('default:river_water_flowing', liquid, 3).
groups('default:river_water_flowing', not_in_creative_inventory, 1).
groups('default:river_water_flowing', water, 3).
buildable_to('default:river_water_flowing', true).
sunlight_propagates('default:river_water_flowing', false).
damage_per_second('default:river_water_flowing', 0).
drowning('default:river_water_flowing', 1).
node('stairs:slab_silver_sandstone_brick').
groups('stairs:slab_silver_sandstone_brick', slab, 1).
groups('stairs:slab_silver_sandstone_brick', cracky, 2).
buildable_to('stairs:slab_silver_sandstone_brick', false).
sunlight_propagates('stairs:slab_silver_sandstone_brick', false).
walkable('stairs:slab_silver_sandstone_brick').
diggable('stairs:slab_silver_sandstone_brick').
damage_per_second('stairs:slab_silver_sandstone_brick', 0).
drowning('stairs:slab_silver_sandstone_brick', 0).
node('default:aspen_leaves').
groups('default:aspen_leaves', flammable, 2).
groups('default:aspen_leaves', leaves, 1).
groups('default:aspen_leaves', snappy, 3).
groups('default:aspen_leaves', leafdecay, 3).
buildable_to('default:aspen_leaves', false).
sunlight_propagates('default:aspen_leaves', false).
walkable('default:aspen_leaves').
diggable('default:aspen_leaves').
damage_per_second('default:aspen_leaves', 0).
drowning('default:aspen_leaves', 0).
node('default:stonebrick').
groups('default:stonebrick', stone, 1).
groups('default:stonebrick', cracky, 2).
buildable_to('default:stonebrick', false).
sunlight_propagates('default:stonebrick', false).
walkable('default:stonebrick').
diggable('default:stonebrick').
damage_per_second('default:stonebrick', 0).
drowning('default:stonebrick', 0).
node('stairs:stair_silver_sandstone_block').
groups('stairs:stair_silver_sandstone_block', stair, 1).
groups('stairs:stair_silver_sandstone_block', cracky, 2).
buildable_to('stairs:stair_silver_sandstone_block', false).
sunlight_propagates('stairs:stair_silver_sandstone_block', false).
walkable('stairs:stair_silver_sandstone_block').
diggable('stairs:stair_silver_sandstone_block').
damage_per_second('stairs:stair_silver_sandstone_block', 0).
drowning('stairs:stair_silver_sandstone_block', 0).
node('default:stone_with_coal').
drop('default:stone_with_coal', 'default:coal_lump').
groups('default:stone_with_coal', cracky, 3).
buildable_to('default:stone_with_coal', false).
sunlight_propagates('default:stone_with_coal', false).
walkable('default:stone_with_coal').
diggable('default:stone_with_coal').
damage_per_second('default:stone_with_coal', 0).
drowning('default:stone_with_coal', 0).
node('stairs:stair_outer_obsidianbrick').
groups('stairs:stair_outer_obsidianbrick', stair, 1).
groups('stairs:stair_outer_obsidianbrick', cracky, 1).
groups('stairs:stair_outer_obsidianbrick', level, 2).
buildable_to('stairs:stair_outer_obsidianbrick', false).
sunlight_propagates('stairs:stair_outer_obsidianbrick', false).
walkable('stairs:stair_outer_obsidianbrick').
diggable('stairs:stair_outer_obsidianbrick').
damage_per_second('stairs:stair_outer_obsidianbrick', 0).
drowning('stairs:stair_outer_obsidianbrick', 0).
node('default:coalblock').
groups('default:coalblock', cracky, 3).
buildable_to('default:coalblock', false).
sunlight_propagates('default:coalblock', false).
walkable('default:coalblock').
diggable('default:coalblock').
damage_per_second('default:coalblock', 0).
drowning('default:coalblock', 0).
node('stairs:stair_inner_silver_sandstone_block').
groups('stairs:stair_inner_silver_sandstone_block', stair, 1).
groups('stairs:stair_inner_silver_sandstone_block', cracky, 2).
buildable_to('stairs:stair_inner_silver_sandstone_block', false).
sunlight_propagates('stairs:stair_inner_silver_sandstone_block', false).
walkable('stairs:stair_inner_silver_sandstone_block').
diggable('stairs:stair_inner_silver_sandstone_block').
damage_per_second('stairs:stair_inner_silver_sandstone_block', 0).
drowning('stairs:stair_inner_silver_sandstone_block', 0).
node('default:desert_stone').
drop('default:desert_stone', 'default:desert_cobble').
groups('default:desert_stone', stone, 1).
groups('default:desert_stone', cracky, 3).
buildable_to('default:desert_stone', false).
sunlight_propagates('default:desert_stone', false).
walkable('default:desert_stone').
diggable('default:desert_stone').
damage_per_second('default:desert_stone', 0).
drowning('default:desert_stone', 0).
node('default:stone_with_iron').
drop('default:stone_with_iron', 'default:iron_lump').
groups('default:stone_with_iron', cracky, 2).
buildable_to('default:stone_with_iron', false).
sunlight_propagates('default:stone_with_iron', false).
walkable('default:stone_with_iron').
diggable('default:stone_with_iron').
damage_per_second('default:stone_with_iron', 0).
drowning('default:stone_with_iron', 0).
node('wool:magenta').
groups('wool:magenta', flammable, 3).
groups('wool:magenta', snappy, 2).
groups('wool:magenta', color_magenta, 1).
groups('wool:magenta', wool, 1).
groups('wool:magenta', choppy, 2).
groups('wool:magenta', oddly_breakable_by_hand, 3).
buildable_to('wool:magenta', false).
sunlight_propagates('wool:magenta', false).
walkable('wool:magenta').
diggable('wool:magenta').
damage_per_second('wool:magenta', 0).
drowning('wool:magenta', 0).
node('default:desert_cobble').
groups('default:desert_cobble', stone, 2).
groups('default:desert_cobble', cracky, 3).
buildable_to('default:desert_cobble', false).
sunlight_propagates('default:desert_cobble', false).
walkable('default:desert_cobble').
diggable('default:desert_cobble').
damage_per_second('default:desert_cobble', 0).
drowning('default:desert_cobble', 0).
node('stairs:stair_outer_silver_sandstone_block').
groups('stairs:stair_outer_silver_sandstone_block', stair, 1).
groups('stairs:stair_outer_silver_sandstone_block', cracky, 2).
buildable_to('stairs:stair_outer_silver_sandstone_block', false).
sunlight_propagates('stairs:stair_outer_silver_sandstone_block', false).
walkable('stairs:stair_outer_silver_sandstone_block').
diggable('stairs:stair_outer_silver_sandstone_block').
damage_per_second('stairs:stair_outer_silver_sandstone_block', 0).
drowning('stairs:stair_outer_silver_sandstone_block', 0).
node('default:steelblock').
groups('default:steelblock', level, 2).
groups('default:steelblock', cracky, 1).
buildable_to('default:steelblock', false).
sunlight_propagates('default:steelblock', false).
walkable('default:steelblock').
diggable('default:steelblock').
damage_per_second('default:steelblock', 0).
drowning('default:steelblock', 0).
node('default:desert_stonebrick').
groups('default:desert_stonebrick', stone, 1).
groups('default:desert_stonebrick', cracky, 2).
buildable_to('default:desert_stonebrick', false).
sunlight_propagates('default:desert_stonebrick', false).
walkable('default:desert_stonebrick').
diggable('default:desert_stonebrick').
damage_per_second('default:desert_stonebrick', 0).
drowning('default:desert_stonebrick', 0).
node('stairs:slab_silver_sandstone_block').
groups('stairs:slab_silver_sandstone_block', slab, 1).
groups('stairs:slab_silver_sandstone_block', cracky, 2).
buildable_to('stairs:slab_silver_sandstone_block', false).
sunlight_propagates('stairs:slab_silver_sandstone_block', false).
walkable('stairs:slab_silver_sandstone_block').
diggable('stairs:slab_silver_sandstone_block').
damage_per_second('stairs:slab_silver_sandstone_block', 0).
drowning('stairs:slab_silver_sandstone_block', 0).
node('default:desert_stone_block').
groups('default:desert_stone_block', stone, 1).
groups('default:desert_stone_block', cracky, 2).
buildable_to('default:desert_stone_block', false).
sunlight_propagates('default:desert_stone_block', false).
walkable('default:desert_stone_block').
diggable('default:desert_stone_block').
damage_per_second('default:desert_stone_block', 0).
drowning('default:desert_stone_block', 0).
node('stairs:stair_inner_obsidian_block').
groups('stairs:stair_inner_obsidian_block', stair, 1).
groups('stairs:stair_inner_obsidian_block', cracky, 1).
groups('stairs:stair_inner_obsidian_block', level, 2).
buildable_to('stairs:stair_inner_obsidian_block', false).
sunlight_propagates('stairs:stair_inner_obsidian_block', false).
walkable('stairs:stair_inner_obsidian_block').
diggable('stairs:stair_inner_obsidian_block').
damage_per_second('stairs:stair_inner_obsidian_block', 0).
drowning('stairs:stair_inner_obsidian_block', 0).
node('default:sandstone').
groups('default:sandstone', cracky, 3).
groups('default:sandstone', crumbly, 1).
buildable_to('default:sandstone', false).
sunlight_propagates('default:sandstone', false).
walkable('default:sandstone').
diggable('default:sandstone').
damage_per_second('default:sandstone', 0).
drowning('default:sandstone', 0).
node('farming:desert_sand_soil_wet').
drop('farming:desert_sand_soil_wet', 'default:desert_sand').
groups('farming:desert_sand_soil_wet', falling_node, 1).
groups('farming:desert_sand_soil_wet', crumbly, 3).
groups('farming:desert_sand_soil_wet', sand, 1).
groups('farming:desert_sand_soil_wet', wet, 1).
groups('farming:desert_sand_soil_wet', desert, 1).
groups('farming:desert_sand_soil_wet', field, 1).
groups('farming:desert_sand_soil_wet', soil, 3).
groups('farming:desert_sand_soil_wet', not_in_creative_inventory, 1).
buildable_to('farming:desert_sand_soil_wet', false).
sunlight_propagates('farming:desert_sand_soil_wet', false).
walkable('farming:desert_sand_soil_wet').
diggable('farming:desert_sand_soil_wet').
damage_per_second('farming:desert_sand_soil_wet', 0).
drowning('farming:desert_sand_soil_wet', 0).
node('default:sandstonebrick').
groups('default:sandstonebrick', cracky, 2).
buildable_to('default:sandstonebrick', false).
sunlight_propagates('default:sandstonebrick', false).
walkable('default:sandstonebrick').
diggable('default:sandstonebrick').
damage_per_second('default:sandstonebrick', 0).
drowning('default:sandstonebrick', 0).
node('stairs:stair_inner_obsidian').
groups('stairs:stair_inner_obsidian', stair, 1).
groups('stairs:stair_inner_obsidian', cracky, 1).
groups('stairs:stair_inner_obsidian', level, 2).
buildable_to('stairs:stair_inner_obsidian', false).
sunlight_propagates('stairs:stair_inner_obsidian', false).
walkable('stairs:stair_inner_obsidian').
diggable('stairs:stair_inner_obsidian').
damage_per_second('stairs:stair_inner_obsidian', 0).
drowning('stairs:stair_inner_obsidian', 0).
node('default:sandstone_block').
groups('default:sandstone_block', cracky, 2).
buildable_to('default:sandstone_block', false).
sunlight_propagates('default:sandstone_block', false).
walkable('default:sandstone_block').
diggable('default:sandstone_block').
damage_per_second('default:sandstone_block', 0).
drowning('default:sandstone_block', 0).
node('stairs:slab_obsidian_block').
groups('stairs:slab_obsidian_block', cracky, 1).
groups('stairs:slab_obsidian_block', level, 2).
groups('stairs:slab_obsidian_block', slab, 1).
buildable_to('stairs:slab_obsidian_block', false).
sunlight_propagates('stairs:slab_obsidian_block', false).
walkable('stairs:slab_obsidian_block').
diggable('stairs:slab_obsidian_block').
damage_per_second('stairs:slab_obsidian_block', 0).
drowning('stairs:slab_obsidian_block', 0).
node('flowers:mushroom_red').
groups('flowers:mushroom_red', flammable, 1).
groups('flowers:mushroom_red', attached_node, 1).
groups('flowers:mushroom_red', mushroom, 1).
groups('flowers:mushroom_red', snappy, 3).
buildable_to('flowers:mushroom_red', true).
sunlight_propagates('flowers:mushroom_red', true).
diggable('flowers:mushroom_red').
damage_per_second('flowers:mushroom_red', 0).
drowning('flowers:mushroom_red', 0).
node('default:desert_sandstone').
groups('default:desert_sandstone', cracky, 3).
groups('default:desert_sandstone', crumbly, 1).
buildable_to('default:desert_sandstone', false).
sunlight_propagates('default:desert_sandstone', false).
walkable('default:desert_sandstone').
diggable('default:desert_sandstone').
damage_per_second('default:desert_sandstone', 0).
drowning('default:desert_sandstone', 0).
node('stairs:stair_outer_obsidian').
groups('stairs:stair_outer_obsidian', stair, 1).
groups('stairs:stair_outer_obsidian', cracky, 1).
groups('stairs:stair_outer_obsidian', level, 2).
buildable_to('stairs:stair_outer_obsidian', false).
sunlight_propagates('stairs:stair_outer_obsidian', false).
walkable('stairs:stair_outer_obsidian').
diggable('stairs:stair_outer_obsidian').
damage_per_second('stairs:stair_outer_obsidian', 0).
drowning('stairs:stair_outer_obsidian', 0).
node('stairs:stair_brick').
groups('stairs:stair_brick', stair, 1).
groups('stairs:stair_brick', cracky, 3).
buildable_to('stairs:stair_brick', false).
sunlight_propagates('stairs:stair_brick', false).
walkable('stairs:stair_brick').
diggable('stairs:stair_brick').
damage_per_second('stairs:stair_brick', 0).
drowning('stairs:stair_brick', 0).
node('default:desert_sandstone_brick').
groups('default:desert_sandstone_brick', cracky, 2).
buildable_to('default:desert_sandstone_brick', false).
sunlight_propagates('default:desert_sandstone_brick', false).
walkable('default:desert_sandstone_brick').
diggable('default:desert_sandstone_brick').
damage_per_second('default:desert_sandstone_brick', 0).
drowning('default:desert_sandstone_brick', 0).
node('default:desert_sandstone_block').
groups('default:desert_sandstone_block', cracky, 2).
buildable_to('default:desert_sandstone_block', false).
sunlight_propagates('default:desert_sandstone_block', false).
walkable('default:desert_sandstone_block').
diggable('default:desert_sandstone_block').
damage_per_second('default:desert_sandstone_block', 0).
drowning('default:desert_sandstone_block', 0).
node('default:silver_sandstone').
groups('default:silver_sandstone', cracky, 3).
groups('default:silver_sandstone', crumbly, 1).
buildable_to('default:silver_sandstone', false).
sunlight_propagates('default:silver_sandstone', false).
walkable('default:silver_sandstone').
diggable('default:silver_sandstone').
damage_per_second('default:silver_sandstone', 0).
drowning('default:silver_sandstone', 0).
node('farming:seed_wheat').
groups('farming:seed_wheat', flammable, 2).
groups('farming:seed_wheat', snappy, 3).
groups('farming:seed_wheat', seed, 1).
groups('farming:seed_wheat', grassland, 1).
groups('farming:seed_wheat', attached_node, 1).
buildable_to('farming:seed_wheat', false).
sunlight_propagates('farming:seed_wheat', true).
diggable('farming:seed_wheat').
damage_per_second('farming:seed_wheat', 0).
drowning('farming:seed_wheat', 0).
node('default:silver_sandstone_brick').
groups('default:silver_sandstone_brick', cracky, 2).
buildable_to('default:silver_sandstone_brick', false).
sunlight_propagates('default:silver_sandstone_brick', false).
walkable('default:silver_sandstone_brick').
diggable('default:silver_sandstone_brick').
damage_per_second('default:silver_sandstone_brick', 0).
drowning('default:silver_sandstone_brick', 0).
node('default:silver_sandstone_block').
groups('default:silver_sandstone_block', cracky, 2).
buildable_to('default:silver_sandstone_block', false).
sunlight_propagates('default:silver_sandstone_block', false).
walkable('default:silver_sandstone_block').
diggable('default:silver_sandstone_block').
damage_per_second('default:silver_sandstone_block', 0).
drowning('default:silver_sandstone_block', 0).
node('stairs:stair_straw').
groups('stairs:stair_straw', flammable, 4).
groups('stairs:stair_straw', stair, 1).
groups('stairs:stair_straw', snappy, 3).
buildable_to('stairs:stair_straw', false).
sunlight_propagates('stairs:stair_straw', false).
walkable('stairs:stair_straw').
diggable('stairs:stair_straw').
damage_per_second('stairs:stair_straw', 0).
drowning('stairs:stair_straw', 0).
node('default:obsidianbrick').
groups('default:obsidianbrick', level, 2).
groups('default:obsidianbrick', cracky, 1).
buildable_to('default:obsidianbrick', false).
sunlight_propagates('default:obsidianbrick', false).
walkable('default:obsidianbrick').
diggable('default:obsidianbrick').
damage_per_second('default:obsidianbrick', 0).
drowning('default:obsidianbrick', 0).
node('flowers:waterlily').
groups('flowers:waterlily', flammable, 1).
groups('flowers:waterlily', flower, 1).
groups('flowers:waterlily', snappy, 3).
buildable_to('flowers:waterlily', true).
sunlight_propagates('flowers:waterlily', false).
diggable('flowers:waterlily').
floodable('flowers:waterlily').
damage_per_second('flowers:waterlily', 0).
drowning('flowers:waterlily', 0).
node('default:obsidian_block').
groups('default:obsidian_block', level, 2).
groups('default:obsidian_block', cracky, 1).
buildable_to('default:obsidian_block', false).
sunlight_propagates('default:obsidian_block', false).
walkable('default:obsidian_block').
diggable('default:obsidian_block').
damage_per_second('default:obsidian_block', 0).
drowning('default:obsidian_block', 0).
node('flowers:waterlily_waving').
drop('flowers:waterlily_waving', 'flowers:waterlily').
groups('flowers:waterlily_waving', flammable, 1).
groups('flowers:waterlily_waving', not_in_creative_inventory, 1).
groups('flowers:waterlily_waving', flower, 1).
groups('flowers:waterlily_waving', snappy, 3).
buildable_to('flowers:waterlily_waving', true).
sunlight_propagates('flowers:waterlily_waving', false).
diggable('flowers:waterlily_waving').
floodable('flowers:waterlily_waving').
damage_per_second('flowers:waterlily_waving', 0).
drowning('flowers:waterlily_waving', 0).
node('stairs:stair_outer_straw').
groups('stairs:stair_outer_straw', flammable, 4).
groups('stairs:stair_outer_straw', stair, 1).
groups('stairs:stair_outer_straw', snappy, 3).
buildable_to('stairs:stair_outer_straw', false).
sunlight_propagates('stairs:stair_outer_straw', false).
walkable('stairs:stair_outer_straw').
diggable('stairs:stair_outer_straw').
damage_per_second('stairs:stair_outer_straw', 0).
drowning('stairs:stair_outer_straw', 0).
node('stairs:slab_straw').
groups('stairs:slab_straw', flammable, 4).
groups('stairs:slab_straw', slab, 1).
groups('stairs:slab_straw', snappy, 3).
buildable_to('stairs:slab_straw', false).
sunlight_propagates('stairs:slab_straw', false).
walkable('stairs:slab_straw').
diggable('stairs:slab_straw').
damage_per_second('stairs:slab_straw', 0).
drowning('stairs:slab_straw', 0).
node('default:dirt_with_grass_footsteps').
drop('default:dirt_with_grass_footsteps', 'default:dirt').
groups('default:dirt_with_grass_footsteps', crumbly, 3).
groups('default:dirt_with_grass_footsteps', soil, 1).
groups('default:dirt_with_grass_footsteps', not_in_creative_inventory, 1).
buildable_to('default:dirt_with_grass_footsteps', false).
sunlight_propagates('default:dirt_with_grass_footsteps', false).
walkable('default:dirt_with_grass_footsteps').
diggable('default:dirt_with_grass_footsteps').
damage_per_second('default:dirt_with_grass_footsteps', 0).
drowning('default:dirt_with_grass_footsteps', 0).
node('default:chest_locked_open').
drop('default:chest_locked_open', 'default:chest_locked').
groups('default:chest_locked_open', not_in_creative_inventory, 1).
groups('default:chest_locked_open', choppy, 2).
groups('default:chest_locked_open', oddly_breakable_by_hand, 2).
buildable_to('default:chest_locked_open', false).
sunlight_propagates('default:chest_locked_open', false).
walkable('default:chest_locked_open').
diggable('default:chest_locked_open').
damage_per_second('default:chest_locked_open', 0).
drowning('default:chest_locked_open', 0).
node('flowers:chrysanthemum_green').
groups('flowers:chrysanthemum_green', flammable, 1).
groups('flowers:chrysanthemum_green', snappy, 3).
groups('flowers:chrysanthemum_green', attached_node, 1).
groups('flowers:chrysanthemum_green', flora, 1).
groups('flowers:chrysanthemum_green', flower, 1).
groups('flowers:chrysanthemum_green', color_green, 1).
buildable_to('flowers:chrysanthemum_green', true).
sunlight_propagates('flowers:chrysanthemum_green', true).
diggable('flowers:chrysanthemum_green').
damage_per_second('flowers:chrysanthemum_green', 0).
drowning('flowers:chrysanthemum_green', 0).
node('stairs:stair_inner_goldblock').
groups('stairs:stair_inner_goldblock', stair, 1).
groups('stairs:stair_inner_goldblock', cracky, 1).
buildable_to('stairs:stair_inner_goldblock', false).
sunlight_propagates('stairs:stair_inner_goldblock', false).
walkable('stairs:stair_inner_goldblock').
diggable('stairs:stair_inner_goldblock').
damage_per_second('stairs:stair_inner_goldblock', 0).
drowning('stairs:stair_inner_goldblock', 0).
node('default:dirt_with_coniferous_litter').
drop('default:dirt_with_coniferous_litter', 'default:dirt').
groups('default:dirt_with_coniferous_litter', spreading_dirt_type, 1).
groups('default:dirt_with_coniferous_litter', crumbly, 3).
groups('default:dirt_with_coniferous_litter', soil, 1).
buildable_to('default:dirt_with_coniferous_litter', false).
sunlight_propagates('default:dirt_with_coniferous_litter', false).
walkable('default:dirt_with_coniferous_litter').
diggable('default:dirt_with_coniferous_litter').
damage_per_second('default:dirt_with_coniferous_litter', 0).
drowning('default:dirt_with_coniferous_litter', 0).
node('stairs:stair_outer_goldblock').
groups('stairs:stair_outer_goldblock', stair, 1).
groups('stairs:stair_outer_goldblock', cracky, 1).
buildable_to('stairs:stair_outer_goldblock', false).
sunlight_propagates('stairs:stair_outer_goldblock', false).
walkable('stairs:stair_outer_goldblock').
diggable('stairs:stair_outer_goldblock').
damage_per_second('stairs:stair_outer_goldblock', 0).
drowning('stairs:stair_outer_goldblock', 0).
node('stairs:slab_goldblock').
groups('stairs:slab_goldblock', slab, 1).
groups('stairs:slab_goldblock', cracky, 1).
buildable_to('stairs:slab_goldblock', false).
sunlight_propagates('stairs:slab_goldblock', false).
walkable('stairs:slab_goldblock').
diggable('stairs:slab_goldblock').
damage_per_second('stairs:slab_goldblock', 0).
drowning('stairs:slab_goldblock', 0).
node('default:permafrost').
groups('default:permafrost', cracky, 3).
buildable_to('default:permafrost', false).
sunlight_propagates('default:permafrost', false).
walkable('default:permafrost').
diggable('default:permafrost').
damage_per_second('default:permafrost', 0).
drowning('default:permafrost', 0).
node('default:permafrost_with_stones').
groups('default:permafrost_with_stones', cracky, 3).
buildable_to('default:permafrost_with_stones', false).
sunlight_propagates('default:permafrost_with_stones', false).
walkable('default:permafrost_with_stones').
diggable('default:permafrost_with_stones').
damage_per_second('default:permafrost_with_stones', 0).
drowning('default:permafrost_with_stones', 0).
node('carts:powerrail').
groups('carts:powerrail', dig_immediate, 2).
groups('carts:powerrail', connect_to_raillike, 2).
groups('carts:powerrail', rail, 1).
groups('carts:powerrail', attached_node, 1).
buildable_to('carts:powerrail', false).
sunlight_propagates('carts:powerrail', true).
diggable('carts:powerrail').
damage_per_second('carts:powerrail', 0).
drowning('carts:powerrail', 0).
node('default:permafrost_with_moss').
groups('default:permafrost_with_moss', cracky, 3).
buildable_to('default:permafrost_with_moss', false).
sunlight_propagates('default:permafrost_with_moss', false).
walkable('default:permafrost_with_moss').
diggable('default:permafrost_with_moss').
damage_per_second('default:permafrost_with_moss', 0).
drowning('default:permafrost_with_moss', 0).
node('stairs:stair_inner_ice').
groups('stairs:stair_inner_ice', stair, 1).
groups('stairs:stair_inner_ice', cracky, 3).
groups('stairs:stair_inner_ice', slippery, 3).
groups('stairs:stair_inner_ice', cools_lava, 1).
buildable_to('stairs:stair_inner_ice', false).
sunlight_propagates('stairs:stair_inner_ice', false).
walkable('stairs:stair_inner_ice').
diggable('stairs:stair_inner_ice').
damage_per_second('stairs:stair_inner_ice', 0).
drowning('stairs:stair_inner_ice', 0).
node('carts:brakerail').
groups('carts:brakerail', dig_immediate, 2).
groups('carts:brakerail', connect_to_raillike, 2).
groups('carts:brakerail', rail, 1).
groups('carts:brakerail', attached_node, 1).
buildable_to('carts:brakerail', false).
sunlight_propagates('carts:brakerail', true).
diggable('carts:brakerail').
damage_per_second('carts:brakerail', 0).
drowning('carts:brakerail', 0).
node('stairs:stair_outer_ice').
groups('stairs:stair_outer_ice', stair, 1).
groups('stairs:stair_outer_ice', cracky, 3).
groups('stairs:stair_outer_ice', slippery, 3).
groups('stairs:stair_outer_ice', cools_lava, 1).
buildable_to('stairs:stair_outer_ice', false).
sunlight_propagates('stairs:stair_outer_ice', false).
walkable('stairs:stair_outer_ice').
diggable('stairs:stair_outer_ice').
damage_per_second('stairs:stair_outer_ice', 0).
drowning('stairs:stair_outer_ice', 0).
node('stairs:slab_ice').
groups('stairs:slab_ice', slab, 1).
groups('stairs:slab_ice', cracky, 3).
groups('stairs:slab_ice', slippery, 3).
groups('stairs:slab_ice', cools_lava, 1).
buildable_to('stairs:slab_ice', false).
sunlight_propagates('stairs:slab_ice', false).
walkable('stairs:slab_ice').
diggable('stairs:slab_ice').
damage_per_second('stairs:slab_ice', 0).
drowning('stairs:slab_ice', 0).
node('farming:wheat_1').
groups('farming:wheat_1', flammable, 2).
groups('farming:wheat_1', not_in_creative_inventory, 1).
groups('farming:wheat_1', snappy, 3).
groups('farming:wheat_1', wheat, 1).
groups('farming:wheat_1', plant, 1).
groups('farming:wheat_1', attached_node, 1).
buildable_to('farming:wheat_1', true).
sunlight_propagates('farming:wheat_1', false).
diggable('farming:wheat_1').
damage_per_second('farming:wheat_1', 0).
drowning('farming:wheat_1', 0).
node('stairs:stair_snowblock').
groups('stairs:stair_snowblock', stair, 1).
groups('stairs:stair_snowblock', crumbly, 3).
groups('stairs:stair_snowblock', snowy, 1).
groups('stairs:stair_snowblock', cools_lava, 1).
buildable_to('stairs:stair_snowblock', false).
sunlight_propagates('stairs:stair_snowblock', false).
walkable('stairs:stair_snowblock').
diggable('stairs:stair_snowblock').
damage_per_second('stairs:stair_snowblock', 0).
drowning('stairs:stair_snowblock', 0).
node('farming:wheat_2').
groups('farming:wheat_2', flammable, 2).
groups('farming:wheat_2', not_in_creative_inventory, 1).
groups('farming:wheat_2', snappy, 3).
groups('farming:wheat_2', wheat, 2).
groups('farming:wheat_2', plant, 1).
groups('farming:wheat_2', attached_node, 1).
buildable_to('farming:wheat_2', true).
sunlight_propagates('farming:wheat_2', false).
diggable('farming:wheat_2').
damage_per_second('farming:wheat_2', 0).
drowning('farming:wheat_2', 0).
node('farming:wheat_3').
groups('farming:wheat_3', flammable, 2).
groups('farming:wheat_3', not_in_creative_inventory, 1).
groups('farming:wheat_3', snappy, 3).
groups('farming:wheat_3', wheat, 3).
groups('farming:wheat_3', plant, 1).
groups('farming:wheat_3', attached_node, 1).
buildable_to('farming:wheat_3', true).
sunlight_propagates('farming:wheat_3', false).
diggable('farming:wheat_3').
damage_per_second('farming:wheat_3', 0).
drowning('farming:wheat_3', 0).
node('stairs:stair_outer_steelblock').
groups('stairs:stair_outer_steelblock', stair, 1).
groups('stairs:stair_outer_steelblock', cracky, 1).
groups('stairs:stair_outer_steelblock', level, 2).
buildable_to('stairs:stair_outer_steelblock', false).
sunlight_propagates('stairs:stair_outer_steelblock', false).
walkable('stairs:stair_outer_steelblock').
diggable('stairs:stair_outer_steelblock').
damage_per_second('stairs:stair_outer_steelblock', 0).
drowning('stairs:stair_outer_steelblock', 0).
node('stairs:stair_inner_snowblock').
groups('stairs:stair_inner_snowblock', stair, 1).
groups('stairs:stair_inner_snowblock', crumbly, 3).
groups('stairs:stair_inner_snowblock', snowy, 1).
groups('stairs:stair_inner_snowblock', cools_lava, 1).
buildable_to('stairs:stair_inner_snowblock', false).
sunlight_propagates('stairs:stair_inner_snowblock', false).
walkable('stairs:stair_inner_snowblock').
diggable('stairs:stair_inner_snowblock').
damage_per_second('stairs:stair_inner_snowblock', 0).
drowning('stairs:stair_inner_snowblock', 0).
node('farming:wheat_4').
groups('farming:wheat_4', flammable, 2).
groups('farming:wheat_4', not_in_creative_inventory, 1).
groups('farming:wheat_4', snappy, 3).
groups('farming:wheat_4', wheat, 4).
groups('farming:wheat_4', plant, 1).
groups('farming:wheat_4', attached_node, 1).
buildable_to('farming:wheat_4', true).
sunlight_propagates('farming:wheat_4', false).
diggable('farming:wheat_4').
damage_per_second('farming:wheat_4', 0).
drowning('farming:wheat_4', 0).
node('beds:bed_bottom').
groups('beds:bed_bottom', flammable, 3).
groups('beds:bed_bottom', bed, 1).
groups('beds:bed_bottom', choppy, 2).
groups('beds:bed_bottom', oddly_breakable_by_hand, 2).
buildable_to('beds:bed_bottom', false).
sunlight_propagates('beds:bed_bottom', false).
walkable('beds:bed_bottom').
diggable('beds:bed_bottom').
damage_per_second('beds:bed_bottom', 0).
drowning('beds:bed_bottom', 0).
node('butterflies:butterfly_white').
groups('butterflies:butterfly_white', catchable, 1).
buildable_to('butterflies:butterfly_white', true).
sunlight_propagates('butterflies:butterfly_white', true).
diggable('butterflies:butterfly_white').
floodable('butterflies:butterfly_white').
damage_per_second('butterflies:butterfly_white', 0).
drowning('butterflies:butterfly_white', 0).
node('butterflies:butterfly_red').
groups('butterflies:butterfly_red', catchable, 1).
buildable_to('butterflies:butterfly_red', true).
sunlight_propagates('butterflies:butterfly_red', true).
diggable('butterflies:butterfly_red').
floodable('butterflies:butterfly_red').
damage_per_second('butterflies:butterfly_red', 0).
drowning('butterflies:butterfly_red', 0).
node('stairs:stair_outer_snowblock').
groups('stairs:stair_outer_snowblock', stair, 1).
groups('stairs:stair_outer_snowblock', crumbly, 3).
groups('stairs:stair_outer_snowblock', snowy, 1).
groups('stairs:stair_outer_snowblock', cools_lava, 1).
buildable_to('stairs:stair_outer_snowblock', false).
sunlight_propagates('stairs:stair_outer_snowblock', false).
walkable('stairs:stair_outer_snowblock').
diggable('stairs:stair_outer_snowblock').
damage_per_second('stairs:stair_outer_snowblock', 0).
drowning('stairs:stair_outer_snowblock', 0).
node('stairs:slab_brick').
groups('stairs:slab_brick', slab, 1).
groups('stairs:slab_brick', cracky, 3).
buildable_to('stairs:slab_brick', false).
sunlight_propagates('stairs:slab_brick', false).
walkable('stairs:slab_brick').
diggable('stairs:slab_brick').
damage_per_second('stairs:slab_brick', 0).
drowning('stairs:slab_brick', 0).
node('farming:wheat_6').
groups('farming:wheat_6', flammable, 2).
groups('farming:wheat_6', not_in_creative_inventory, 1).
groups('farming:wheat_6', snappy, 3).
groups('farming:wheat_6', wheat, 6).
groups('farming:wheat_6', plant, 1).
groups('farming:wheat_6', attached_node, 1).
buildable_to('farming:wheat_6', true).
sunlight_propagates('farming:wheat_6', false).
diggable('farming:wheat_6').
damage_per_second('farming:wheat_6', 0).
drowning('farming:wheat_6', 0).
node('stairs:stair_inner_steelblock').
groups('stairs:stair_inner_steelblock', stair, 1).
groups('stairs:stair_inner_steelblock', cracky, 1).
groups('stairs:stair_inner_steelblock', level, 2).
buildable_to('stairs:stair_inner_steelblock', false).
sunlight_propagates('stairs:stair_inner_steelblock', false).
walkable('stairs:stair_inner_steelblock').
diggable('stairs:stair_inner_steelblock').
damage_per_second('stairs:stair_inner_steelblock', 0).
drowning('stairs:stair_inner_steelblock', 0).
node('stairs:slab_snowblock').
groups('stairs:slab_snowblock', slab, 1).
groups('stairs:slab_snowblock', crumbly, 3).
groups('stairs:slab_snowblock', snowy, 1).
groups('stairs:slab_snowblock', cools_lava, 1).
buildable_to('stairs:slab_snowblock', false).
sunlight_propagates('stairs:slab_snowblock', false).
walkable('stairs:slab_snowblock').
diggable('stairs:slab_snowblock').
damage_per_second('stairs:slab_snowblock', 0).
drowning('stairs:slab_snowblock', 0).
node('farming:wheat_7').
groups('farming:wheat_7', flammable, 2).
groups('farming:wheat_7', not_in_creative_inventory, 1).
groups('farming:wheat_7', snappy, 3).
groups('farming:wheat_7', wheat, 7).
groups('farming:wheat_7', plant, 1).
groups('farming:wheat_7', attached_node, 1).
buildable_to('farming:wheat_7', true).
sunlight_propagates('farming:wheat_7', false).
diggable('farming:wheat_7').
damage_per_second('farming:wheat_7', 0).
drowning('farming:wheat_7', 0).
node('farming:cotton_8').
groups('farming:cotton_8', flammable, 2).
groups('farming:cotton_8', not_in_creative_inventory, 1).
groups('farming:cotton_8', snappy, 3).
groups('farming:cotton_8', cotton, 8).
groups('farming:cotton_8', plant, 1).
groups('farming:cotton_8', attached_node, 1).
buildable_to('farming:cotton_8', true).
sunlight_propagates('farming:cotton_8', false).
diggable('farming:cotton_8').
damage_per_second('farming:cotton_8', 0).
drowning('farming:cotton_8', 0).
node('farming:cotton_7').
groups('farming:cotton_7', flammable, 2).
groups('farming:cotton_7', not_in_creative_inventory, 1).
groups('farming:cotton_7', snappy, 3).
groups('farming:cotton_7', cotton, 7).
groups('farming:cotton_7', plant, 1).
groups('farming:cotton_7', attached_node, 1).
buildable_to('farming:cotton_7', true).
sunlight_propagates('farming:cotton_7', false).
diggable('farming:cotton_7').
damage_per_second('farming:cotton_7', 0).
drowning('farming:cotton_7', 0).
node('stairs:stair_glass').
groups('stairs:stair_glass', stair, 1).
groups('stairs:stair_glass', cracky, 3).
groups('stairs:stair_glass', oddly_breakable_by_hand, 3).
buildable_to('stairs:stair_glass', false).
sunlight_propagates('stairs:stair_glass', true).
walkable('stairs:stair_glass').
diggable('stairs:stair_glass').
damage_per_second('stairs:stair_glass', 0).
drowning('stairs:stair_glass', 0).
node('farming:cotton_6').
groups('farming:cotton_6', flammable, 2).
groups('farming:cotton_6', not_in_creative_inventory, 1).
groups('farming:cotton_6', snappy, 3).
groups('farming:cotton_6', cotton, 6).
groups('farming:cotton_6', plant, 1).
groups('farming:cotton_6', attached_node, 1).
buildable_to('farming:cotton_6', true).
sunlight_propagates('farming:cotton_6', false).
diggable('farming:cotton_6').
damage_per_second('farming:cotton_6', 0).
drowning('farming:cotton_6', 0).
node('farming:dry_soil').
drop('farming:dry_soil', 'default:dry_dirt').
groups('farming:dry_soil', crumbly, 3).
groups('farming:dry_soil', not_in_creative_inventory, 1).
groups('farming:dry_soil', field, 1).
groups('farming:dry_soil', soil, 2).
groups('farming:dry_soil', grassland, 1).
buildable_to('farming:dry_soil', false).
sunlight_propagates('farming:dry_soil', false).
walkable('farming:dry_soil').
diggable('farming:dry_soil').
damage_per_second('farming:dry_soil', 0).
drowning('farming:dry_soil', 0).
node('default:glass').
groups('default:glass', oddly_breakable_by_hand, 3).
groups('default:glass', cracky, 3).
buildable_to('default:glass', false).
sunlight_propagates('default:glass', true).
walkable('default:glass').
diggable('default:glass').
damage_per_second('default:glass', 0).
drowning('default:glass', 0).
node('farming:cotton_4').
groups('farming:cotton_4', flammable, 2).
groups('farming:cotton_4', not_in_creative_inventory, 1).
groups('farming:cotton_4', snappy, 3).
groups('farming:cotton_4', cotton, 4).
groups('farming:cotton_4', plant, 1).
groups('farming:cotton_4', attached_node, 1).
buildable_to('farming:cotton_4', true).
sunlight_propagates('farming:cotton_4', false).
diggable('farming:cotton_4').
damage_per_second('farming:cotton_4', 0).
drowning('farming:cotton_4', 0).
node('stairs:slab_glass').
groups('stairs:slab_glass', cracky, 3).
groups('stairs:slab_glass', slab, 1).
groups('stairs:slab_glass', oddly_breakable_by_hand, 3).
buildable_to('stairs:slab_glass', false).
sunlight_propagates('stairs:slab_glass', true).
walkable('stairs:slab_glass').
diggable('stairs:slab_glass').
damage_per_second('stairs:slab_glass', 0).
drowning('stairs:slab_glass', 0).
node('farming:cotton_3').
groups('farming:cotton_3', flammable, 2).
groups('farming:cotton_3', not_in_creative_inventory, 1).
groups('farming:cotton_3', snappy, 3).
groups('farming:cotton_3', cotton, 3).
groups('farming:cotton_3', plant, 1).
groups('farming:cotton_3', attached_node, 1).
buildable_to('farming:cotton_3', true).
sunlight_propagates('farming:cotton_3', false).
diggable('farming:cotton_3').
damage_per_second('farming:cotton_3', 0).
drowning('farming:cotton_3', 0).
node('butterflies:hidden_butterfly_white').
groups('butterflies:hidden_butterfly_white', not_in_creative_inventory, 1).
buildable_to('butterflies:hidden_butterfly_white', false).
sunlight_propagates('butterflies:hidden_butterfly_white', true).
floodable('butterflies:hidden_butterfly_white').
damage_per_second('butterflies:hidden_butterfly_white', 0).
drowning('butterflies:hidden_butterfly_white', 0).
node('farming:straw').
groups('farming:straw', flammable, 4).
groups('farming:straw', fall_damage_add_percent, '-30').
groups('farming:straw', snappy, 3).
buildable_to('farming:straw', false).
sunlight_propagates('farming:straw', false).
walkable('farming:straw').
diggable('farming:straw').
damage_per_second('farming:straw', 0).
drowning('farming:straw', 0).
node('stairs:stair_inner_glass').
groups('stairs:stair_inner_glass', stair, 1).
groups('stairs:stair_inner_glass', cracky, 3).
groups('stairs:stair_inner_glass', oddly_breakable_by_hand, 3).
buildable_to('stairs:stair_inner_glass', false).
sunlight_propagates('stairs:stair_inner_glass', true).
walkable('stairs:stair_inner_glass').
diggable('stairs:stair_inner_glass').
damage_per_second('stairs:stair_inner_glass', 0).
drowning('stairs:stair_inner_glass', 0).
node('farming:cotton_wild').
drop('farming:cotton_wild', 'farming:seed_cotton').
groups('farming:cotton_wild', flammable, 4).
groups('farming:cotton_wild', snappy, 3).
groups('farming:cotton_wild', attached_node, 1).
buildable_to('farming:cotton_wild', true).
sunlight_propagates('farming:cotton_wild', true).
diggable('farming:cotton_wild').
damage_per_second('farming:cotton_wild', 0).
drowning('farming:cotton_wild', 0).
node('default:furnace_active').
drop('default:furnace_active', 'default:furnace').
groups('default:furnace_active', not_in_creative_inventory, 1).
groups('default:furnace_active', cracky, 2).
buildable_to('default:furnace_active', false).
sunlight_propagates('default:furnace_active', false).
walkable('default:furnace_active').
diggable('default:furnace_active').
damage_per_second('default:furnace_active', 0).
drowning('default:furnace_active', 0).
node('farming:wheat_8').
groups('farming:wheat_8', flammable, 2).
groups('farming:wheat_8', not_in_creative_inventory, 1).
groups('farming:wheat_8', snappy, 3).
groups('farming:wheat_8', wheat, 8).
groups('farming:wheat_8', plant, 1).
groups('farming:wheat_8', attached_node, 1).
buildable_to('farming:wheat_8', true).
sunlight_propagates('farming:wheat_8', false).
diggable('farming:wheat_8').
damage_per_second('farming:wheat_8', 0).
drowning('farming:wheat_8', 0).
node('stairs:stair_wood').
groups('stairs:stair_wood', flammable, 2).
groups('stairs:stair_wood', stair, 1).
groups('stairs:stair_wood', choppy, 2).
groups('stairs:stair_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_wood', false).
sunlight_propagates('stairs:stair_wood', false).
walkable('stairs:stair_wood').
diggable('stairs:stair_wood').
damage_per_second('stairs:stair_wood', 0).
drowning('stairs:stair_wood', 0).
node('farming:wheat_5').
groups('farming:wheat_5', flammable, 2).
groups('farming:wheat_5', not_in_creative_inventory, 1).
groups('farming:wheat_5', snappy, 3).
groups('farming:wheat_5', wheat, 5).
groups('farming:wheat_5', plant, 1).
groups('farming:wheat_5', attached_node, 1).
buildable_to('farming:wheat_5', true).
sunlight_propagates('farming:wheat_5', false).
diggable('farming:wheat_5').
damage_per_second('farming:wheat_5', 0).
drowning('farming:wheat_5', 0).
node('farming:cotton_1').
groups('farming:cotton_1', flammable, 2).
groups('farming:cotton_1', not_in_creative_inventory, 1).
groups('farming:cotton_1', snappy, 3).
groups('farming:cotton_1', cotton, 1).
groups('farming:cotton_1', plant, 1).
groups('farming:cotton_1', attached_node, 1).
buildable_to('farming:cotton_1', true).
sunlight_propagates('farming:cotton_1', false).
diggable('farming:cotton_1').
damage_per_second('farming:cotton_1', 0).
drowning('farming:cotton_1', 0).
node('stairs:stair_inner_straw').
groups('stairs:stair_inner_straw', flammable, 4).
groups('stairs:stair_inner_straw', stair, 1).
groups('stairs:stair_inner_straw', snappy, 3).
buildable_to('stairs:stair_inner_straw', false).
sunlight_propagates('stairs:stair_inner_straw', false).
walkable('stairs:stair_inner_straw').
diggable('stairs:stair_inner_straw').
damage_per_second('stairs:stair_inner_straw', 0).
drowning('stairs:stair_inner_straw', 0).
node('stairs:stair_obsidian_glass').
groups('stairs:stair_obsidian_glass', stair, 1).
groups('stairs:stair_obsidian_glass', cracky, 3).
buildable_to('stairs:stair_obsidian_glass', false).
sunlight_propagates('stairs:stair_obsidian_glass', true).
walkable('stairs:stair_obsidian_glass').
diggable('stairs:stair_obsidian_glass').
damage_per_second('stairs:stair_obsidian_glass', 0).
drowning('stairs:stair_obsidian_glass', 0).
node('farming:cotton_2').
groups('farming:cotton_2', flammable, 2).
groups('farming:cotton_2', not_in_creative_inventory, 1).
groups('farming:cotton_2', snappy, 3).
groups('farming:cotton_2', cotton, 2).
groups('farming:cotton_2', plant, 1).
groups('farming:cotton_2', attached_node, 1).
buildable_to('farming:cotton_2', true).
sunlight_propagates('farming:cotton_2', false).
diggable('farming:cotton_2').
damage_per_second('farming:cotton_2', 0).
drowning('farming:cotton_2', 0).
node('stairs:stair_inner_wood').
groups('stairs:stair_inner_wood', flammable, 2).
groups('stairs:stair_inner_wood', stair, 1).
groups('stairs:stair_inner_wood', choppy, 2).
groups('stairs:stair_inner_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_inner_wood', false).
sunlight_propagates('stairs:stair_inner_wood', false).
walkable('stairs:stair_inner_wood').
diggable('stairs:stair_inner_wood').
damage_per_second('stairs:stair_inner_wood', 0).
drowning('stairs:stair_inner_wood', 0).
node('farming:desert_sand_soil').
drop('farming:desert_sand_soil', 'default:desert_sand').
groups('farming:desert_sand_soil', falling_node, 1).
groups('farming:desert_sand_soil', crumbly, 3).
groups('farming:desert_sand_soil', not_in_creative_inventory, 1).
groups('farming:desert_sand_soil', desert, 1).
groups('farming:desert_sand_soil', field, 1).
groups('farming:desert_sand_soil', soil, 2).
groups('farming:desert_sand_soil', sand, 1).
buildable_to('farming:desert_sand_soil', false).
sunlight_propagates('farming:desert_sand_soil', false).
walkable('farming:desert_sand_soil').
diggable('farming:desert_sand_soil').
damage_per_second('farming:desert_sand_soil', 0).
drowning('farming:desert_sand_soil', 0).
node('default:snow').
groups('default:snow', falling_node, 1).
groups('default:snow', crumbly, 3).
groups('default:snow', snowy, 1).
buildable_to('default:snow', true).
sunlight_propagates('default:snow', false).
walkable('default:snow').
diggable('default:snow').
floodable('default:snow').
damage_per_second('default:snow', 0).
drowning('default:snow', 0).
node('stairs:slab_obsidian_glass').
groups('stairs:slab_obsidian_glass', slab, 1).
groups('stairs:slab_obsidian_glass', cracky, 3).
buildable_to('stairs:slab_obsidian_glass', false).
sunlight_propagates('stairs:slab_obsidian_glass', true).
walkable('stairs:slab_obsidian_glass').
diggable('stairs:slab_obsidian_glass').
damage_per_second('stairs:slab_obsidian_glass', 0).
drowning('stairs:slab_obsidian_glass', 0).
node('farming:dry_soil_wet').
drop('farming:dry_soil_wet', 'default:dry_dirt').
groups('farming:dry_soil_wet', crumbly, 3).
groups('farming:dry_soil_wet', not_in_creative_inventory, 1).
groups('farming:dry_soil_wet', wet, 1).
groups('farming:dry_soil_wet', field, 1).
groups('farming:dry_soil_wet', soil, 3).
groups('farming:dry_soil_wet', grassland, 1).
buildable_to('farming:dry_soil_wet', false).
sunlight_propagates('farming:dry_soil_wet', false).
walkable('farming:dry_soil_wet').
diggable('farming:dry_soil_wet').
damage_per_second('farming:dry_soil_wet', 0).
drowning('farming:dry_soil_wet', 0).
node('stairs:stair_outer_wood').
groups('stairs:stair_outer_wood', flammable, 2).
groups('stairs:stair_outer_wood', stair, 1).
groups('stairs:stair_outer_wood', choppy, 2).
groups('stairs:stair_outer_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_outer_wood', false).
sunlight_propagates('stairs:stair_outer_wood', false).
walkable('stairs:stair_outer_wood').
diggable('stairs:stair_outer_wood').
damage_per_second('stairs:stair_outer_wood', 0).
drowning('stairs:stair_outer_wood', 0).
node('default:dirt_with_snow').
drop('default:dirt_with_snow', 'default:dirt').
groups('default:dirt_with_snow', spreading_dirt_type, 1).
groups('default:dirt_with_snow', crumbly, 3).
groups('default:dirt_with_snow', soil, 1).
groups('default:dirt_with_snow', snowy, 1).
buildable_to('default:dirt_with_snow', false).
sunlight_propagates('default:dirt_with_snow', false).
walkable('default:dirt_with_snow').
diggable('default:dirt_with_snow').
damage_per_second('default:dirt_with_snow', 0).
drowning('default:dirt_with_snow', 0).
node('stairs:stair_inner_obsidian_glass').
groups('stairs:stair_inner_obsidian_glass', stair, 1).
groups('stairs:stair_inner_obsidian_glass', cracky, 3).
buildable_to('stairs:stair_inner_obsidian_glass', false).
sunlight_propagates('stairs:stair_inner_obsidian_glass', true).
walkable('stairs:stair_inner_obsidian_glass').
diggable('stairs:stair_inner_obsidian_glass').
damage_per_second('stairs:stair_inner_obsidian_glass', 0).
drowning('stairs:stair_inner_obsidian_glass', 0).
node('farming:cotton_5').
groups('farming:cotton_5', flammable, 2).
groups('farming:cotton_5', not_in_creative_inventory, 1).
groups('farming:cotton_5', snappy, 3).
groups('farming:cotton_5', cotton, 5).
groups('farming:cotton_5', plant, 1).
groups('farming:cotton_5', attached_node, 1).
buildable_to('farming:cotton_5', true).
sunlight_propagates('farming:cotton_5', false).
diggable('farming:cotton_5').
damage_per_second('farming:cotton_5', 0).
drowning('farming:cotton_5', 0).
node('stairs:slab_acacia_wood').
groups('stairs:slab_acacia_wood', flammable, 2).
groups('stairs:slab_acacia_wood', slab, 1).
groups('stairs:slab_acacia_wood', choppy, 2).
groups('stairs:slab_acacia_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:slab_acacia_wood', false).
sunlight_propagates('stairs:slab_acacia_wood', false).
walkable('stairs:slab_acacia_wood').
diggable('stairs:slab_acacia_wood').
damage_per_second('stairs:slab_acacia_wood', 0).
drowning('stairs:slab_acacia_wood', 0).
node('farming:soil_wet').
drop('farming:soil_wet', 'default:dirt').
groups('farming:soil_wet', crumbly, 3).
groups('farming:soil_wet', not_in_creative_inventory, 1).
groups('farming:soil_wet', wet, 1).
groups('farming:soil_wet', field, 1).
groups('farming:soil_wet', soil, 3).
groups('farming:soil_wet', grassland, 1).
buildable_to('farming:soil_wet', false).
sunlight_propagates('farming:soil_wet', false).
walkable('farming:soil_wet').
diggable('farming:soil_wet').
damage_per_second('farming:soil_wet', 0).
drowning('farming:soil_wet', 0).
node('stairs:stair_outer_obsidian_glass').
groups('stairs:stair_outer_obsidian_glass', stair, 1).
groups('stairs:stair_outer_obsidian_glass', cracky, 3).
buildable_to('stairs:stair_outer_obsidian_glass', false).
sunlight_propagates('stairs:stair_outer_obsidian_glass', true).
walkable('stairs:stair_outer_obsidian_glass').
diggable('stairs:stair_outer_obsidian_glass').
damage_per_second('stairs:stair_outer_obsidian_glass', 0).
drowning('stairs:stair_outer_obsidian_glass', 0).
node('default:cobble').
groups('default:cobble', stone, 2).
groups('default:cobble', cracky, 3).
buildable_to('default:cobble', false).
sunlight_propagates('default:cobble', false).
walkable('default:cobble').
diggable('default:cobble').
damage_per_second('default:cobble', 0).
drowning('default:cobble', 0).
node('default:mossycobble').
groups('default:mossycobble', stone, 1).
groups('default:mossycobble', cracky, 3).
buildable_to('default:mossycobble', false).
sunlight_propagates('default:mossycobble', false).
walkable('default:mossycobble').
diggable('default:mossycobble').
damage_per_second('default:mossycobble', 0).
drowning('default:mossycobble', 0).
node('stairs:slab_cobble').
groups('stairs:slab_cobble', slab, 1).
groups('stairs:slab_cobble', cracky, 3).
buildable_to('stairs:slab_cobble', false).
sunlight_propagates('stairs:slab_cobble', false).
walkable('stairs:slab_cobble').
diggable('stairs:slab_cobble').
damage_per_second('stairs:slab_cobble', 0).
drowning('stairs:slab_cobble', 0).
node('stairs:slab_mossycobble').
groups('stairs:slab_mossycobble', slab, 1).
groups('stairs:slab_mossycobble', cracky, 3).
buildable_to('stairs:slab_mossycobble', false).
sunlight_propagates('stairs:slab_mossycobble', false).
walkable('stairs:slab_mossycobble').
diggable('stairs:slab_mossycobble').
damage_per_second('stairs:slab_mossycobble', 0).
drowning('stairs:slab_mossycobble', 0).
node('stairs:stair_cobble').
groups('stairs:stair_cobble', stair, 1).
groups('stairs:stair_cobble', cracky, 3).
buildable_to('stairs:stair_cobble', false).
sunlight_propagates('stairs:stair_cobble', false).
walkable('stairs:stair_cobble').
diggable('stairs:stair_cobble').
damage_per_second('stairs:stair_cobble', 0).
drowning('stairs:stair_cobble', 0).
node('stairs:stair_mossycobble').
groups('stairs:stair_mossycobble', stair, 1).
groups('stairs:stair_mossycobble', cracky, 3).
buildable_to('stairs:stair_mossycobble', false).
sunlight_propagates('stairs:stair_mossycobble', false).
walkable('stairs:stair_mossycobble').
diggable('stairs:stair_mossycobble').
damage_per_second('stairs:stair_mossycobble', 0).
drowning('stairs:stair_mossycobble', 0).
node('stairs:stair_inner_cobble').
groups('stairs:stair_inner_cobble', stair, 1).
groups('stairs:stair_inner_cobble', cracky, 3).
buildable_to('stairs:stair_inner_cobble', false).
sunlight_propagates('stairs:stair_inner_cobble', false).
walkable('stairs:stair_inner_cobble').
diggable('stairs:stair_inner_cobble').
damage_per_second('stairs:stair_inner_cobble', 0).
drowning('stairs:stair_inner_cobble', 0).
node('stairs:stair_inner_junglewood').
groups('stairs:stair_inner_junglewood', flammable, 2).
groups('stairs:stair_inner_junglewood', stair, 1).
groups('stairs:stair_inner_junglewood', choppy, 2).
groups('stairs:stair_inner_junglewood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_inner_junglewood', false).
sunlight_propagates('stairs:stair_inner_junglewood', false).
walkable('stairs:stair_inner_junglewood').
diggable('stairs:stair_inner_junglewood').
damage_per_second('stairs:stair_inner_junglewood', 0).
drowning('stairs:stair_inner_junglewood', 0).
node('stairs:stair_outer_cobble').
groups('stairs:stair_outer_cobble', stair, 1).
groups('stairs:stair_outer_cobble', cracky, 3).
buildable_to('stairs:stair_outer_cobble', false).
sunlight_propagates('stairs:stair_outer_cobble', false).
walkable('stairs:stair_outer_cobble').
diggable('stairs:stair_outer_cobble').
damage_per_second('stairs:stair_outer_cobble', 0).
drowning('stairs:stair_outer_cobble', 0).
node('stairs:stair_outer_mossycobble').
groups('stairs:stair_outer_mossycobble', stair, 1).
groups('stairs:stair_outer_mossycobble', cracky, 3).
buildable_to('stairs:stair_outer_mossycobble', false).
sunlight_propagates('stairs:stair_outer_mossycobble', false).
walkable('stairs:stair_outer_mossycobble').
diggable('stairs:stair_outer_mossycobble').
damage_per_second('stairs:stair_outer_mossycobble', 0).
drowning('stairs:stair_outer_mossycobble', 0).
node('walls:cobble').
groups('walls:cobble', wall, 1).
groups('walls:cobble', cracky, 3).
groups('walls:cobble', stone, 2).
buildable_to('walls:cobble', false).
sunlight_propagates('walls:cobble', false).
walkable('walls:cobble').
diggable('walls:cobble').
damage_per_second('walls:cobble', 0).
drowning('walls:cobble', 0).
node('walls:mossycobble').
groups('walls:mossycobble', wall, 1).
groups('walls:mossycobble', cracky, 3).
groups('walls:mossycobble', stone, 2).
buildable_to('walls:mossycobble', false).
sunlight_propagates('walls:mossycobble', false).
walkable('walls:mossycobble').
diggable('walls:mossycobble').
damage_per_second('walls:mossycobble', 0).
drowning('walls:mossycobble', 0).
node('stairs:stair_outer_aspen_wood').
groups('stairs:stair_outer_aspen_wood', flammable, 3).
groups('stairs:stair_outer_aspen_wood', stair, 1).
groups('stairs:stair_outer_aspen_wood', choppy, 3).
groups('stairs:stair_outer_aspen_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_outer_aspen_wood', false).
sunlight_propagates('stairs:stair_outer_aspen_wood', false).
walkable('stairs:stair_outer_aspen_wood').
diggable('stairs:stair_outer_aspen_wood').
damage_per_second('stairs:stair_outer_aspen_wood', 0).
drowning('stairs:stair_outer_aspen_wood', 0).
node('farming:soil').
drop('farming:soil', 'default:dirt').
groups('farming:soil', crumbly, 3).
groups('farming:soil', not_in_creative_inventory, 1).
groups('farming:soil', field, 1).
groups('farming:soil', soil, 2).
groups('farming:soil', grassland, 1).
buildable_to('farming:soil', false).
sunlight_propagates('farming:soil', false).
walkable('farming:soil').
diggable('farming:soil').
damage_per_second('farming:soil', 0).
drowning('farming:soil', 0).
node('wool:pink').
groups('wool:pink', flammable, 3).
groups('wool:pink', snappy, 2).
groups('wool:pink', color_pink, 1).
groups('wool:pink', wool, 1).
groups('wool:pink', choppy, 2).
groups('wool:pink', oddly_breakable_by_hand, 3).
buildable_to('wool:pink', false).
sunlight_propagates('wool:pink', false).
walkable('wool:pink').
diggable('wool:pink').
damage_per_second('wool:pink', 0).
drowning('wool:pink', 0).
node('default:torch').
drop('default:torch', 'default:torch').
groups('default:torch', flammable, 1).
groups('default:torch', torch, 1).
groups('default:torch', dig_immediate, 3).
groups('default:torch', choppy, 2).
groups('default:torch', attached_node, 1).
buildable_to('default:torch', false).
sunlight_propagates('default:torch', true).
diggable('default:torch').
floodable('default:torch').
damage_per_second('default:torch', 0).
drowning('default:torch', 0).
node('stairs:slab_junglewood').
groups('stairs:slab_junglewood', flammable, 2).
groups('stairs:slab_junglewood', slab, 1).
groups('stairs:slab_junglewood', choppy, 2).
groups('stairs:slab_junglewood', oddly_breakable_by_hand, 2).
buildable_to('stairs:slab_junglewood', false).
sunlight_propagates('stairs:slab_junglewood', false).
walkable('stairs:slab_junglewood').
diggable('stairs:slab_junglewood').
damage_per_second('stairs:slab_junglewood', 0).
drowning('stairs:slab_junglewood', 0).
node('wool:red').
groups('wool:red', flammable, 3).
groups('wool:red', snappy, 2).
groups('wool:red', color_red, 1).
groups('wool:red', wool, 1).
groups('wool:red', choppy, 2).
groups('wool:red', oddly_breakable_by_hand, 3).
buildable_to('wool:red', false).
sunlight_propagates('wool:red', false).
walkable('wool:red').
diggable('wool:red').
damage_per_second('wool:red', 0).
drowning('wool:red', 0).
node('wool:orange').
groups('wool:orange', flammable, 3).
groups('wool:orange', color_orange, 1).
groups('wool:orange', snappy, 2).
groups('wool:orange', wool, 1).
groups('wool:orange', choppy, 2).
groups('wool:orange', oddly_breakable_by_hand, 3).
buildable_to('wool:orange', false).
sunlight_propagates('wool:orange', false).
walkable('wool:orange').
diggable('wool:orange').
damage_per_second('wool:orange', 0).
drowning('wool:orange', 0).
node('wool:brown').
groups('wool:brown', flammable, 3).
groups('wool:brown', snappy, 2).
groups('wool:brown', wool, 1).
groups('wool:brown', color_brown, 1).
groups('wool:brown', choppy, 2).
groups('wool:brown', oddly_breakable_by_hand, 3).
buildable_to('wool:brown', false).
sunlight_propagates('wool:brown', false).
walkable('wool:brown').
diggable('wool:brown').
damage_per_second('wool:brown', 0).
drowning('wool:brown', 0).
node('stairs:stair_stone').
groups('stairs:stair_stone', stair, 1).
groups('stairs:stair_stone', cracky, 3).
buildable_to('stairs:stair_stone', false).
sunlight_propagates('stairs:stair_stone', false).
walkable('stairs:stair_stone').
diggable('stairs:stair_stone').
damage_per_second('stairs:stair_stone', 0).
drowning('stairs:stair_stone', 0).
node('wool:yellow').
groups('wool:yellow', flammable, 3).
groups('wool:yellow', snappy, 2).
groups('wool:yellow', color_yellow, 1).
groups('wool:yellow', wool, 1).
groups('wool:yellow', choppy, 2).
groups('wool:yellow', oddly_breakable_by_hand, 3).
buildable_to('wool:yellow', false).
sunlight_propagates('wool:yellow', false).
walkable('wool:yellow').
diggable('wool:yellow').
damage_per_second('wool:yellow', 0).
drowning('wool:yellow', 0).
node('wool:green').
groups('wool:green', flammable, 3).
groups('wool:green', snappy, 2).
groups('wool:green', color_green, 1).
groups('wool:green', wool, 1).
groups('wool:green', choppy, 2).
groups('wool:green', oddly_breakable_by_hand, 3).
buildable_to('wool:green', false).
sunlight_propagates('wool:green', false).
walkable('wool:green').
diggable('wool:green').
damage_per_second('wool:green', 0).
drowning('wool:green', 0).
node('wool:dark_green').
groups('wool:dark_green', flammable, 3).
groups('wool:dark_green', color_dark_green, 1).
groups('wool:dark_green', snappy, 2).
groups('wool:dark_green', wool, 1).
groups('wool:dark_green', choppy, 2).
groups('wool:dark_green', oddly_breakable_by_hand, 3).
buildable_to('wool:dark_green', false).
sunlight_propagates('wool:dark_green', false).
walkable('wool:dark_green').
diggable('wool:dark_green').
damage_per_second('wool:dark_green', 0).
drowning('wool:dark_green', 0).
node('wool:blue').
groups('wool:blue', flammable, 3).
groups('wool:blue', color_blue, 1).
groups('wool:blue', snappy, 2).
groups('wool:blue', wool, 1).
groups('wool:blue', choppy, 2).
groups('wool:blue', oddly_breakable_by_hand, 3).
buildable_to('wool:blue', false).
sunlight_propagates('wool:blue', false).
walkable('wool:blue').
diggable('wool:blue').
damage_per_second('wool:blue', 0).
drowning('wool:blue', 0).
node('stairs:stair_inner_pine_wood').
groups('stairs:stair_inner_pine_wood', flammable, 3).
groups('stairs:stair_inner_pine_wood', stair, 1).
groups('stairs:stair_inner_pine_wood', choppy, 3).
groups('stairs:stair_inner_pine_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_inner_pine_wood', false).
sunlight_propagates('stairs:stair_inner_pine_wood', false).
walkable('stairs:stair_inner_pine_wood').
diggable('stairs:stair_inner_pine_wood').
damage_per_second('stairs:stair_inner_pine_wood', 0).
drowning('stairs:stair_inner_pine_wood', 0).
node('stairs:stair_inner_stone').
groups('stairs:stair_inner_stone', stair, 1).
groups('stairs:stair_inner_stone', cracky, 3).
buildable_to('stairs:stair_inner_stone', false).
sunlight_propagates('stairs:stair_inner_stone', false).
walkable('stairs:stair_inner_stone').
diggable('stairs:stair_inner_stone').
damage_per_second('stairs:stair_inner_stone', 0).
drowning('stairs:stair_inner_stone', 0).
node('default:torch_wall').
drop('default:torch_wall', 'default:torch').
groups('default:torch_wall', flammable, 1).
groups('default:torch_wall', torch, 1).
groups('default:torch_wall', not_in_creative_inventory, 1).
groups('default:torch_wall', dig_immediate, 3).
groups('default:torch_wall', choppy, 2).
groups('default:torch_wall', attached_node, 1).
buildable_to('default:torch_wall', false).
sunlight_propagates('default:torch_wall', true).
diggable('default:torch_wall').
floodable('default:torch_wall').
damage_per_second('default:torch_wall', 0).
drowning('default:torch_wall', 0).
node('wool:violet').
groups('wool:violet', flammable, 3).
groups('wool:violet', snappy, 2).
groups('wool:violet', wool, 1).
groups('wool:violet', color_violet, 1).
groups('wool:violet', choppy, 2).
groups('wool:violet', oddly_breakable_by_hand, 3).
buildable_to('wool:violet', false).
sunlight_propagates('wool:violet', false).
walkable('wool:violet').
diggable('wool:violet').
damage_per_second('wool:violet', 0).
drowning('wool:violet', 0).
node('wool:dark_grey').
groups('wool:dark_grey', flammable, 3).
groups('wool:dark_grey', snappy, 2).
groups('wool:dark_grey', color_dark_grey, 1).
groups('wool:dark_grey', wool, 1).
groups('wool:dark_grey', choppy, 2).
groups('wool:dark_grey', oddly_breakable_by_hand, 3).
buildable_to('wool:dark_grey', false).
sunlight_propagates('wool:dark_grey', false).
walkable('wool:dark_grey').
diggable('wool:dark_grey').
damage_per_second('wool:dark_grey', 0).
drowning('wool:dark_grey', 0).
node('stairs:stair_outer_pine_wood').
groups('stairs:stair_outer_pine_wood', flammable, 3).
groups('stairs:stair_outer_pine_wood', stair, 1).
groups('stairs:stair_outer_pine_wood', choppy, 3).
groups('stairs:stair_outer_pine_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_outer_pine_wood', false).
sunlight_propagates('stairs:stair_outer_pine_wood', false).
walkable('stairs:stair_outer_pine_wood').
diggable('stairs:stair_outer_pine_wood').
damage_per_second('stairs:stair_outer_pine_wood', 0).
drowning('stairs:stair_outer_pine_wood', 0).
node('stairs:stair_outer_stone').
groups('stairs:stair_outer_stone', stair, 1).
groups('stairs:stair_outer_stone', cracky, 3).
buildable_to('stairs:stair_outer_stone', false).
sunlight_propagates('stairs:stair_outer_stone', false).
walkable('stairs:stair_outer_stone').
diggable('stairs:stair_outer_stone').
damage_per_second('stairs:stair_outer_stone', 0).
drowning('stairs:stair_outer_stone', 0).
node('wool:grey').
groups('wool:grey', flammable, 3).
groups('wool:grey', snappy, 2).
groups('wool:grey', color_grey, 1).
groups('wool:grey', wool, 1).
groups('wool:grey', choppy, 2).
groups('wool:grey', oddly_breakable_by_hand, 3).
buildable_to('wool:grey', false).
sunlight_propagates('wool:grey', false).
walkable('wool:grey').
diggable('wool:grey').
damage_per_second('wool:grey', 0).
drowning('wool:grey', 0).
node('default:obsidian_glass').
groups('default:obsidian_glass', cracky, 3).
buildable_to('default:obsidian_glass', false).
sunlight_propagates('default:obsidian_glass', true).
walkable('default:obsidian_glass').
diggable('default:obsidian_glass').
damage_per_second('default:obsidian_glass', 0).
drowning('default:obsidian_glass', 0).
node('xpanes:trapdoor_steel_bar').
groups('xpanes:trapdoor_steel_bar', level, 2).
groups('xpanes:trapdoor_steel_bar', cracky, 1).
groups('xpanes:trapdoor_steel_bar', door, 1).
groups('xpanes:trapdoor_steel_bar', node, 1).
buildable_to('xpanes:trapdoor_steel_bar', false).
sunlight_propagates('xpanes:trapdoor_steel_bar', false).
walkable('xpanes:trapdoor_steel_bar').
diggable('xpanes:trapdoor_steel_bar').
damage_per_second('xpanes:trapdoor_steel_bar', 0).
drowning('xpanes:trapdoor_steel_bar', 0).
node('stairs:slab_stone').
groups('stairs:slab_stone', slab, 1).
groups('stairs:slab_stone', cracky, 3).
buildable_to('stairs:slab_stone', false).
sunlight_propagates('stairs:slab_stone', false).
walkable('stairs:slab_stone').
diggable('stairs:slab_stone').
damage_per_second('stairs:slab_stone', 0).
drowning('stairs:slab_stone', 0).
node('xpanes:trapdoor_steel_bar_open').
drop('xpanes:trapdoor_steel_bar_open', 'xpanes:trapdoor_steel_bar').
groups('xpanes:trapdoor_steel_bar_open', level, 2).
groups('xpanes:trapdoor_steel_bar_open', door, 1).
groups('xpanes:trapdoor_steel_bar_open', node, 1).
groups('xpanes:trapdoor_steel_bar_open', cracky, 1).
groups('xpanes:trapdoor_steel_bar_open', not_in_creative_inventory, 1).
buildable_to('xpanes:trapdoor_steel_bar_open', false).
sunlight_propagates('xpanes:trapdoor_steel_bar_open', false).
walkable('xpanes:trapdoor_steel_bar_open').
diggable('xpanes:trapdoor_steel_bar_open').
damage_per_second('xpanes:trapdoor_steel_bar_open', 0).
drowning('xpanes:trapdoor_steel_bar_open', 0).
node('default:coral_pink').
groups('default:coral_pink', snappy, 3).
buildable_to('default:coral_pink', false).
sunlight_propagates('default:coral_pink', false).
walkable('default:coral_pink').
diggable('default:coral_pink').
damage_per_second('default:coral_pink', 0).
drowning('default:coral_pink', 0).
node('default:fence_rail_wood').
groups('default:fence_rail_wood', flammable, 2).
groups('default:fence_rail_wood', fence, 1).
groups('default:fence_rail_wood', choppy, 2).
groups('default:fence_rail_wood', oddly_breakable_by_hand, 2).
buildable_to('default:fence_rail_wood', false).
sunlight_propagates('default:fence_rail_wood', true).
walkable('default:fence_rail_wood').
diggable('default:fence_rail_wood').
damage_per_second('default:fence_rail_wood', 0).
drowning('default:fence_rail_wood', 0).
node('xpanes:door_steel_bar_b').
drop('xpanes:door_steel_bar_b', 'xpanes:door_steel_bar').
groups('xpanes:door_steel_bar_b', level, 2).
groups('xpanes:door_steel_bar_b', not_in_creative_inventory, 1).
groups('xpanes:door_steel_bar_b', node, 1).
groups('xpanes:door_steel_bar_b', cracky, 1).
groups('xpanes:door_steel_bar_b', door, 1).
buildable_to('xpanes:door_steel_bar_b', false).
sunlight_propagates('xpanes:door_steel_bar_b', true).
walkable('xpanes:door_steel_bar_b').
diggable('xpanes:door_steel_bar_b').
damage_per_second('xpanes:door_steel_bar_b', 0).
drowning('xpanes:door_steel_bar_b', 0).
node('stairs:slab_pine_wood').
groups('stairs:slab_pine_wood', flammable, 3).
groups('stairs:slab_pine_wood', slab, 1).
groups('stairs:slab_pine_wood', choppy, 3).
groups('stairs:slab_pine_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:slab_pine_wood', false).
sunlight_propagates('stairs:slab_pine_wood', false).
walkable('stairs:slab_pine_wood').
diggable('stairs:slab_pine_wood').
damage_per_second('stairs:slab_pine_wood', 0).
drowning('stairs:slab_pine_wood', 0).
node('xpanes:bar').
drop('xpanes:bar', 'xpanes:bar_flat').
groups('xpanes:bar', pane, 1).
groups('xpanes:bar', not_in_creative_inventory, 1).
groups('xpanes:bar', cracky, 2).
buildable_to('xpanes:bar', false).
sunlight_propagates('xpanes:bar', true).
walkable('xpanes:bar').
diggable('xpanes:bar').
damage_per_second('xpanes:bar', 0).
drowning('xpanes:bar', 0).
node('xpanes:bar_flat').
drop('xpanes:bar_flat', 'xpanes:bar_flat').
groups('xpanes:bar_flat', pane, 1).
groups('xpanes:bar_flat', cracky, 2).
buildable_to('xpanes:bar_flat', false).
sunlight_propagates('xpanes:bar_flat', true).
walkable('xpanes:bar_flat').
diggable('xpanes:bar_flat').
damage_per_second('xpanes:bar_flat', 0).
drowning('xpanes:bar_flat', 0).
node('xpanes:obsidian_pane').
drop('xpanes:obsidian_pane', 'xpanes:obsidian_pane_flat').
groups('xpanes:obsidian_pane', pane, 1).
groups('xpanes:obsidian_pane', cracky, 3).
groups('xpanes:obsidian_pane', not_in_creative_inventory, 1).
groups('xpanes:obsidian_pane', snappy, 2).
buildable_to('xpanes:obsidian_pane', false).
sunlight_propagates('xpanes:obsidian_pane', true).
walkable('xpanes:obsidian_pane').
diggable('xpanes:obsidian_pane').
damage_per_second('xpanes:obsidian_pane', 0).
drowning('xpanes:obsidian_pane', 0).
node('xpanes:obsidian_pane_flat').
drop('xpanes:obsidian_pane_flat', 'xpanes:obsidian_pane_flat').
groups('xpanes:obsidian_pane_flat', cracky, 3).
groups('xpanes:obsidian_pane_flat', pane, 1).
groups('xpanes:obsidian_pane_flat', snappy, 2).
buildable_to('xpanes:obsidian_pane_flat', false).
sunlight_propagates('xpanes:obsidian_pane_flat', true).
walkable('xpanes:obsidian_pane_flat').
diggable('xpanes:obsidian_pane_flat').
damage_per_second('xpanes:obsidian_pane_flat', 0).
drowning('xpanes:obsidian_pane_flat', 0).
node('xpanes:pane').
drop('xpanes:pane', 'xpanes:pane_flat').
groups('xpanes:pane', pane, 1).
groups('xpanes:pane', not_in_creative_inventory, 1).
groups('xpanes:pane', snappy, 2).
groups('xpanes:pane', cracky, 3).
groups('xpanes:pane', oddly_breakable_by_hand, 3).
buildable_to('xpanes:pane', false).
sunlight_propagates('xpanes:pane', true).
walkable('xpanes:pane').
diggable('xpanes:pane').
damage_per_second('xpanes:pane', 0).
drowning('xpanes:pane', 0).
node('xpanes:pane_flat').
drop('xpanes:pane_flat', 'xpanes:pane_flat').
groups('xpanes:pane_flat', pane, 1).
groups('xpanes:pane_flat', cracky, 3).
groups('xpanes:pane_flat', snappy, 2).
groups('xpanes:pane_flat', oddly_breakable_by_hand, 3).
buildable_to('xpanes:pane_flat', false).
sunlight_propagates('xpanes:pane_flat', true).
walkable('xpanes:pane_flat').
diggable('xpanes:pane_flat').
damage_per_second('xpanes:pane_flat', 0).
drowning('xpanes:pane_flat', 0).
node('doors:gate_aspen_wood_open').
drop('doors:gate_aspen_wood_open', 'doors:gate_aspen_wood_closed').
groups('doors:gate_aspen_wood_open', flammable, 3).
groups('doors:gate_aspen_wood_open', not_in_creative_inventory, 1).
groups('doors:gate_aspen_wood_open', fence, 1).
groups('doors:gate_aspen_wood_open', choppy, 3).
groups('doors:gate_aspen_wood_open', oddly_breakable_by_hand, 2).
buildable_to('doors:gate_aspen_wood_open', false).
sunlight_propagates('doors:gate_aspen_wood_open', true).
walkable('doors:gate_aspen_wood_open').
diggable('doors:gate_aspen_wood_open').
damage_per_second('doors:gate_aspen_wood_open', 0).
drowning('doors:gate_aspen_wood_open', 0).
node('default:bookshelf').
groups('default:bookshelf', flammable, 3).
groups('default:bookshelf', choppy, 3).
groups('default:bookshelf', oddly_breakable_by_hand, 2).
buildable_to('default:bookshelf', false).
sunlight_propagates('default:bookshelf', false).
walkable('default:bookshelf').
diggable('default:bookshelf').
damage_per_second('default:bookshelf', 0).
drowning('default:bookshelf', 0).
node('stairs:stair_desert_sandstone_brick').
groups('stairs:stair_desert_sandstone_brick', stair, 1).
groups('stairs:stair_desert_sandstone_brick', cracky, 2).
buildable_to('stairs:stair_desert_sandstone_brick', false).
sunlight_propagates('stairs:stair_desert_sandstone_brick', false).
walkable('stairs:stair_desert_sandstone_brick').
diggable('stairs:stair_desert_sandstone_brick').
damage_per_second('stairs:stair_desert_sandstone_brick', 0).
drowning('stairs:stair_desert_sandstone_brick', 0).
node('doors:gate_junglewood_open').
drop('doors:gate_junglewood_open', 'doors:gate_junglewood_closed').
groups('doors:gate_junglewood_open', flammable, 2).
groups('doors:gate_junglewood_open', not_in_creative_inventory, 1).
groups('doors:gate_junglewood_open', fence, 1).
groups('doors:gate_junglewood_open', choppy, 2).
groups('doors:gate_junglewood_open', oddly_breakable_by_hand, 2).
buildable_to('doors:gate_junglewood_open', false).
sunlight_propagates('doors:gate_junglewood_open', true).
walkable('doors:gate_junglewood_open').
diggable('doors:gate_junglewood_open').
damage_per_second('doors:gate_junglewood_open', 0).
drowning('doors:gate_junglewood_open', 0).
node('default:fern_1').
groups('default:fern_1', flammable, 3).
groups('default:fern_1', grass, 1).
groups('default:fern_1', snappy, 3).
groups('default:fern_1', flora, 1).
groups('default:fern_1', fern, 1).
groups('default:fern_1', attached_node, 1).
buildable_to('default:fern_1', true).
sunlight_propagates('default:fern_1', true).
diggable('default:fern_1').
damage_per_second('default:fern_1', 0).
drowning('default:fern_1', 0).
node('doors:gate_acacia_wood_open').
drop('doors:gate_acacia_wood_open', 'doors:gate_acacia_wood_closed').
groups('doors:gate_acacia_wood_open', flammable, 2).
groups('doors:gate_acacia_wood_open', not_in_creative_inventory, 1).
groups('doors:gate_acacia_wood_open', fence, 1).
groups('doors:gate_acacia_wood_open', choppy, 2).
groups('doors:gate_acacia_wood_open', oddly_breakable_by_hand, 2).
buildable_to('doors:gate_acacia_wood_open', false).
sunlight_propagates('doors:gate_acacia_wood_open', true).
walkable('doors:gate_acacia_wood_open').
diggable('doors:gate_acacia_wood_open').
damage_per_second('doors:gate_acacia_wood_open', 0).
drowning('doors:gate_acacia_wood_open', 0).
node('doors:gate_acacia_wood_closed').
drop('doors:gate_acacia_wood_closed', 'doors:gate_acacia_wood_closed').
groups('doors:gate_acacia_wood_closed', flammable, 2).
groups('doors:gate_acacia_wood_closed', oddly_breakable_by_hand, 2).
groups('doors:gate_acacia_wood_closed', choppy, 2).
groups('doors:gate_acacia_wood_closed', fence, 1).
buildable_to('doors:gate_acacia_wood_closed', false).
sunlight_propagates('doors:gate_acacia_wood_closed', true).
walkable('doors:gate_acacia_wood_closed').
diggable('doors:gate_acacia_wood_closed').
damage_per_second('doors:gate_acacia_wood_closed', 0).
drowning('doors:gate_acacia_wood_closed', 0).
node(ignore).
groups(ignore, not_in_creative_inventory, 1).
buildable_to(ignore, true).
sunlight_propagates(ignore, false).
damage_per_second(ignore, 0).
drowning(ignore, 0).
node('stairs:stair_outer_tinblock').
groups('stairs:stair_outer_tinblock', stair, 1).
groups('stairs:stair_outer_tinblock', cracky, 1).
groups('stairs:stair_outer_tinblock', level, 2).
buildable_to('stairs:stair_outer_tinblock', false).
sunlight_propagates('stairs:stair_outer_tinblock', false).
walkable('stairs:stair_outer_tinblock').
diggable('stairs:stair_outer_tinblock').
damage_per_second('stairs:stair_outer_tinblock', 0).
drowning('stairs:stair_outer_tinblock', 0).
node('stairs:stair_outer_desert_sandstone_brick').
groups('stairs:stair_outer_desert_sandstone_brick', stair, 1).
groups('stairs:stair_outer_desert_sandstone_brick', cracky, 2).
buildable_to('stairs:stair_outer_desert_sandstone_brick', false).
sunlight_propagates('stairs:stair_outer_desert_sandstone_brick', false).
walkable('stairs:stair_outer_desert_sandstone_brick').
diggable('stairs:stair_outer_desert_sandstone_brick').
damage_per_second('stairs:stair_outer_desert_sandstone_brick', 0).
drowning('stairs:stair_outer_desert_sandstone_brick', 0).
node('stairs:stair_inner_copperblock').
groups('stairs:stair_inner_copperblock', stair, 1).
groups('stairs:stair_inner_copperblock', cracky, 1).
groups('stairs:stair_inner_copperblock', level, 2).
buildable_to('stairs:stair_inner_copperblock', false).
sunlight_propagates('stairs:stair_inner_copperblock', false).
walkable('stairs:stair_inner_copperblock').
diggable('stairs:stair_inner_copperblock').
damage_per_second('stairs:stair_inner_copperblock', 0).
drowning('stairs:stair_inner_copperblock', 0).
node('doors:trapdoor_open').
drop('doors:trapdoor_open', 'doors:trapdoor').
groups('doors:trapdoor_open', flammable, 2).
groups('doors:trapdoor_open', door, 1).
groups('doors:trapdoor_open', not_in_creative_inventory, 1).
groups('doors:trapdoor_open', choppy, 2).
groups('doors:trapdoor_open', oddly_breakable_by_hand, 2).
buildable_to('doors:trapdoor_open', false).
sunlight_propagates('doors:trapdoor_open', false).
walkable('doors:trapdoor_open').
diggable('doors:trapdoor_open').
damage_per_second('doors:trapdoor_open', 0).
drowning('doors:trapdoor_open', 0).
node('stairs:slab_desert_sandstone_brick').
groups('stairs:slab_desert_sandstone_brick', slab, 1).
groups('stairs:slab_desert_sandstone_brick', cracky, 2).
buildable_to('stairs:slab_desert_sandstone_brick', false).
sunlight_propagates('stairs:slab_desert_sandstone_brick', false).
walkable('stairs:slab_desert_sandstone_brick').
diggable('stairs:slab_desert_sandstone_brick').
damage_per_second('stairs:slab_desert_sandstone_brick', 0).
drowning('stairs:slab_desert_sandstone_brick', 0).
node('doors:door_obsidian_glass_c').
drop('doors:door_obsidian_glass_c', 'doors:door_obsidian_glass').
groups('doors:door_obsidian_glass_c', not_in_creative_inventory, 1).
groups('doors:door_obsidian_glass_c', cracky, 3).
groups('doors:door_obsidian_glass_c', door, 1).
groups('doors:door_obsidian_glass_c', node, 1).
buildable_to('doors:door_obsidian_glass_c', false).
sunlight_propagates('doors:door_obsidian_glass_c', true).
walkable('doors:door_obsidian_glass_c').
diggable('doors:door_obsidian_glass_c').
damage_per_second('doors:door_obsidian_glass_c', 0).
drowning('doors:door_obsidian_glass_c', 0).
node('doors:door_obsidian_glass_b').
drop('doors:door_obsidian_glass_b', 'doors:door_obsidian_glass').
groups('doors:door_obsidian_glass_b', not_in_creative_inventory, 1).
groups('doors:door_obsidian_glass_b', cracky, 3).
groups('doors:door_obsidian_glass_b', door, 1).
groups('doors:door_obsidian_glass_b', node, 1).
buildable_to('doors:door_obsidian_glass_b', false).
sunlight_propagates('doors:door_obsidian_glass_b', true).
walkable('doors:door_obsidian_glass_b').
diggable('doors:door_obsidian_glass_b').
damage_per_second('doors:door_obsidian_glass_b', 0).
drowning('doors:door_obsidian_glass_b', 0).
node('doors:door_obsidian_glass_a').
drop('doors:door_obsidian_glass_a', 'doors:door_obsidian_glass').
groups('doors:door_obsidian_glass_a', not_in_creative_inventory, 1).
groups('doors:door_obsidian_glass_a', cracky, 3).
groups('doors:door_obsidian_glass_a', door, 1).
groups('doors:door_obsidian_glass_a', node, 1).
buildable_to('doors:door_obsidian_glass_a', false).
sunlight_propagates('doors:door_obsidian_glass_a', true).
walkable('doors:door_obsidian_glass_a').
diggable('doors:door_obsidian_glass_a').
damage_per_second('doors:door_obsidian_glass_a', 0).
drowning('doors:door_obsidian_glass_a', 0).
node('doors:door_glass_d').
drop('doors:door_glass_d', 'doors:door_glass').
groups('doors:door_glass_d', door, 1).
groups('doors:door_glass_d', node, 1).
groups('doors:door_glass_d', cracky, 3).
groups('doors:door_glass_d', not_in_creative_inventory, 1).
groups('doors:door_glass_d', oddly_breakable_by_hand, 3).
buildable_to('doors:door_glass_d', false).
sunlight_propagates('doors:door_glass_d', true).
walkable('doors:door_glass_d').
diggable('doors:door_glass_d').
damage_per_second('doors:door_glass_d', 0).
drowning('doors:door_glass_d', 0).
node('stairs:stair_inner_acacia_wood').
groups('stairs:stair_inner_acacia_wood', flammable, 2).
groups('stairs:stair_inner_acacia_wood', stair, 1).
groups('stairs:stair_inner_acacia_wood', choppy, 2).
groups('stairs:stair_inner_acacia_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_inner_acacia_wood', false).
sunlight_propagates('stairs:stair_inner_acacia_wood', false).
walkable('stairs:stair_inner_acacia_wood').
diggable('stairs:stair_inner_acacia_wood').
damage_per_second('stairs:stair_inner_acacia_wood', 0).
drowning('stairs:stair_inner_acacia_wood', 0).
node('stairs:stair_outer_junglewood').
groups('stairs:stair_outer_junglewood', flammable, 2).
groups('stairs:stair_outer_junglewood', stair, 1).
groups('stairs:stair_outer_junglewood', choppy, 2).
groups('stairs:stair_outer_junglewood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_outer_junglewood', false).
sunlight_propagates('stairs:stair_outer_junglewood', false).
walkable('stairs:stair_outer_junglewood').
diggable('stairs:stair_outer_junglewood').
damage_per_second('stairs:stair_outer_junglewood', 0).
drowning('stairs:stair_outer_junglewood', 0).
node('doors:door_glass_a').
drop('doors:door_glass_a', 'doors:door_glass').
groups('doors:door_glass_a', door, 1).
groups('doors:door_glass_a', node, 1).
groups('doors:door_glass_a', cracky, 3).
groups('doors:door_glass_a', not_in_creative_inventory, 1).
groups('doors:door_glass_a', oddly_breakable_by_hand, 3).
buildable_to('doors:door_glass_a', false).
sunlight_propagates('doors:door_glass_a', true).
walkable('doors:door_glass_a').
diggable('doors:door_glass_a').
damage_per_second('doors:door_glass_a', 0).
drowning('doors:door_glass_a', 0).
node('doors:door_steel_d').
drop('doors:door_steel_d', 'doors:door_steel').
groups('doors:door_steel_d', level, 2).
groups('doors:door_steel_d', not_in_creative_inventory, 1).
groups('doors:door_steel_d', node, 1).
groups('doors:door_steel_d', cracky, 1).
groups('doors:door_steel_d', door, 1).
buildable_to('doors:door_steel_d', false).
sunlight_propagates('doors:door_steel_d', true).
walkable('doors:door_steel_d').
diggable('doors:door_steel_d').
damage_per_second('doors:door_steel_d', 0).
drowning('doors:door_steel_d', 0).
node('wool:white').
groups('wool:white', flammable, 3).
groups('wool:white', snappy, 2).
groups('wool:white', color_white, 1).
groups('wool:white', wool, 1).
groups('wool:white', choppy, 2).
groups('wool:white', oddly_breakable_by_hand, 3).
buildable_to('wool:white', false).
sunlight_propagates('wool:white', false).
walkable('wool:white').
diggable('wool:white').
damage_per_second('wool:white', 0).
drowning('wool:white', 0).
node('doors:door_steel_b').
drop('doors:door_steel_b', 'doors:door_steel').
groups('doors:door_steel_b', level, 2).
groups('doors:door_steel_b', not_in_creative_inventory, 1).
groups('doors:door_steel_b', node, 1).
groups('doors:door_steel_b', cracky, 1).
groups('doors:door_steel_b', door, 1).
buildable_to('doors:door_steel_b', false).
sunlight_propagates('doors:door_steel_b', true).
walkable('doors:door_steel_b').
diggable('doors:door_steel_b').
damage_per_second('doors:door_steel_b', 0).
drowning('doors:door_steel_b', 0).
node('stairs:stair_junglewood').
groups('stairs:stair_junglewood', flammable, 2).
groups('stairs:stair_junglewood', stair, 1).
groups('stairs:stair_junglewood', choppy, 2).
groups('stairs:stair_junglewood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_junglewood', false).
sunlight_propagates('stairs:stair_junglewood', false).
walkable('stairs:stair_junglewood').
diggable('stairs:stair_junglewood').
damage_per_second('stairs:stair_junglewood', 0).
drowning('stairs:stair_junglewood', 0).
node('default:apple').
groups('default:apple', flammable, 2).
groups('default:apple', leafdecay, 3).
groups('default:apple', dig_immediate, 3).
groups('default:apple', leafdecay_drop, 1).
groups('default:apple', fleshy, 3).
groups('default:apple', food_apple, 1).
buildable_to('default:apple', false).
sunlight_propagates('default:apple', true).
diggable('default:apple').
damage_per_second('default:apple', 0).
drowning('default:apple', 0).
node('vessels:glass_bottle').
groups('vessels:glass_bottle', vessel, 1).
groups('vessels:glass_bottle', dig_immediate, 3).
groups('vessels:glass_bottle', attached_node, 1).
buildable_to('vessels:glass_bottle', false).
sunlight_propagates('vessels:glass_bottle', false).
diggable('vessels:glass_bottle').
damage_per_second('vessels:glass_bottle', 0).
drowning('vessels:glass_bottle', 0).
node('default:fence_wood').
groups('default:fence_wood', flammable, 2).
groups('default:fence_wood', fence, 1).
groups('default:fence_wood', choppy, 2).
groups('default:fence_wood', oddly_breakable_by_hand, 2).
buildable_to('default:fence_wood', false).
sunlight_propagates('default:fence_wood', true).
walkable('default:fence_wood').
diggable('default:fence_wood').
damage_per_second('default:fence_wood', 0).
drowning('default:fence_wood', 0).
node('flowers:dandelion_yellow').
groups('flowers:dandelion_yellow', flammable, 1).
groups('flowers:dandelion_yellow', snappy, 3).
groups('flowers:dandelion_yellow', color_yellow, 1).
groups('flowers:dandelion_yellow', flora, 1).
groups('flowers:dandelion_yellow', flower, 1).
groups('flowers:dandelion_yellow', attached_node, 1).
buildable_to('flowers:dandelion_yellow', true).
sunlight_propagates('flowers:dandelion_yellow', true).
diggable('flowers:dandelion_yellow').
damage_per_second('flowers:dandelion_yellow', 0).
drowning('flowers:dandelion_yellow', 0).
node('stairs:slab_stone_block').
groups('stairs:slab_stone_block', slab, 1).
groups('stairs:slab_stone_block', cracky, 2).
buildable_to('stairs:slab_stone_block', false).
sunlight_propagates('stairs:slab_stone_block', false).
walkable('stairs:slab_stone_block').
diggable('stairs:slab_stone_block').
damage_per_second('stairs:slab_stone_block', 0).
drowning('stairs:slab_stone_block', 0).
node('default:sign_wall_wood').
groups('default:sign_wall_wood', flammable, 2).
groups('default:sign_wall_wood', oddly_breakable_by_hand, 3).
groups('default:sign_wall_wood', choppy, 2).
groups('default:sign_wall_wood', attached_node, 1).
buildable_to('default:sign_wall_wood', false).
sunlight_propagates('default:sign_wall_wood', true).
diggable('default:sign_wall_wood').
damage_per_second('default:sign_wall_wood', 0).
drowning('default:sign_wall_wood', 0).
node('doors:door_wood_a').
drop('doors:door_wood_a', 'doors:door_wood').
groups('doors:door_wood_a', flammable, 2).
groups('doors:door_wood_a', door, 1).
groups('doors:door_wood_a', node, 1).
groups('doors:door_wood_a', not_in_creative_inventory, 1).
groups('doors:door_wood_a', choppy, 2).
groups('doors:door_wood_a', oddly_breakable_by_hand, 2).
buildable_to('doors:door_wood_a', false).
sunlight_propagates('doors:door_wood_a', true).
walkable('doors:door_wood_a').
diggable('doors:door_wood_a').
damage_per_second('doors:door_wood_a', 0).
drowning('doors:door_wood_a', 0).
node('stairs:stair_copperblock').
groups('stairs:stair_copperblock', stair, 1).
groups('stairs:stair_copperblock', cracky, 1).
groups('stairs:stair_copperblock', level, 2).
buildable_to('stairs:stair_copperblock', false).
sunlight_propagates('stairs:stair_copperblock', false).
walkable('stairs:stair_copperblock').
diggable('stairs:stair_copperblock').
damage_per_second('stairs:stair_copperblock', 0).
drowning('stairs:stair_copperblock', 0).
node('stairs:stair_inner_desert_sandstone_brick').
groups('stairs:stair_inner_desert_sandstone_brick', stair, 1).
groups('stairs:stair_inner_desert_sandstone_brick', cracky, 2).
buildable_to('stairs:stair_inner_desert_sandstone_brick', false).
sunlight_propagates('stairs:stair_inner_desert_sandstone_brick', false).
walkable('stairs:stair_inner_desert_sandstone_brick').
diggable('stairs:stair_inner_desert_sandstone_brick').
damage_per_second('stairs:stair_inner_desert_sandstone_brick', 0).
drowning('stairs:stair_inner_desert_sandstone_brick', 0).
node('fireflies:firefly').
groups('fireflies:firefly', catchable, 1).
buildable_to('fireflies:firefly', true).
sunlight_propagates('fireflies:firefly', true).
diggable('fireflies:firefly').
floodable('fireflies:firefly').
damage_per_second('fireflies:firefly', 0).
drowning('fireflies:firefly', 0).
node('vessels:steel_bottle').
groups('vessels:steel_bottle', vessel, 1).
groups('vessels:steel_bottle', dig_immediate, 3).
groups('vessels:steel_bottle', attached_node, 1).
buildable_to('vessels:steel_bottle', false).
sunlight_propagates('vessels:steel_bottle', false).
diggable('vessels:steel_bottle').
damage_per_second('vessels:steel_bottle', 0).
drowning('vessels:steel_bottle', 0).
node('vessels:drinking_glass').
groups('vessels:drinking_glass', vessel, 1).
groups('vessels:drinking_glass', dig_immediate, 3).
groups('vessels:drinking_glass', attached_node, 1).
buildable_to('vessels:drinking_glass', false).
sunlight_propagates('vessels:drinking_glass', false).
diggable('vessels:drinking_glass').
damage_per_second('vessels:drinking_glass', 0).
drowning('vessels:drinking_glass', 0).
node('vessels:shelf').
groups('vessels:shelf', flammable, 3).
groups('vessels:shelf', choppy, 3).
groups('vessels:shelf', oddly_breakable_by_hand, 2).
buildable_to('vessels:shelf', false).
sunlight_propagates('vessels:shelf', false).
walkable('vessels:shelf').
diggable('vessels:shelf').
damage_per_second('vessels:shelf', 0).
drowning('vessels:shelf', 0).
node('flowers:rose').
groups('flowers:rose', flammable, 1).
groups('flowers:rose', snappy, 3).
groups('flowers:rose', color_red, 1).
groups('flowers:rose', flora, 1).
groups('flowers:rose', flower, 1).
groups('flowers:rose', attached_node, 1).
buildable_to('flowers:rose', true).
sunlight_propagates('flowers:rose', true).
diggable('flowers:rose').
damage_per_second('flowers:rose', 0).
drowning('flowers:rose', 0).
node('tnt:gunpowder_burning').
groups('tnt:gunpowder_burning', dig_immediate, 2).
groups('tnt:gunpowder_burning', not_in_creative_inventory, 1).
groups('tnt:gunpowder_burning', connect_to_raillike, 1).
groups('tnt:gunpowder_burning', attached_node, 1).
buildable_to('tnt:gunpowder_burning', false).
sunlight_propagates('tnt:gunpowder_burning', true).
diggable('tnt:gunpowder_burning').
damage_per_second('tnt:gunpowder_burning', 0).
drowning('tnt:gunpowder_burning', 0).
node('flowers:tulip').
groups('flowers:tulip', flammable, 1).
groups('flowers:tulip', color_orange, 1).
groups('flowers:tulip', snappy, 3).
groups('flowers:tulip', flora, 1).
groups('flowers:tulip', flower, 1).
groups('flowers:tulip', attached_node, 1).
buildable_to('flowers:tulip', true).
sunlight_propagates('flowers:tulip', true).
diggable('flowers:tulip').
damage_per_second('flowers:tulip', 0).
drowning('flowers:tulip', 0).
node('stairs:stair_ice').
groups('stairs:stair_ice', stair, 1).
groups('stairs:stair_ice', cracky, 3).
groups('stairs:stair_ice', slippery, 3).
groups('stairs:stair_ice', cools_lava, 1).
buildable_to('stairs:stair_ice', false).
sunlight_propagates('stairs:stair_ice', false).
walkable('stairs:stair_ice').
diggable('stairs:stair_ice').
damage_per_second('stairs:stair_ice', 0).
drowning('stairs:stair_ice', 0).
node('default:tree').
groups('default:tree', tree, 1).
groups('default:tree', flammable, 2).
groups('default:tree', choppy, 2).
groups('default:tree', oddly_breakable_by_hand, 1).
buildable_to('default:tree', false).
sunlight_propagates('default:tree', false).
walkable('default:tree').
diggable('default:tree').
damage_per_second('default:tree', 0).
drowning('default:tree', 0).
node('flowers:geranium').
groups('flowers:geranium', flammable, 1).
groups('flowers:geranium', color_blue, 1).
groups('flowers:geranium', snappy, 3).
groups('flowers:geranium', flora, 1).
groups('flowers:geranium', flower, 1).
groups('flowers:geranium', attached_node, 1).
buildable_to('flowers:geranium', true).
sunlight_propagates('flowers:geranium', true).
diggable('flowers:geranium').
damage_per_second('flowers:geranium', 0).
drowning('flowers:geranium', 0).
node('default:leaves').
groups('default:leaves', flammable, 2).
groups('default:leaves', leaves, 1).
groups('default:leaves', snappy, 3).
groups('default:leaves', leafdecay, 3).
buildable_to('default:leaves', false).
sunlight_propagates('default:leaves', false).
walkable('default:leaves').
diggable('default:leaves').
damage_per_second('default:leaves', 0).
drowning('default:leaves', 0).
node('flowers:viola').
groups('flowers:viola', flammable, 1).
groups('flowers:viola', snappy, 3).
groups('flowers:viola', flora, 1).
groups('flowers:viola', color_violet, 1).
groups('flowers:viola', flower, 1).
groups('flowers:viola', attached_node, 1).
buildable_to('flowers:viola', true).
sunlight_propagates('flowers:viola', true).
diggable('flowers:viola').
damage_per_second('flowers:viola', 0).
drowning('flowers:viola', 0).
node('tnt:gunpowder').
groups('tnt:gunpowder', dig_immediate, 2).
groups('tnt:gunpowder', flammable, 5).
groups('tnt:gunpowder', connect_to_raillike, 1).
groups('tnt:gunpowder', attached_node, 1).
buildable_to('tnt:gunpowder', false).
sunlight_propagates('tnt:gunpowder', true).
diggable('tnt:gunpowder').
damage_per_second('tnt:gunpowder', 0).
drowning('tnt:gunpowder', 0).
node('flowers:dandelion_white').
groups('flowers:dandelion_white', color_white, 1).
groups('flowers:dandelion_white', snappy, 3).
groups('flowers:dandelion_white', flammable, 1).
groups('flowers:dandelion_white', flora, 1).
groups('flowers:dandelion_white', flower, 1).
groups('flowers:dandelion_white', attached_node, 1).
buildable_to('flowers:dandelion_white', true).
sunlight_propagates('flowers:dandelion_white', true).
diggable('flowers:dandelion_white').
damage_per_second('flowers:dandelion_white', 0).
drowning('flowers:dandelion_white', 0).
node('fire:permanent_flame').
groups('fire:permanent_flame', dig_immediate, 3).
groups('fire:permanent_flame', fire, 1).
groups('fire:permanent_flame', igniter, 2).
buildable_to('fire:permanent_flame', true).
sunlight_propagates('fire:permanent_flame', true).
diggable('fire:permanent_flame').
floodable('fire:permanent_flame').
damage_per_second('fire:permanent_flame', 4).
drowning('fire:permanent_flame', 0).
node('default:fence_rail_acacia_wood').
groups('default:fence_rail_acacia_wood', flammable, 2).
groups('default:fence_rail_acacia_wood', fence, 1).
groups('default:fence_rail_acacia_wood', choppy, 2).
groups('default:fence_rail_acacia_wood', oddly_breakable_by_hand, 2).
buildable_to('default:fence_rail_acacia_wood', false).
sunlight_propagates('default:fence_rail_acacia_wood', true).
walkable('default:fence_rail_acacia_wood').
diggable('default:fence_rail_acacia_wood').
damage_per_second('default:fence_rail_acacia_wood', 0).
drowning('default:fence_rail_acacia_wood', 0).
node('butterflies:hidden_butterfly_violet').
groups('butterflies:hidden_butterfly_violet', not_in_creative_inventory, 1).
buildable_to('butterflies:hidden_butterfly_violet', false).
sunlight_propagates('butterflies:hidden_butterfly_violet', true).
floodable('butterflies:hidden_butterfly_violet').
damage_per_second('butterflies:hidden_butterfly_violet', 0).
drowning('butterflies:hidden_butterfly_violet', 0).
node('default:jungletree').
groups('default:jungletree', tree, 1).
groups('default:jungletree', flammable, 2).
groups('default:jungletree', choppy, 2).
groups('default:jungletree', oddly_breakable_by_hand, 1).
buildable_to('default:jungletree', false).
sunlight_propagates('default:jungletree', false).
walkable('default:jungletree').
diggable('default:jungletree').
damage_per_second('default:jungletree', 0).
drowning('default:jungletree', 0).
node('default:grass_2').
groups('default:grass_2', flammable, 1).
groups('default:grass_2', grass, 1).
groups('default:grass_2', not_in_creative_inventory, 1).
groups('default:grass_2', snappy, 3).
groups('default:grass_2', flora, 1).
groups('default:grass_2', normal_grass, 1).
groups('default:grass_2', attached_node, 1).
buildable_to('default:grass_2', true).
sunlight_propagates('default:grass_2', true).
diggable('default:grass_2').
damage_per_second('default:grass_2', 0).
drowning('default:grass_2', 0).
node('default:jungleleaves').
groups('default:jungleleaves', flammable, 2).
groups('default:jungleleaves', leaves, 1).
groups('default:jungleleaves', snappy, 3).
groups('default:jungleleaves', leafdecay, 3).
buildable_to('default:jungleleaves', false).
sunlight_propagates('default:jungleleaves', false).
walkable('default:jungleleaves').
diggable('default:jungleleaves').
damage_per_second('default:jungleleaves', 0).
drowning('default:jungleleaves', 0).
node('butterflies:butterfly_violet').
groups('butterflies:butterfly_violet', catchable, 1).
buildable_to('butterflies:butterfly_violet', true).
sunlight_propagates('butterflies:butterfly_violet', true).
diggable('butterflies:butterfly_violet').
floodable('butterflies:butterfly_violet').
damage_per_second('butterflies:butterfly_violet', 0).
drowning('butterflies:butterfly_violet', 0).
node('default:grass_3').
groups('default:grass_3', flammable, 1).
groups('default:grass_3', grass, 1).
groups('default:grass_3', not_in_creative_inventory, 1).
groups('default:grass_3', snappy, 3).
groups('default:grass_3', flora, 1).
groups('default:grass_3', normal_grass, 1).
groups('default:grass_3', attached_node, 1).
buildable_to('default:grass_3', true).
sunlight_propagates('default:grass_3', true).
diggable('default:grass_3').
damage_per_second('default:grass_3', 0).
drowning('default:grass_3', 0).
node('butterflies:hidden_butterfly_red').
groups('butterflies:hidden_butterfly_red', not_in_creative_inventory, 1).
buildable_to('butterflies:hidden_butterfly_red', false).
sunlight_propagates('butterflies:hidden_butterfly_red', true).
floodable('butterflies:hidden_butterfly_red').
damage_per_second('butterflies:hidden_butterfly_red', 0).
drowning('butterflies:hidden_butterfly_red', 0).
node('default:grass_4').
groups('default:grass_4', flammable, 1).
groups('default:grass_4', grass, 1).
groups('default:grass_4', not_in_creative_inventory, 1).
groups('default:grass_4', snappy, 3).
groups('default:grass_4', flora, 1).
groups('default:grass_4', normal_grass, 1).
groups('default:grass_4', attached_node, 1).
buildable_to('default:grass_4', true).
sunlight_propagates('default:grass_4', true).
diggable('default:grass_4').
damage_per_second('default:grass_4', 0).
drowning('default:grass_4', 0).
node('flowers:mushroom_brown').
groups('flowers:mushroom_brown', flammable, 1).
groups('flowers:mushroom_brown', mushroom, 1).
groups('flowers:mushroom_brown', snappy, 3).
groups('flowers:mushroom_brown', food_mushroom, 1).
groups('flowers:mushroom_brown', attached_node, 1).
buildable_to('flowers:mushroom_brown', true).
sunlight_propagates('flowers:mushroom_brown', true).
diggable('flowers:mushroom_brown').
damage_per_second('flowers:mushroom_brown', 0).
drowning('flowers:mushroom_brown', 0).
node('flowers:tulip_black').
groups('flowers:tulip_black', flammable, 1).
groups('flowers:tulip_black', snappy, 3).
groups('flowers:tulip_black', color_black, 1).
groups('flowers:tulip_black', flora, 1).
groups('flowers:tulip_black', flower, 1).
groups('flowers:tulip_black', attached_node, 1).
buildable_to('flowers:tulip_black', true).
sunlight_propagates('flowers:tulip_black', true).
diggable('flowers:tulip_black').
damage_per_second('flowers:tulip_black', 0).
drowning('flowers:tulip_black', 0).
node('default:grass_5').
groups('default:grass_5', flammable, 1).
groups('default:grass_5', grass, 1).
groups('default:grass_5', not_in_creative_inventory, 1).
groups('default:grass_5', snappy, 3).
groups('default:grass_5', flora, 1).
groups('default:grass_5', normal_grass, 1).
groups('default:grass_5', attached_node, 1).
buildable_to('default:grass_5', true).
sunlight_propagates('default:grass_5', true).
diggable('default:grass_5').
damage_per_second('default:grass_5', 0).
drowning('default:grass_5', 0).
node('stairs:stair_outer_glass').
groups('stairs:stair_outer_glass', stair, 1).
groups('stairs:stair_outer_glass', cracky, 3).
groups('stairs:stair_outer_glass', oddly_breakable_by_hand, 3).
buildable_to('stairs:stair_outer_glass', false).
sunlight_propagates('stairs:stair_outer_glass', true).
walkable('stairs:stair_outer_glass').
diggable('stairs:stair_outer_glass').
damage_per_second('stairs:stair_outer_glass', 0).
drowning('stairs:stair_outer_glass', 0).
node('stairs:slab_bronzeblock').
groups('stairs:slab_bronzeblock', cracky, 1).
groups('stairs:slab_bronzeblock', level, 2).
groups('stairs:slab_bronzeblock', slab, 1).
buildable_to('stairs:slab_bronzeblock', false).
sunlight_propagates('stairs:slab_bronzeblock', false).
walkable('stairs:slab_bronzeblock').
diggable('stairs:slab_bronzeblock').
damage_per_second('stairs:slab_bronzeblock', 0).
drowning('stairs:slab_bronzeblock', 0).
node('stairs:stair_outer_bronzeblock').
groups('stairs:stair_outer_bronzeblock', stair, 1).
groups('stairs:stair_outer_bronzeblock', cracky, 1).
groups('stairs:stair_outer_bronzeblock', level, 2).
buildable_to('stairs:stair_outer_bronzeblock', false).
sunlight_propagates('stairs:stair_outer_bronzeblock', false).
walkable('stairs:stair_outer_bronzeblock').
diggable('stairs:stair_outer_bronzeblock').
damage_per_second('stairs:stair_outer_bronzeblock', 0).
drowning('stairs:stair_outer_bronzeblock', 0).
node('stairs:stair_inner_bronzeblock').
groups('stairs:stair_inner_bronzeblock', stair, 1).
groups('stairs:stair_inner_bronzeblock', cracky, 1).
groups('stairs:stair_inner_bronzeblock', level, 2).
buildable_to('stairs:stair_inner_bronzeblock', false).
sunlight_propagates('stairs:stair_inner_bronzeblock', false).
walkable('stairs:stair_inner_bronzeblock').
diggable('stairs:stair_inner_bronzeblock').
damage_per_second('stairs:stair_inner_bronzeblock', 0).
drowning('stairs:stair_inner_bronzeblock', 0).
node('default:dry_grass_2').
drop('default:dry_grass_2', 'default:dry_grass_1').
groups('default:dry_grass_2', flammable, 3).
groups('default:dry_grass_2', grass, 1).
groups('default:dry_grass_2', not_in_creative_inventory, 1).
groups('default:dry_grass_2', snappy, 3).
groups('default:dry_grass_2', flora, 1).
groups('default:dry_grass_2', dry_grass, 1).
groups('default:dry_grass_2', attached_node, 1).
buildable_to('default:dry_grass_2', true).
sunlight_propagates('default:dry_grass_2', true).
diggable('default:dry_grass_2').
damage_per_second('default:dry_grass_2', 0).
drowning('default:dry_grass_2', 0).
node('stairs:stair_bronzeblock').
groups('stairs:stair_bronzeblock', stair, 1).
groups('stairs:stair_bronzeblock', cracky, 1).
groups('stairs:stair_bronzeblock', level, 2).
buildable_to('stairs:stair_bronzeblock', false).
sunlight_propagates('stairs:stair_bronzeblock', false).
walkable('stairs:stair_bronzeblock').
diggable('stairs:stair_bronzeblock').
damage_per_second('stairs:stair_bronzeblock', 0).
drowning('stairs:stair_bronzeblock', 0).
node('stairs:slab_copperblock').
groups('stairs:slab_copperblock', cracky, 1).
groups('stairs:slab_copperblock', level, 2).
groups('stairs:slab_copperblock', slab, 1).
buildable_to('stairs:slab_copperblock', false).
sunlight_propagates('stairs:slab_copperblock', false).
walkable('stairs:slab_copperblock').
diggable('stairs:slab_copperblock').
damage_per_second('stairs:slab_copperblock', 0).
drowning('stairs:slab_copperblock', 0).
node('default:dry_grass_3').
drop('default:dry_grass_3', 'default:dry_grass_1').
groups('default:dry_grass_3', flammable, 3).
groups('default:dry_grass_3', grass, 1).
groups('default:dry_grass_3', not_in_creative_inventory, 1).
groups('default:dry_grass_3', snappy, 3).
groups('default:dry_grass_3', flora, 1).
groups('default:dry_grass_3', dry_grass, 1).
groups('default:dry_grass_3', attached_node, 1).
buildable_to('default:dry_grass_3', true).
sunlight_propagates('default:dry_grass_3', true).
diggable('default:dry_grass_3').
damage_per_second('default:dry_grass_3', 0).
drowning('default:dry_grass_3', 0).
node('stairs:stair_sandstone_block').
groups('stairs:stair_sandstone_block', stair, 1).
groups('stairs:stair_sandstone_block', cracky, 2).
buildable_to('stairs:stair_sandstone_block', false).
sunlight_propagates('stairs:stair_sandstone_block', false).
walkable('stairs:stair_sandstone_block').
diggable('stairs:stair_sandstone_block').
damage_per_second('stairs:stair_sandstone_block', 0).
drowning('stairs:stair_sandstone_block', 0).
node('default:dry_grass_4').
drop('default:dry_grass_4', 'default:dry_grass_1').
groups('default:dry_grass_4', flammable, 3).
groups('default:dry_grass_4', grass, 1).
groups('default:dry_grass_4', not_in_creative_inventory, 1).
groups('default:dry_grass_4', snappy, 3).
groups('default:dry_grass_4', flora, 1).
groups('default:dry_grass_4', dry_grass, 1).
groups('default:dry_grass_4', attached_node, 1).
buildable_to('default:dry_grass_4', true).
sunlight_propagates('default:dry_grass_4', true).
diggable('default:dry_grass_4').
damage_per_second('default:dry_grass_4', 0).
drowning('default:dry_grass_4', 0).
node('stairs:stair_outer_copperblock').
groups('stairs:stair_outer_copperblock', stair, 1).
groups('stairs:stair_outer_copperblock', cracky, 1).
groups('stairs:stair_outer_copperblock', level, 2).
buildable_to('stairs:stair_outer_copperblock', false).
sunlight_propagates('stairs:stair_outer_copperblock', false).
walkable('stairs:stair_outer_copperblock').
diggable('stairs:stair_outer_copperblock').
damage_per_second('stairs:stair_outer_copperblock', 0).
drowning('stairs:stair_outer_copperblock', 0).
node('doors:trapdoor').
groups('doors:trapdoor', flammable, 2).
groups('doors:trapdoor', choppy, 2).
groups('doors:trapdoor', door, 1).
groups('doors:trapdoor', oddly_breakable_by_hand, 2).
buildable_to('doors:trapdoor', false).
sunlight_propagates('doors:trapdoor', false).
walkable('doors:trapdoor').
diggable('doors:trapdoor').
damage_per_second('doors:trapdoor', 0).
drowning('doors:trapdoor', 0).
node('default:dry_grass_5').
drop('default:dry_grass_5', 'default:dry_grass_1').
groups('default:dry_grass_5', flammable, 3).
groups('default:dry_grass_5', grass, 1).
groups('default:dry_grass_5', not_in_creative_inventory, 1).
groups('default:dry_grass_5', snappy, 3).
groups('default:dry_grass_5', flora, 1).
groups('default:dry_grass_5', dry_grass, 1).
groups('default:dry_grass_5', attached_node, 1).
buildable_to('default:dry_grass_5', true).
sunlight_propagates('default:dry_grass_5', true).
diggable('default:dry_grass_5').
damage_per_second('default:dry_grass_5', 0).
drowning('default:dry_grass_5', 0).
node('doors:hidden').
groups('doors:hidden', not_in_creative_inventory, 1).
buildable_to('doors:hidden', false).
sunlight_propagates('doors:hidden', true).
walkable('doors:hidden').
damage_per_second('doors:hidden', 0).
drowning('doors:hidden', 0).
node('stairs:slab_tinblock').
groups('stairs:slab_tinblock', cracky, 1).
groups('stairs:slab_tinblock', level, 2).
groups('stairs:slab_tinblock', slab, 1).
buildable_to('stairs:slab_tinblock', false).
sunlight_propagates('stairs:slab_tinblock', false).
walkable('stairs:slab_tinblock').
diggable('stairs:slab_tinblock').
damage_per_second('stairs:slab_tinblock', 0).
drowning('stairs:slab_tinblock', 0).
node('doors:trapdoor_steel').
groups('doors:trapdoor_steel', level, 2).
groups('doors:trapdoor_steel', door, 1).
groups('doors:trapdoor_steel', cracky, 1).
buildable_to('doors:trapdoor_steel', false).
sunlight_propagates('doors:trapdoor_steel', false).
walkable('doors:trapdoor_steel').
diggable('doors:trapdoor_steel').
damage_per_second('doors:trapdoor_steel', 0).
drowning('doors:trapdoor_steel', 0).
node('stairs:stair_inner_tinblock').
groups('stairs:stair_inner_tinblock', stair, 1).
groups('stairs:stair_inner_tinblock', cracky, 1).
groups('stairs:stair_inner_tinblock', level, 2).
buildable_to('stairs:stair_inner_tinblock', false).
sunlight_propagates('stairs:stair_inner_tinblock', false).
walkable('stairs:stair_inner_tinblock').
diggable('stairs:stair_inner_tinblock').
damage_per_second('stairs:stair_inner_tinblock', 0).
drowning('stairs:stair_inner_tinblock', 0).
node('default:fern_2').
drop('default:fern_2', 'default:fern_1').
groups('default:fern_2', flammable, 3).
groups('default:fern_2', grass, 1).
groups('default:fern_2', not_in_creative_inventory, 1).
groups('default:fern_2', snappy, 3).
groups('default:fern_2', flora, 1).
groups('default:fern_2', fern, 1).
groups('default:fern_2', attached_node, 1).
buildable_to('default:fern_2', true).
sunlight_propagates('default:fern_2', true).
diggable('default:fern_2').
damage_per_second('default:fern_2', 0).
drowning('default:fern_2', 0).
node('stairs:stair_tinblock').
groups('stairs:stair_tinblock', stair, 1).
groups('stairs:stair_tinblock', cracky, 1).
groups('stairs:stair_tinblock', level, 2).
buildable_to('stairs:stair_tinblock', false).
sunlight_propagates('stairs:stair_tinblock', false).
walkable('stairs:stair_tinblock').
diggable('stairs:stair_tinblock').
damage_per_second('stairs:stair_tinblock', 0).
drowning('stairs:stair_tinblock', 0).
node('stairs:stair_inner_stone_block').
groups('stairs:stair_inner_stone_block', stair, 1).
groups('stairs:stair_inner_stone_block', cracky, 2).
buildable_to('stairs:stair_inner_stone_block', false).
sunlight_propagates('stairs:stair_inner_stone_block', false).
walkable('stairs:stair_inner_stone_block').
diggable('stairs:stair_inner_stone_block').
damage_per_second('stairs:stair_inner_stone_block', 0).
drowning('stairs:stair_inner_stone_block', 0).
node('default:fern_3').
drop('default:fern_3', 'default:fern_1').
groups('default:fern_3', flammable, 3).
groups('default:fern_3', grass, 1).
groups('default:fern_3', not_in_creative_inventory, 1).
groups('default:fern_3', snappy, 3).
groups('default:fern_3', flora, 1).
groups('default:fern_3', fern, 1).
groups('default:fern_3', attached_node, 1).
buildable_to('default:fern_3', true).
sunlight_propagates('default:fern_3', true).
diggable('default:fern_3').
damage_per_second('default:fern_3', 0).
drowning('default:fern_3', 0).
node('stairs:slab_steelblock').
groups('stairs:slab_steelblock', cracky, 1).
groups('stairs:slab_steelblock', level, 2).
groups('stairs:slab_steelblock', slab, 1).
buildable_to('stairs:slab_steelblock', false).
sunlight_propagates('stairs:slab_steelblock', false).
walkable('stairs:slab_steelblock').
diggable('stairs:slab_steelblock').
damage_per_second('stairs:slab_steelblock', 0).
drowning('stairs:slab_steelblock', 0).
node('beds:bed_top').
groups('beds:bed_top', flammable, 3).
groups('beds:bed_top', not_in_creative_inventory, 1).
groups('beds:bed_top', bed, 2).
groups('beds:bed_top', choppy, 2).
groups('beds:bed_top', oddly_breakable_by_hand, 2).
buildable_to('beds:bed_top', false).
sunlight_propagates('beds:bed_top', false).
walkable('beds:bed_top').
diggable('beds:bed_top').
damage_per_second('beds:bed_top', 0).
drowning('beds:bed_top', 0).
node('beds:fancy_bed_bottom').
groups('beds:fancy_bed_bottom', flammable, 3).
groups('beds:fancy_bed_bottom', bed, 1).
groups('beds:fancy_bed_bottom', choppy, 2).
groups('beds:fancy_bed_bottom', oddly_breakable_by_hand, 2).
buildable_to('beds:fancy_bed_bottom', false).
sunlight_propagates('beds:fancy_bed_bottom', false).
walkable('beds:fancy_bed_bottom').
diggable('beds:fancy_bed_bottom').
damage_per_second('beds:fancy_bed_bottom', 0).
drowning('beds:fancy_bed_bottom', 0).
node('stairs:stair_outer_stone_block').
groups('stairs:stair_outer_stone_block', stair, 1).
groups('stairs:stair_outer_stone_block', cracky, 2).
buildable_to('stairs:stair_outer_stone_block', false).
sunlight_propagates('stairs:stair_outer_stone_block', false).
walkable('stairs:stair_outer_stone_block').
diggable('stairs:stair_outer_stone_block').
damage_per_second('stairs:stair_outer_stone_block', 0).
drowning('stairs:stair_outer_stone_block', 0).
node('default:sign_wall_steel').
groups('default:sign_wall_steel', attached_node, 1).
groups('default:sign_wall_steel', cracky, 2).
buildable_to('default:sign_wall_steel', false).
sunlight_propagates('default:sign_wall_steel', true).
diggable('default:sign_wall_steel').
damage_per_second('default:sign_wall_steel', 0).
drowning('default:sign_wall_steel', 0).
node('stairs:stair_steelblock').
groups('stairs:stair_steelblock', stair, 1).
groups('stairs:stair_steelblock', cracky, 1).
groups('stairs:stair_steelblock', level, 2).
buildable_to('stairs:stair_steelblock', false).
sunlight_propagates('stairs:stair_steelblock', false).
walkable('stairs:stair_steelblock').
diggable('stairs:stair_steelblock').
damage_per_second('stairs:stair_steelblock', 0).
drowning('stairs:stair_steelblock', 0).
node('beds:fancy_bed_top').
groups('beds:fancy_bed_top', flammable, 3).
groups('beds:fancy_bed_top', not_in_creative_inventory, 1).
groups('beds:fancy_bed_top', bed, 2).
groups('beds:fancy_bed_top', choppy, 2).
groups('beds:fancy_bed_top', oddly_breakable_by_hand, 2).
buildable_to('beds:fancy_bed_top', false).
sunlight_propagates('beds:fancy_bed_top', false).
walkable('beds:fancy_bed_top').
diggable('beds:fancy_bed_top').
damage_per_second('beds:fancy_bed_top', 0).
drowning('beds:fancy_bed_top', 0).
node('default:marram_grass_3').
drop('default:marram_grass_3', 'default:marram_grass_1').
groups('default:marram_grass_3', flammable, 3).
groups('default:marram_grass_3', grass, 1).
groups('default:marram_grass_3', marram_grass, 1).
groups('default:marram_grass_3', snappy, 3).
groups('default:marram_grass_3', flora, 1).
groups('default:marram_grass_3', not_in_creative_inventory, 1).
groups('default:marram_grass_3', attached_node, 1).
buildable_to('default:marram_grass_3', true).
sunlight_propagates('default:marram_grass_3', true).
diggable('default:marram_grass_3').
damage_per_second('default:marram_grass_3', 0).
drowning('default:marram_grass_3', 0).
node('default:river_water_source').
groups('default:river_water_source', liquid, 3).
groups('default:river_water_source', cools_lava, 1).
groups('default:river_water_source', water, 3).
buildable_to('default:river_water_source', true).
sunlight_propagates('default:river_water_source', false).
damage_per_second('default:river_water_source', 0).
drowning('default:river_water_source', 1).
node('default:sapling').
groups('default:sapling', flammable, 2).
groups('default:sapling', sapling, 1).
groups('default:sapling', snappy, 2).
groups('default:sapling', dig_immediate, 3).
groups('default:sapling', attached_node, 1).
buildable_to('default:sapling', false).
sunlight_propagates('default:sapling', true).
diggable('default:sapling').
damage_per_second('default:sapling', 0).
drowning('default:sapling', 0).
node('stairs:stair_outer_obsidian_block').
groups('stairs:stair_outer_obsidian_block', stair, 1).
groups('stairs:stair_outer_obsidian_block', cracky, 1).
groups('stairs:stair_outer_obsidian_block', level, 2).
buildable_to('stairs:stair_outer_obsidian_block', false).
sunlight_propagates('stairs:stair_outer_obsidian_block', false).
walkable('stairs:stair_outer_obsidian_block').
diggable('stairs:stair_outer_obsidian_block').
damage_per_second('stairs:stair_outer_obsidian_block', 0).
drowning('stairs:stair_outer_obsidian_block', 0).
node('stairs:stair_obsidian_block').
groups('stairs:stair_obsidian_block', stair, 1).
groups('stairs:stair_obsidian_block', cracky, 1).
groups('stairs:stair_obsidian_block', level, 2).
buildable_to('stairs:stair_obsidian_block', false).
sunlight_propagates('stairs:stair_obsidian_block', false).
walkable('stairs:stair_obsidian_block').
diggable('stairs:stair_obsidian_block').
damage_per_second('stairs:stair_obsidian_block', 0).
drowning('stairs:stair_obsidian_block', 0).
node('stairs:slab_obsidianbrick').
groups('stairs:slab_obsidianbrick', cracky, 1).
groups('stairs:slab_obsidianbrick', level, 2).
groups('stairs:slab_obsidianbrick', slab, 1).
buildable_to('stairs:slab_obsidianbrick', false).
sunlight_propagates('stairs:slab_obsidianbrick', false).
walkable('stairs:slab_obsidianbrick').
diggable('stairs:slab_obsidianbrick').
damage_per_second('stairs:slab_obsidianbrick', 0).
drowning('stairs:slab_obsidianbrick', 0).
node('stairs:stair_inner_obsidianbrick').
groups('stairs:stair_inner_obsidianbrick', stair, 1).
groups('stairs:stair_inner_obsidianbrick', cracky, 1).
groups('stairs:stair_inner_obsidianbrick', level, 2).
buildable_to('stairs:stair_inner_obsidianbrick', false).
sunlight_propagates('stairs:stair_inner_obsidianbrick', false).
walkable('stairs:stair_inner_obsidianbrick').
diggable('stairs:stair_inner_obsidianbrick').
damage_per_second('stairs:stair_inner_obsidianbrick', 0).
drowning('stairs:stair_inner_obsidianbrick', 0).
node('stairs:stair_obsidian').
groups('stairs:stair_obsidian', stair, 1).
groups('stairs:stair_obsidian', cracky, 1).
groups('stairs:stair_obsidian', level, 2).
buildable_to('stairs:stair_obsidian', false).
sunlight_propagates('stairs:stair_obsidian', false).
walkable('stairs:stair_obsidian').
diggable('stairs:stair_obsidian').
damage_per_second('stairs:stair_obsidian', 0).
drowning('stairs:stair_obsidian', 0).
node('stairs:slab_silver_sandstone').
groups('stairs:slab_silver_sandstone', crumbly, 1).
groups('stairs:slab_silver_sandstone', cracky, 3).
groups('stairs:slab_silver_sandstone', slab, 1).
buildable_to('stairs:slab_silver_sandstone', false).
sunlight_propagates('stairs:slab_silver_sandstone', false).
walkable('stairs:slab_silver_sandstone').
diggable('stairs:slab_silver_sandstone').
damage_per_second('stairs:slab_silver_sandstone', 0).
drowning('stairs:slab_silver_sandstone', 0).
node('stairs:stair_inner_desert_sandstone').
groups('stairs:stair_inner_desert_sandstone', stair, 1).
groups('stairs:stair_inner_desert_sandstone', crumbly, 1).
groups('stairs:stair_inner_desert_sandstone', cracky, 3).
buildable_to('stairs:stair_inner_desert_sandstone', false).
sunlight_propagates('stairs:stair_inner_desert_sandstone', false).
walkable('stairs:stair_inner_desert_sandstone').
diggable('stairs:stair_inner_desert_sandstone').
damage_per_second('stairs:stair_inner_desert_sandstone', 0).
drowning('stairs:stair_inner_desert_sandstone', 0).
node('default:sand').
groups('default:sand', falling_node, 1).
groups('default:sand', crumbly, 3).
groups('default:sand', sand, 1).
buildable_to('default:sand', false).
sunlight_propagates('default:sand', false).
walkable('default:sand').
diggable('default:sand').
damage_per_second('default:sand', 0).
drowning('default:sand', 0).
node('stairs:stair_inner_desert_stone').
groups('stairs:stair_inner_desert_stone', stair, 1).
groups('stairs:stair_inner_desert_stone', cracky, 3).
buildable_to('stairs:stair_inner_desert_stone', false).
sunlight_propagates('stairs:stair_inner_desert_stone', false).
walkable('stairs:stair_inner_desert_stone').
diggable('stairs:stair_inner_desert_stone').
damage_per_second('stairs:stair_inner_desert_stone', 0).
drowning('stairs:stair_inner_desert_stone', 0).
node('default:bush_leaves').
groups('default:bush_leaves', flammable, 2).
groups('default:bush_leaves', leaves, 1).
groups('default:bush_leaves', snappy, 3).
buildable_to('default:bush_leaves', false).
sunlight_propagates('default:bush_leaves', false).
walkable('default:bush_leaves').
diggable('default:bush_leaves').
damage_per_second('default:bush_leaves', 0).
drowning('default:bush_leaves', 0).
node('default:furnace').
groups('default:furnace', cracky, 2).
buildable_to('default:furnace', false).
sunlight_propagates('default:furnace', false).
walkable('default:furnace').
diggable('default:furnace').
damage_per_second('default:furnace', 0).
drowning('default:furnace', 0).
node('default:junglegrass').
groups('default:junglegrass', flammable, 1).
groups('default:junglegrass', grass, 1).
groups('default:junglegrass', snappy, 3).
groups('default:junglegrass', flora, 1).
groups('default:junglegrass', junglegrass, 1).
groups('default:junglegrass', attached_node, 1).
buildable_to('default:junglegrass', true).
sunlight_propagates('default:junglegrass', true).
diggable('default:junglegrass').
damage_per_second('default:junglegrass', 0).
drowning('default:junglegrass', 0).
node('doors:gate_wood_closed').
drop('doors:gate_wood_closed', 'doors:gate_wood_closed').
groups('doors:gate_wood_closed', flammable, 2).
groups('doors:gate_wood_closed', oddly_breakable_by_hand, 2).
groups('doors:gate_wood_closed', choppy, 2).
groups('doors:gate_wood_closed', fence, 1).
buildable_to('doors:gate_wood_closed', false).
sunlight_propagates('doors:gate_wood_closed', true).
walkable('doors:gate_wood_closed').
diggable('doors:gate_wood_closed').
damage_per_second('doors:gate_wood_closed', 0).
drowning('doors:gate_wood_closed', 0).
node('stairs:stair_outer_desert_stone').
groups('stairs:stair_outer_desert_stone', stair, 1).
groups('stairs:stair_outer_desert_stone', cracky, 3).
buildable_to('stairs:stair_outer_desert_stone', false).
sunlight_propagates('stairs:stair_outer_desert_stone', false).
walkable('stairs:stair_outer_desert_stone').
diggable('stairs:stair_outer_desert_stone').
damage_per_second('stairs:stair_outer_desert_stone', 0).
drowning('stairs:stair_outer_desert_stone', 0).
node('doors:gate_junglewood_closed').
drop('doors:gate_junglewood_closed', 'doors:gate_junglewood_closed').
groups('doors:gate_junglewood_closed', flammable, 2).
groups('doors:gate_junglewood_closed', oddly_breakable_by_hand, 2).
groups('doors:gate_junglewood_closed', choppy, 2).
groups('doors:gate_junglewood_closed', fence, 1).
buildable_to('doors:gate_junglewood_closed', false).
sunlight_propagates('doors:gate_junglewood_closed', true).
walkable('doors:gate_junglewood_closed').
diggable('doors:gate_junglewood_closed').
damage_per_second('doors:gate_junglewood_closed', 0).
drowning('doors:gate_junglewood_closed', 0).
node('doors:gate_pine_wood_closed').
drop('doors:gate_pine_wood_closed', 'doors:gate_pine_wood_closed').
groups('doors:gate_pine_wood_closed', flammable, 3).
groups('doors:gate_pine_wood_closed', oddly_breakable_by_hand, 2).
groups('doors:gate_pine_wood_closed', choppy, 3).
groups('doors:gate_pine_wood_closed', fence, 1).
buildable_to('doors:gate_pine_wood_closed', false).
sunlight_propagates('doors:gate_pine_wood_closed', true).
walkable('doors:gate_pine_wood_closed').
diggable('doors:gate_pine_wood_closed').
damage_per_second('doors:gate_pine_wood_closed', 0).
drowning('doors:gate_pine_wood_closed', 0).
node('doors:gate_aspen_wood_closed').
drop('doors:gate_aspen_wood_closed', 'doors:gate_aspen_wood_closed').
groups('doors:gate_aspen_wood_closed', flammable, 3).
groups('doors:gate_aspen_wood_closed', oddly_breakable_by_hand, 2).
groups('doors:gate_aspen_wood_closed', choppy, 3).
groups('doors:gate_aspen_wood_closed', fence, 1).
buildable_to('doors:gate_aspen_wood_closed', false).
sunlight_propagates('doors:gate_aspen_wood_closed', true).
walkable('doors:gate_aspen_wood_closed').
diggable('doors:gate_aspen_wood_closed').
damage_per_second('doors:gate_aspen_wood_closed', 0).
drowning('doors:gate_aspen_wood_closed', 0).
node('stairs:slab_desert_stone').
groups('stairs:slab_desert_stone', slab, 1).
groups('stairs:slab_desert_stone', cracky, 3).
buildable_to('stairs:slab_desert_stone', false).
sunlight_propagates('stairs:slab_desert_stone', false).
walkable('stairs:slab_desert_stone').
diggable('stairs:slab_desert_stone').
damage_per_second('stairs:slab_desert_stone', 0).
drowning('stairs:slab_desert_stone', 0).
node('stairs:stair_inner_brick').
groups('stairs:stair_inner_brick', stair, 1).
groups('stairs:stair_inner_brick', cracky, 3).
buildable_to('stairs:stair_inner_brick', false).
sunlight_propagates('stairs:stair_inner_brick', false).
walkable('stairs:stair_inner_brick').
diggable('stairs:stair_inner_brick').
damage_per_second('stairs:stair_inner_brick', 0).
drowning('stairs:stair_inner_brick', 0).
node('default:acacia_leaves').
groups('default:acacia_leaves', flammable, 2).
groups('default:acacia_leaves', leaves, 1).
groups('default:acacia_leaves', snappy, 3).
groups('default:acacia_leaves', leafdecay, 3).
buildable_to('default:acacia_leaves', false).
sunlight_propagates('default:acacia_leaves', false).
walkable('default:acacia_leaves').
diggable('default:acacia_leaves').
damage_per_second('default:acacia_leaves', 0).
drowning('default:acacia_leaves', 0).
node('default:aspen_sapling').
groups('default:aspen_sapling', flammable, 3).
groups('default:aspen_sapling', sapling, 1).
groups('default:aspen_sapling', snappy, 2).
groups('default:aspen_sapling', dig_immediate, 3).
groups('default:aspen_sapling', attached_node, 1).
buildable_to('default:aspen_sapling', false).
sunlight_propagates('default:aspen_sapling', true).
diggable('default:aspen_sapling').
damage_per_second('default:aspen_sapling', 0).
drowning('default:aspen_sapling', 0).
node('stairs:stair_desert_cobble').
groups('stairs:stair_desert_cobble', stair, 1).
groups('stairs:stair_desert_cobble', cracky, 3).
buildable_to('stairs:stair_desert_cobble', false).
sunlight_propagates('stairs:stair_desert_cobble', false).
walkable('stairs:stair_desert_cobble').
diggable('stairs:stair_desert_cobble').
damage_per_second('stairs:stair_desert_cobble', 0).
drowning('stairs:stair_desert_cobble', 0).
node('default:blueberry_bush_leaves').
groups('default:blueberry_bush_leaves', flammable, 2).
groups('default:blueberry_bush_leaves', leaves, 1).
groups('default:blueberry_bush_leaves', snappy, 3).
buildable_to('default:blueberry_bush_leaves', false).
sunlight_propagates('default:blueberry_bush_leaves', false).
walkable('default:blueberry_bush_leaves').
diggable('default:blueberry_bush_leaves').
damage_per_second('default:blueberry_bush_leaves', 0).
drowning('default:blueberry_bush_leaves', 0).
node('stairs:stair_outer_brick').
groups('stairs:stair_outer_brick', stair, 1).
groups('stairs:stair_outer_brick', cracky, 3).
buildable_to('stairs:stair_outer_brick', false).
sunlight_propagates('stairs:stair_outer_brick', false).
walkable('stairs:stair_outer_brick').
diggable('stairs:stair_outer_brick').
damage_per_second('stairs:stair_outer_brick', 0).
drowning('stairs:stair_outer_brick', 0).
node(air).
groups(air, not_in_creative_inventory, 1).
buildable_to(air, true).
sunlight_propagates(air, true).
floodable(air).
damage_per_second(air, 0).
drowning(air, 0).
node('default:stone_block').
groups('default:stone_block', stone, 1).
groups('default:stone_block', cracky, 2).
buildable_to('default:stone_block', false).
sunlight_propagates('default:stone_block', false).
walkable('default:stone_block').
diggable('default:stone_block').
damage_per_second('default:stone_block', 0).
drowning('default:stone_block', 0).
node('default:fence_rail_aspen_wood').
groups('default:fence_rail_aspen_wood', flammable, 2).
groups('default:fence_rail_aspen_wood', fence, 1).
groups('default:fence_rail_aspen_wood', choppy, 3).
groups('default:fence_rail_aspen_wood', oddly_breakable_by_hand, 2).
buildable_to('default:fence_rail_aspen_wood', false).
sunlight_propagates('default:fence_rail_aspen_wood', true).
walkable('default:fence_rail_aspen_wood').
diggable('default:fence_rail_aspen_wood').
damage_per_second('default:fence_rail_aspen_wood', 0).
drowning('default:fence_rail_aspen_wood', 0).
node('stairs:slab_desert_cobble').
groups('stairs:slab_desert_cobble', slab, 1).
groups('stairs:slab_desert_cobble', cracky, 3).
buildable_to('stairs:slab_desert_cobble', false).
sunlight_propagates('stairs:slab_desert_cobble', false).
walkable('stairs:slab_desert_cobble').
diggable('stairs:slab_desert_cobble').
damage_per_second('stairs:slab_desert_cobble', 0).
drowning('stairs:slab_desert_cobble', 0).
node('default:cloud').
groups('default:cloud', not_in_creative_inventory, 1).
buildable_to('default:cloud', false).
sunlight_propagates('default:cloud', false).
walkable('default:cloud').
diggable('default:cloud').
damage_per_second('default:cloud', 0).
drowning('default:cloud', 0).
node('default:marram_grass_2').
drop('default:marram_grass_2', 'default:marram_grass_1').
groups('default:marram_grass_2', flammable, 3).
groups('default:marram_grass_2', grass, 1).
groups('default:marram_grass_2', marram_grass, 1).
groups('default:marram_grass_2', snappy, 3).
groups('default:marram_grass_2', flora, 1).
groups('default:marram_grass_2', not_in_creative_inventory, 1).
groups('default:marram_grass_2', attached_node, 1).
buildable_to('default:marram_grass_2', true).
sunlight_propagates('default:marram_grass_2', true).
diggable('default:marram_grass_2').
damage_per_second('default:marram_grass_2', 0).
drowning('default:marram_grass_2', 0).
node('default:fence_rail_pine_wood').
groups('default:fence_rail_pine_wood', flammable, 3).
groups('default:fence_rail_pine_wood', fence, 1).
groups('default:fence_rail_pine_wood', choppy, 3).
groups('default:fence_rail_pine_wood', oddly_breakable_by_hand, 2).
buildable_to('default:fence_rail_pine_wood', false).
sunlight_propagates('default:fence_rail_pine_wood', true).
walkable('default:fence_rail_pine_wood').
diggable('default:fence_rail_pine_wood').
damage_per_second('default:fence_rail_pine_wood', 0).
drowning('default:fence_rail_pine_wood', 0).
node('stairs:stair_desert_stonebrick').
groups('stairs:stair_desert_stonebrick', stair, 1).
groups('stairs:stair_desert_stonebrick', cracky, 2).
buildable_to('stairs:stair_desert_stonebrick', false).
sunlight_propagates('stairs:stair_desert_stonebrick', false).
walkable('stairs:stair_desert_stonebrick').
diggable('stairs:stair_desert_stonebrick').
damage_per_second('stairs:stair_desert_stonebrick', 0).
drowning('stairs:stair_desert_stonebrick', 0).
node('stairs:stair_outer_desert_cobble').
groups('stairs:stair_outer_desert_cobble', stair, 1).
groups('stairs:stair_outer_desert_cobble', cracky, 3).
buildable_to('stairs:stair_outer_desert_cobble', false).
sunlight_propagates('stairs:stair_outer_desert_cobble', false).
walkable('stairs:stair_outer_desert_cobble').
diggable('stairs:stair_outer_desert_cobble').
damage_per_second('stairs:stair_outer_desert_cobble', 0).
drowning('stairs:stair_outer_desert_cobble', 0).
node('stairs:stair_aspen_wood').
groups('stairs:stair_aspen_wood', flammable, 3).
groups('stairs:stair_aspen_wood', stair, 1).
groups('stairs:stair_aspen_wood', choppy, 3).
groups('stairs:stair_aspen_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_aspen_wood', false).
sunlight_propagates('stairs:stair_aspen_wood', false).
walkable('stairs:stair_aspen_wood').
diggable('stairs:stair_aspen_wood').
damage_per_second('stairs:stair_aspen_wood', 0).
drowning('stairs:stair_aspen_wood', 0).
node('doors:door_wood_b').
drop('doors:door_wood_b', 'doors:door_wood').
groups('doors:door_wood_b', flammable, 2).
groups('doors:door_wood_b', door, 1).
groups('doors:door_wood_b', node, 1).
groups('doors:door_wood_b', not_in_creative_inventory, 1).
groups('doors:door_wood_b', choppy, 2).
groups('doors:door_wood_b', oddly_breakable_by_hand, 2).
buildable_to('doors:door_wood_b', false).
sunlight_propagates('doors:door_wood_b', true).
walkable('doors:door_wood_b').
diggable('doors:door_wood_b').
damage_per_second('doors:door_wood_b', 0).
drowning('doors:door_wood_b', 0).
node('stairs:slab_stonebrick').
groups('stairs:slab_stonebrick', slab, 1).
groups('stairs:slab_stonebrick', cracky, 2).
buildable_to('stairs:slab_stonebrick', false).
sunlight_propagates('stairs:slab_stonebrick', false).
walkable('stairs:slab_stonebrick').
diggable('stairs:slab_stonebrick').
damage_per_second('stairs:slab_stonebrick', 0).
drowning('stairs:slab_stonebrick', 0).
node('doors:door_wood_c').
drop('doors:door_wood_c', 'doors:door_wood').
groups('doors:door_wood_c', flammable, 2).
groups('doors:door_wood_c', door, 1).
groups('doors:door_wood_c', node, 1).
groups('doors:door_wood_c', not_in_creative_inventory, 1).
groups('doors:door_wood_c', choppy, 2).
groups('doors:door_wood_c', oddly_breakable_by_hand, 2).
buildable_to('doors:door_wood_c', false).
sunlight_propagates('doors:door_wood_c', true).
walkable('doors:door_wood_c').
diggable('doors:door_wood_c').
damage_per_second('doors:door_wood_c', 0).
drowning('doors:door_wood_c', 0).
node('stairs:stair_inner_desert_stonebrick').
groups('stairs:stair_inner_desert_stonebrick', stair, 1).
groups('stairs:stair_inner_desert_stonebrick', cracky, 2).
buildable_to('stairs:stair_inner_desert_stonebrick', false).
sunlight_propagates('stairs:stair_inner_desert_stonebrick', false).
walkable('stairs:stair_inner_desert_stonebrick').
diggable('stairs:stair_inner_desert_stonebrick').
damage_per_second('stairs:stair_inner_desert_stonebrick', 0).
drowning('stairs:stair_inner_desert_stonebrick', 0).
node('doors:door_wood_d').
drop('doors:door_wood_d', 'doors:door_wood').
groups('doors:door_wood_d', flammable, 2).
groups('doors:door_wood_d', door, 1).
groups('doors:door_wood_d', node, 1).
groups('doors:door_wood_d', not_in_creative_inventory, 1).
groups('doors:door_wood_d', choppy, 2).
groups('doors:door_wood_d', oddly_breakable_by_hand, 2).
buildable_to('doors:door_wood_d', false).
sunlight_propagates('doors:door_wood_d', true).
walkable('doors:door_wood_d').
diggable('doors:door_wood_d').
damage_per_second('doors:door_wood_d', 0).
drowning('doors:door_wood_d', 0).
node('default:fence_aspen_wood').
groups('default:fence_aspen_wood', flammable, 3).
groups('default:fence_aspen_wood', fence, 1).
groups('default:fence_aspen_wood', choppy, 3).
groups('default:fence_aspen_wood', oddly_breakable_by_hand, 2).
buildable_to('default:fence_aspen_wood', false).
sunlight_propagates('default:fence_aspen_wood', true).
walkable('default:fence_aspen_wood').
diggable('default:fence_aspen_wood').
damage_per_second('default:fence_aspen_wood', 0).
drowning('default:fence_aspen_wood', 0).
node('stairs:slab_aspen_wood').
groups('stairs:slab_aspen_wood', flammable, 3).
groups('stairs:slab_aspen_wood', slab, 1).
groups('stairs:slab_aspen_wood', choppy, 3).
groups('stairs:slab_aspen_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:slab_aspen_wood', false).
sunlight_propagates('stairs:slab_aspen_wood', false).
walkable('stairs:slab_aspen_wood').
diggable('stairs:slab_aspen_wood').
damage_per_second('stairs:slab_aspen_wood', 0).
drowning('stairs:slab_aspen_wood', 0).
node('walls:desertcobble').
groups('walls:desertcobble', wall, 1).
groups('walls:desertcobble', cracky, 3).
groups('walls:desertcobble', stone, 2).
buildable_to('walls:desertcobble', false).
sunlight_propagates('walls:desertcobble', false).
walkable('walls:desertcobble').
diggable('walls:desertcobble').
damage_per_second('walls:desertcobble', 0).
drowning('walls:desertcobble', 0).
node('stairs:stair_outer_desert_stonebrick').
groups('stairs:stair_outer_desert_stonebrick', stair, 1).
groups('stairs:stair_outer_desert_stonebrick', cracky, 2).
buildable_to('stairs:stair_outer_desert_stonebrick', false).
sunlight_propagates('stairs:stair_outer_desert_stonebrick', false).
walkable('stairs:stair_outer_desert_stonebrick').
diggable('stairs:stair_outer_desert_stonebrick').
damage_per_second('stairs:stair_outer_desert_stonebrick', 0).
drowning('stairs:stair_outer_desert_stonebrick', 0).
node('stairs:stair_outer_acacia_wood').
groups('stairs:stair_outer_acacia_wood', flammable, 2).
groups('stairs:stair_outer_acacia_wood', stair, 1).
groups('stairs:stair_outer_acacia_wood', choppy, 2).
groups('stairs:stair_outer_acacia_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_outer_acacia_wood', false).
sunlight_propagates('stairs:stair_outer_acacia_wood', false).
walkable('stairs:stair_outer_acacia_wood').
diggable('stairs:stair_outer_acacia_wood').
damage_per_second('stairs:stair_outer_acacia_wood', 0).
drowning('stairs:stair_outer_acacia_wood', 0).
node('fire:basic_flame').
groups('fire:basic_flame', dig_immediate, 3).
groups('fire:basic_flame', fire, 1).
groups('fire:basic_flame', not_in_creative_inventory, 1).
groups('fire:basic_flame', igniter, 2).
buildable_to('fire:basic_flame', true).
sunlight_propagates('fire:basic_flame', true).
diggable('fire:basic_flame').
floodable('fire:basic_flame').
damage_per_second('fire:basic_flame', 4).
drowning('fire:basic_flame', 0).
node('stairs:stair_acacia_wood').
groups('stairs:stair_acacia_wood', flammable, 2).
groups('stairs:stair_acacia_wood', stair, 1).
groups('stairs:stair_acacia_wood', choppy, 2).
groups('stairs:stair_acacia_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_acacia_wood', false).
sunlight_propagates('stairs:stair_acacia_wood', false).
walkable('stairs:stair_acacia_wood').
diggable('stairs:stair_acacia_wood').
damage_per_second('stairs:stair_acacia_wood', 0).
drowning('stairs:stair_acacia_wood', 0).
node('stairs:slab_desert_stonebrick').
groups('stairs:slab_desert_stonebrick', slab, 1).
groups('stairs:slab_desert_stonebrick', cracky, 2).
buildable_to('stairs:slab_desert_stonebrick', false).
sunlight_propagates('stairs:slab_desert_stonebrick', false).
walkable('stairs:slab_desert_stonebrick').
diggable('stairs:slab_desert_stonebrick').
damage_per_second('stairs:slab_desert_stonebrick', 0).
drowning('stairs:slab_desert_stonebrick', 0).
node('default:stone_with_copper').
drop('default:stone_with_copper', 'default:copper_lump').
groups('default:stone_with_copper', cracky, 2).
buildable_to('default:stone_with_copper', false).
sunlight_propagates('default:stone_with_copper', false).
walkable('default:stone_with_copper').
diggable('default:stone_with_copper').
damage_per_second('default:stone_with_copper', 0).
drowning('default:stone_with_copper', 0).
node('doors:door_steel_a').
drop('doors:door_steel_a', 'doors:door_steel').
groups('doors:door_steel_a', level, 2).
groups('doors:door_steel_a', not_in_creative_inventory, 1).
groups('doors:door_steel_a', node, 1).
groups('doors:door_steel_a', cracky, 1).
groups('doors:door_steel_a', door, 1).
buildable_to('doors:door_steel_a', false).
sunlight_propagates('doors:door_steel_a', true).
walkable('doors:door_steel_a').
diggable('doors:door_steel_a').
damage_per_second('doors:door_steel_a', 0).
drowning('doors:door_steel_a', 0).
node('stairs:slab_wood').
groups('stairs:slab_wood', flammable, 2).
groups('stairs:slab_wood', slab, 1).
groups('stairs:slab_wood', choppy, 2).
groups('stairs:slab_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:slab_wood', false).
sunlight_propagates('stairs:slab_wood', false).
walkable('stairs:slab_wood').
diggable('stairs:slab_wood').
damage_per_second('stairs:slab_wood', 0).
drowning('stairs:slab_wood', 0).
node('stairs:stair_desert_stone_block').
groups('stairs:stair_desert_stone_block', stair, 1).
groups('stairs:stair_desert_stone_block', cracky, 2).
buildable_to('stairs:stair_desert_stone_block', false).
sunlight_propagates('stairs:stair_desert_stone_block', false).
walkable('stairs:stair_desert_stone_block').
diggable('stairs:stair_desert_stone_block').
damage_per_second('stairs:stair_desert_stone_block', 0).
drowning('stairs:stair_desert_stone_block', 0).
node('default:copperblock').
groups('default:copperblock', level, 2).
groups('default:copperblock', cracky, 1).
buildable_to('default:copperblock', false).
sunlight_propagates('default:copperblock', false).
walkable('default:copperblock').
diggable('default:copperblock').
damage_per_second('default:copperblock', 0).
drowning('default:copperblock', 0).
node('doors:door_steel_c').
drop('doors:door_steel_c', 'doors:door_steel').
groups('doors:door_steel_c', level, 2).
groups('doors:door_steel_c', not_in_creative_inventory, 1).
groups('doors:door_steel_c', node, 1).
groups('doors:door_steel_c', cracky, 1).
groups('doors:door_steel_c', door, 1).
buildable_to('doors:door_steel_c', false).
sunlight_propagates('doors:door_steel_c', true).
walkable('doors:door_steel_c').
diggable('doors:door_steel_c').
damage_per_second('doors:door_steel_c', 0).
drowning('doors:door_steel_c', 0).
node('default:bronzeblock').
groups('default:bronzeblock', level, 2).
groups('default:bronzeblock', cracky, 1).
buildable_to('default:bronzeblock', false).
sunlight_propagates('default:bronzeblock', false).
walkable('default:bronzeblock').
diggable('default:bronzeblock').
damage_per_second('default:bronzeblock', 0).
drowning('default:bronzeblock', 0).
node('default:stone_with_tin').
drop('default:stone_with_tin', 'default:tin_lump').
groups('default:stone_with_tin', cracky, 2).
buildable_to('default:stone_with_tin', false).
sunlight_propagates('default:stone_with_tin', false).
walkable('default:stone_with_tin').
diggable('default:stone_with_tin').
damage_per_second('default:stone_with_tin', 0).
drowning('default:stone_with_tin', 0).
node('default:brick').
groups('default:brick', cracky, 3).
buildable_to('default:brick', false).
sunlight_propagates('default:brick', false).
walkable('default:brick').
diggable('default:brick').
damage_per_second('default:brick', 0).
drowning('default:brick', 0).
node('stairs:stair_inner_desert_stone_block').
groups('stairs:stair_inner_desert_stone_block', stair, 1).
groups('stairs:stair_inner_desert_stone_block', cracky, 2).
buildable_to('stairs:stair_inner_desert_stone_block', false).
sunlight_propagates('stairs:stair_inner_desert_stone_block', false).
walkable('stairs:stair_inner_desert_stone_block').
diggable('stairs:stair_inner_desert_stone_block').
damage_per_second('stairs:stair_inner_desert_stone_block', 0).
drowning('stairs:stair_inner_desert_stone_block', 0).
node('default:mese_post_light_junglewood').
groups('default:mese_post_light_junglewood', flammable, 2).
groups('default:mese_post_light_junglewood', choppy, 2).
groups('default:mese_post_light_junglewood', oddly_breakable_by_hand, 2).
buildable_to('default:mese_post_light_junglewood', false).
sunlight_propagates('default:mese_post_light_junglewood', true).
walkable('default:mese_post_light_junglewood').
diggable('default:mese_post_light_junglewood').
damage_per_second('default:mese_post_light_junglewood', 0).
drowning('default:mese_post_light_junglewood', 0).
node('default:tinblock').
groups('default:tinblock', level, 2).
groups('default:tinblock', cracky, 1).
buildable_to('default:tinblock', false).
sunlight_propagates('default:tinblock', false).
walkable('default:tinblock').
diggable('default:tinblock').
damage_per_second('default:tinblock', 0).
drowning('default:tinblock', 0).
node('default:mese_post_light_pine_wood').
groups('default:mese_post_light_pine_wood', flammable, 2).
groups('default:mese_post_light_pine_wood', choppy, 2).
groups('default:mese_post_light_pine_wood', oddly_breakable_by_hand, 2).
buildable_to('default:mese_post_light_pine_wood', false).
sunlight_propagates('default:mese_post_light_pine_wood', true).
walkable('default:mese_post_light_pine_wood').
diggable('default:mese_post_light_pine_wood').
damage_per_second('default:mese_post_light_pine_wood', 0).
drowning('default:mese_post_light_pine_wood', 0).
node('default:bush_stem').
groups('default:bush_stem', flammable, 2).
groups('default:bush_stem', choppy, 2).
groups('default:bush_stem', oddly_breakable_by_hand, 1).
buildable_to('default:bush_stem', false).
sunlight_propagates('default:bush_stem', true).
walkable('default:bush_stem').
diggable('default:bush_stem').
damage_per_second('default:bush_stem', 0).
drowning('default:bush_stem', 0).
node('stairs:stair_outer_desert_stone_block').
groups('stairs:stair_outer_desert_stone_block', stair, 1).
groups('stairs:stair_outer_desert_stone_block', cracky, 2).
buildable_to('stairs:stair_outer_desert_stone_block', false).
sunlight_propagates('stairs:stair_outer_desert_stone_block', false).
walkable('stairs:stair_outer_desert_stone_block').
diggable('stairs:stair_outer_desert_stone_block').
damage_per_second('stairs:stair_outer_desert_stone_block', 0).
drowning('stairs:stair_outer_desert_stone_block', 0).
node('default:dirt_with_rainforest_litter').
drop('default:dirt_with_rainforest_litter', 'default:dirt').
groups('default:dirt_with_rainforest_litter', spreading_dirt_type, 1).
groups('default:dirt_with_rainforest_litter', crumbly, 3).
groups('default:dirt_with_rainforest_litter', soil, 1).
buildable_to('default:dirt_with_rainforest_litter', false).
sunlight_propagates('default:dirt_with_rainforest_litter', false).
walkable('default:dirt_with_rainforest_litter').
diggable('default:dirt_with_rainforest_litter').
damage_per_second('default:dirt_with_rainforest_litter', 0).
drowning('default:dirt_with_rainforest_litter', 0).
node('default:torch_ceiling').
drop('default:torch_ceiling', 'default:torch').
groups('default:torch_ceiling', flammable, 1).
groups('default:torch_ceiling', torch, 1).
groups('default:torch_ceiling', not_in_creative_inventory, 1).
groups('default:torch_ceiling', dig_immediate, 3).
groups('default:torch_ceiling', choppy, 2).
groups('default:torch_ceiling', attached_node, 1).
buildable_to('default:torch_ceiling', false).
sunlight_propagates('default:torch_ceiling', true).
diggable('default:torch_ceiling').
floodable('default:torch_ceiling').
damage_per_second('default:torch_ceiling', 0).
drowning('default:torch_ceiling', 0).
node('default:stone_with_mese').
drop('default:stone_with_mese', 'default:mese_crystal').
groups('default:stone_with_mese', cracky, 1).
buildable_to('default:stone_with_mese', false).
sunlight_propagates('default:stone_with_mese', false).
walkable('default:stone_with_mese').
diggable('default:stone_with_mese').
damage_per_second('default:stone_with_mese', 0).
drowning('default:stone_with_mese', 0).
node('stairs:slab_desert_stone_block').
groups('stairs:slab_desert_stone_block', slab, 1).
groups('stairs:slab_desert_stone_block', cracky, 2).
buildable_to('stairs:slab_desert_stone_block', false).
sunlight_propagates('stairs:slab_desert_stone_block', false).
walkable('stairs:slab_desert_stone_block').
diggable('stairs:slab_desert_stone_block').
damage_per_second('stairs:slab_desert_stone_block', 0).
drowning('stairs:slab_desert_stone_block', 0).
node('doors:door_glass_b').
drop('doors:door_glass_b', 'doors:door_glass').
groups('doors:door_glass_b', door, 1).
groups('doors:door_glass_b', node, 1).
groups('doors:door_glass_b', cracky, 3).
groups('doors:door_glass_b', not_in_creative_inventory, 1).
groups('doors:door_glass_b', oddly_breakable_by_hand, 3).
buildable_to('doors:door_glass_b', false).
sunlight_propagates('doors:door_glass_b', true).
walkable('doors:door_glass_b').
diggable('doors:door_glass_b').
damage_per_second('doors:door_glass_b', 0).
drowning('doors:door_glass_b', 0).
node('default:mese').
groups('default:mese', level, 2).
groups('default:mese', cracky, 1).
buildable_to('default:mese', false).
sunlight_propagates('default:mese', false).
walkable('default:mese').
diggable('default:mese').
damage_per_second('default:mese', 0).
drowning('default:mese', 0).
node('doors:door_glass_c').
drop('doors:door_glass_c', 'doors:door_glass').
groups('doors:door_glass_c', door, 1).
groups('doors:door_glass_c', node, 1).
groups('doors:door_glass_c', cracky, 3).
groups('doors:door_glass_c', not_in_creative_inventory, 1).
groups('doors:door_glass_c', oddly_breakable_by_hand, 3).
buildable_to('doors:door_glass_c', false).
sunlight_propagates('doors:door_glass_c', true).
walkable('doors:door_glass_c').
diggable('doors:door_glass_c').
damage_per_second('doors:door_glass_c', 0).
drowning('doors:door_glass_c', 0).
node('stairs:stair_sandstone').
groups('stairs:stair_sandstone', stair, 1).
groups('stairs:stair_sandstone', crumbly, 1).
groups('stairs:stair_sandstone', cracky, 3).
buildable_to('stairs:stair_sandstone', false).
sunlight_propagates('stairs:stair_sandstone', false).
walkable('stairs:stair_sandstone').
diggable('stairs:stair_sandstone').
damage_per_second('stairs:stair_sandstone', 0).
drowning('stairs:stair_sandstone', 0).
node('default:stone_with_gold').
drop('default:stone_with_gold', 'default:gold_lump').
groups('default:stone_with_gold', cracky, 2).
buildable_to('default:stone_with_gold', false).
sunlight_propagates('default:stone_with_gold', false).
walkable('default:stone_with_gold').
diggable('default:stone_with_gold').
damage_per_second('default:stone_with_gold', 0).
drowning('default:stone_with_gold', 0).
node('stairs:stair_inner_desert_cobble').
groups('stairs:stair_inner_desert_cobble', stair, 1).
groups('stairs:stair_inner_desert_cobble', cracky, 3).
buildable_to('stairs:stair_inner_desert_cobble', false).
sunlight_propagates('stairs:stair_inner_desert_cobble', false).
walkable('stairs:stair_inner_desert_cobble').
diggable('stairs:stair_inner_desert_cobble').
damage_per_second('stairs:stair_inner_desert_cobble', 0).
drowning('stairs:stair_inner_desert_cobble', 0).
node('stairs:stair_outer_stonebrick').
groups('stairs:stair_outer_stonebrick', stair, 1).
groups('stairs:stair_outer_stonebrick', cracky, 2).
buildable_to('stairs:stair_outer_stonebrick', false).
sunlight_propagates('stairs:stair_outer_stonebrick', false).
walkable('stairs:stair_outer_stonebrick').
diggable('stairs:stair_outer_stonebrick').
damage_per_second('stairs:stair_outer_stonebrick', 0).
drowning('stairs:stair_outer_stonebrick', 0).
node('stairs:stair_stone_block').
groups('stairs:stair_stone_block', stair, 1).
groups('stairs:stair_stone_block', cracky, 2).
buildable_to('stairs:stair_stone_block', false).
sunlight_propagates('stairs:stair_stone_block', false).
walkable('stairs:stair_stone_block').
diggable('stairs:stair_stone_block').
damage_per_second('stairs:stair_stone_block', 0).
drowning('stairs:stair_stone_block', 0).
node('default:goldblock').
groups('default:goldblock', cracky, 1).
buildable_to('default:goldblock', false).
sunlight_propagates('default:goldblock', false).
walkable('default:goldblock').
diggable('default:goldblock').
damage_per_second('default:goldblock', 0).
drowning('default:goldblock', 0).
node('stairs:stair_inner_sandstone').
groups('stairs:stair_inner_sandstone', stair, 1).
groups('stairs:stair_inner_sandstone', crumbly, 1).
groups('stairs:stair_inner_sandstone', cracky, 3).
buildable_to('stairs:stair_inner_sandstone', false).
sunlight_propagates('stairs:stair_inner_sandstone', false).
walkable('stairs:stair_inner_sandstone').
diggable('stairs:stair_inner_sandstone').
damage_per_second('stairs:stair_inner_sandstone', 0).
drowning('stairs:stair_inner_sandstone', 0).
node('stairs:stair_inner_mossycobble').
groups('stairs:stair_inner_mossycobble', stair, 1).
groups('stairs:stair_inner_mossycobble', cracky, 3).
buildable_to('stairs:stair_inner_mossycobble', false).
sunlight_propagates('stairs:stair_inner_mossycobble', false).
walkable('stairs:stair_inner_mossycobble').
diggable('stairs:stair_inner_mossycobble').
damage_per_second('stairs:stair_inner_mossycobble', 0).
drowning('stairs:stair_inner_mossycobble', 0).
node('default:stone_with_diamond').
drop('default:stone_with_diamond', 'default:diamond').
groups('default:stone_with_diamond', cracky, 1).
buildable_to('default:stone_with_diamond', false).
sunlight_propagates('default:stone_with_diamond', false).
walkable('default:stone_with_diamond').
diggable('default:stone_with_diamond').
damage_per_second('default:stone_with_diamond', 0).
drowning('default:stone_with_diamond', 0).
node('stairs:stair_inner_aspen_wood').
groups('stairs:stair_inner_aspen_wood', flammable, 3).
groups('stairs:stair_inner_aspen_wood', stair, 1).
groups('stairs:stair_inner_aspen_wood', choppy, 3).
groups('stairs:stair_inner_aspen_wood', oddly_breakable_by_hand, 2).
buildable_to('stairs:stair_inner_aspen_wood', false).
sunlight_propagates('stairs:stair_inner_aspen_wood', false).
walkable('stairs:stair_inner_aspen_wood').
diggable('stairs:stair_inner_aspen_wood').
damage_per_second('stairs:stair_inner_aspen_wood', 0).
drowning('stairs:stair_inner_aspen_wood', 0).
node('xpanes:door_steel_bar_a').
drop('xpanes:door_steel_bar_a', 'xpanes:door_steel_bar').
groups('xpanes:door_steel_bar_a', level, 2).
groups('xpanes:door_steel_bar_a', not_in_creative_inventory, 1).
groups('xpanes:door_steel_bar_a', node, 1).
groups('xpanes:door_steel_bar_a', cracky, 1).
groups('xpanes:door_steel_bar_a', door, 1).
buildable_to('xpanes:door_steel_bar_a', false).
sunlight_propagates('xpanes:door_steel_bar_a', true).
walkable('xpanes:door_steel_bar_a').
diggable('xpanes:door_steel_bar_a').
damage_per_second('xpanes:door_steel_bar_a', 0).
drowning('xpanes:door_steel_bar_a', 0).
node('stairs:stair_outer_sandstone').
groups('stairs:stair_outer_sandstone', stair, 1).
groups('stairs:stair_outer_sandstone', crumbly, 1).
groups('stairs:stair_outer_sandstone', cracky, 3).
buildable_to('stairs:stair_outer_sandstone', false).
sunlight_propagates('stairs:stair_outer_sandstone', false).
walkable('stairs:stair_outer_sandstone').
diggable('stairs:stair_outer_sandstone').
damage_per_second('stairs:stair_outer_sandstone', 0).
drowning('stairs:stair_outer_sandstone', 0).
node('default:diamondblock').
groups('default:diamondblock', level, 3).
groups('default:diamondblock', cracky, 1).
buildable_to('default:diamondblock', false).
sunlight_propagates('default:diamondblock', false).
walkable('default:diamondblock').
diggable('default:diamondblock').
damage_per_second('default:diamondblock', 0).
drowning('default:diamondblock', 0).
node('stairs:stair_desert_stone').
groups('stairs:stair_desert_stone', stair, 1).
groups('stairs:stair_desert_stone', cracky, 3).
buildable_to('stairs:stair_desert_stone', false).
sunlight_propagates('stairs:stair_desert_stone', false).
walkable('stairs:stair_desert_stone').
diggable('stairs:stair_desert_stone').
damage_per_second('stairs:stair_desert_stone', 0).
drowning('stairs:stair_desert_stone', 0).
node('xpanes:door_steel_bar_c').
drop('xpanes:door_steel_bar_c', 'xpanes:door_steel_bar').
groups('xpanes:door_steel_bar_c', level, 2).
groups('xpanes:door_steel_bar_c', not_in_creative_inventory, 1).
groups('xpanes:door_steel_bar_c', node, 1).
groups('xpanes:door_steel_bar_c', cracky, 1).
groups('xpanes:door_steel_bar_c', door, 1).
buildable_to('xpanes:door_steel_bar_c', false).
sunlight_propagates('xpanes:door_steel_bar_c', true).
walkable('xpanes:door_steel_bar_c').
diggable('xpanes:door_steel_bar_c').
damage_per_second('xpanes:door_steel_bar_c', 0).
drowning('xpanes:door_steel_bar_c', 0).
node('stairs:slab_sandstone').
groups('stairs:slab_sandstone', crumbly, 1).
groups('stairs:slab_sandstone', cracky, 3).
groups('stairs:slab_sandstone', slab, 1).
buildable_to('stairs:slab_sandstone', false).
sunlight_propagates('stairs:slab_sandstone', false).
walkable('stairs:slab_sandstone').
diggable('stairs:slab_sandstone').
damage_per_second('stairs:slab_sandstone', 0).
drowning('stairs:slab_sandstone', 0).
node('xpanes:door_steel_bar_d').
drop('xpanes:door_steel_bar_d', 'xpanes:door_steel_bar').
groups('xpanes:door_steel_bar_d', level, 2).
groups('xpanes:door_steel_bar_d', not_in_creative_inventory, 1).
groups('xpanes:door_steel_bar_d', node, 1).
groups('xpanes:door_steel_bar_d', cracky, 1).
groups('xpanes:door_steel_bar_d', door, 1).
buildable_to('xpanes:door_steel_bar_d', false).
sunlight_propagates('xpanes:door_steel_bar_d', true).
walkable('xpanes:door_steel_bar_d').
diggable('xpanes:door_steel_bar_d').
damage_per_second('xpanes:door_steel_bar_d', 0).
drowning('xpanes:door_steel_bar_d', 0).
node('doors:door_obsidian_glass_d').
drop('doors:door_obsidian_glass_d', 'doors:door_obsidian_glass').
groups('doors:door_obsidian_glass_d', not_in_creative_inventory, 1).
groups('doors:door_obsidian_glass_d', cracky, 3).
groups('doors:door_obsidian_glass_d', door, 1).
groups('doors:door_obsidian_glass_d', node, 1).
buildable_to('doors:door_obsidian_glass_d', false).
sunlight_propagates('doors:door_obsidian_glass_d', true).
walkable('doors:door_obsidian_glass_d').
diggable('doors:door_obsidian_glass_d').
damage_per_second('doors:door_obsidian_glass_d', 0).
drowning('doors:door_obsidian_glass_d', 0).
node('default:large_cactus_seedling').
groups('default:large_cactus_seedling', dig_immediate, 3).
groups('default:large_cactus_seedling', choppy, 3).
groups('default:large_cactus_seedling', attached_node, 1).
buildable_to('default:large_cactus_seedling', false).
sunlight_propagates('default:large_cactus_seedling', true).
diggable('default:large_cactus_seedling').
damage_per_second('default:large_cactus_seedling', 0).
drowning('default:large_cactus_seedling', 0).
node('stairs:stair_sandstonebrick').
groups('stairs:stair_sandstonebrick', stair, 1).
groups('stairs:stair_sandstonebrick', cracky, 2).
buildable_to('stairs:stair_sandstonebrick', false).
sunlight_propagates('stairs:stair_sandstonebrick', false).
walkable('stairs:stair_sandstonebrick').
diggable('stairs:stair_sandstonebrick').
damage_per_second('stairs:stair_sandstonebrick', 0).
drowning('stairs:stair_sandstonebrick', 0).
node('default:emergent_jungle_sapling').
groups('default:emergent_jungle_sapling', flammable, 2).
groups('default:emergent_jungle_sapling', sapling, 1).
groups('default:emergent_jungle_sapling', snappy, 2).
groups('default:emergent_jungle_sapling', dig_immediate, 3).
groups('default:emergent_jungle_sapling', attached_node, 1).
buildable_to('default:emergent_jungle_sapling', false).
sunlight_propagates('default:emergent_jungle_sapling', true).
diggable('default:emergent_jungle_sapling').
damage_per_second('default:emergent_jungle_sapling', 0).
drowning('default:emergent_jungle_sapling', 0).
node('default:acacia_wood').
groups('default:acacia_wood', flammable, 2).
groups('default:acacia_wood', wood, 1).
groups('default:acacia_wood', choppy, 2).
groups('default:acacia_wood', oddly_breakable_by_hand, 2).
buildable_to('default:acacia_wood', false).
sunlight_propagates('default:acacia_wood', false).
walkable('default:acacia_wood').
diggable('default:acacia_wood').
damage_per_second('default:acacia_wood', 0).
drowning('default:acacia_wood', 0).
node('default:coral_orange').
drop('default:coral_orange', 'default:coral_skeleton').
groups('default:coral_orange', cracky, 3).
buildable_to('default:coral_orange', false).
sunlight_propagates('default:coral_orange', false).
walkable('default:coral_orange').
diggable('default:coral_orange').
damage_per_second('default:coral_orange', 0).
drowning('default:coral_orange', 0).
node('stairs:slab_sandstone_block').
groups('stairs:slab_sandstone_block', slab, 1).
groups('stairs:slab_sandstone_block', cracky, 2).
buildable_to('stairs:slab_sandstone_block', false).
sunlight_propagates('stairs:slab_sandstone_block', false).
walkable('stairs:slab_sandstone_block').
diggable('stairs:slab_sandstone_block').
damage_per_second('stairs:slab_sandstone_block', 0).
drowning('stairs:slab_sandstone_block', 0).
node('stairs:stair_outer_desert_sandstone').
groups('stairs:stair_outer_desert_sandstone', stair, 1).
groups('stairs:stair_outer_desert_sandstone', crumbly, 1).
groups('stairs:stair_outer_desert_sandstone', cracky, 3).
buildable_to('stairs:stair_outer_desert_sandstone', false).
sunlight_propagates('stairs:stair_outer_desert_sandstone', false).
walkable('stairs:stair_outer_desert_sandstone').
diggable('stairs:stair_outer_desert_sandstone').
damage_per_second('stairs:stair_outer_desert_sandstone', 0).
drowning('stairs:stair_outer_desert_sandstone', 0).
node('stairs:stair_inner_sandstonebrick').
groups('stairs:stair_inner_sandstonebrick', stair, 1).
groups('stairs:stair_inner_sandstonebrick', cracky, 2).
buildable_to('stairs:stair_inner_sandstonebrick', false).
sunlight_propagates('stairs:stair_inner_sandstonebrick', false).
walkable('stairs:stair_inner_sandstonebrick').
diggable('stairs:stair_inner_sandstonebrick').
damage_per_second('stairs:stair_inner_sandstonebrick', 0).
drowning('stairs:stair_inner_sandstonebrick', 0).
node('default:dry_shrub').
groups('default:dry_shrub', flammable, 3).
groups('default:dry_shrub', attached_node, 1).
groups('default:dry_shrub', snappy, 3).
buildable_to('default:dry_shrub', true).
sunlight_propagates('default:dry_shrub', true).
diggable('default:dry_shrub').
damage_per_second('default:dry_shrub', 0).
drowning('default:dry_shrub', 0).
node('carts:rail').
groups('carts:rail', dig_immediate, 2).
groups('carts:rail', connect_to_raillike, 2).
groups('carts:rail', rail, 1).
groups('carts:rail', attached_node, 1).
buildable_to('carts:rail', false).
sunlight_propagates('carts:rail', true).
diggable('carts:rail').
damage_per_second('carts:rail', 0).
drowning('carts:rail', 0).
node('default:coral_skeleton').
groups('default:coral_skeleton', cracky, 3).
buildable_to('default:coral_skeleton', false).
sunlight_propagates('default:coral_skeleton', false).
walkable('default:coral_skeleton').
diggable('default:coral_skeleton').
damage_per_second('default:coral_skeleton', 0).
drowning('default:coral_skeleton', 0).
node('doors:trapdoor_steel_open').
drop('doors:trapdoor_steel_open', 'doors:trapdoor_steel').
groups('doors:trapdoor_steel_open', not_in_creative_inventory, 1).
groups('doors:trapdoor_steel_open', level, 2).
groups('doors:trapdoor_steel_open', door, 1).
groups('doors:trapdoor_steel_open', cracky, 1).
buildable_to('doors:trapdoor_steel_open', false).
sunlight_propagates('doors:trapdoor_steel_open', false).
walkable('doors:trapdoor_steel_open').
diggable('doors:trapdoor_steel_open').
damage_per_second('doors:trapdoor_steel_open', 0).
drowning('doors:trapdoor_steel_open', 0).
node('stairs:stair_outer_sandstonebrick').
groups('stairs:stair_outer_sandstonebrick', stair, 1).
groups('stairs:stair_outer_sandstonebrick', cracky, 2).
buildable_to('stairs:stair_outer_sandstonebrick', false).
sunlight_propagates('stairs:stair_outer_sandstonebrick', false).
walkable('stairs:stair_outer_sandstonebrick').
diggable('stairs:stair_outer_sandstonebrick').
damage_per_second('stairs:stair_outer_sandstonebrick', 0).
drowning('stairs:stair_outer_sandstonebrick', 0).
node('default:mese_post_light').
groups('default:mese_post_light', flammable, 2).
groups('default:mese_post_light', choppy, 2).
groups('default:mese_post_light', oddly_breakable_by_hand, 2).
buildable_to('default:mese_post_light', false).
sunlight_propagates('default:mese_post_light', true).
walkable('default:mese_post_light').
diggable('default:mese_post_light').
damage_per_second('default:mese_post_light', 0).
drowning('default:mese_post_light', 0).
node('default:dirt_with_dry_grass').
drop('default:dirt_with_dry_grass', 'default:dirt').
groups('default:dirt_with_dry_grass', spreading_dirt_type, 1).
groups('default:dirt_with_dry_grass', crumbly, 3).
groups('default:dirt_with_dry_grass', soil, 1).
buildable_to('default:dirt_with_dry_grass', false).
sunlight_propagates('default:dirt_with_dry_grass', false).
walkable('default:dirt_with_dry_grass').
diggable('default:dirt_with_dry_grass').
damage_per_second('default:dirt_with_dry_grass', 0).
drowning('default:dirt_with_dry_grass', 0).
node('stairs:stair_inner_stonebrick').
groups('stairs:stair_inner_stonebrick', stair, 1).
groups('stairs:stair_inner_stonebrick', cracky, 2).
buildable_to('stairs:stair_inner_stonebrick', false).
sunlight_propagates('stairs:stair_inner_stonebrick', false).
walkable('stairs:stair_inner_stonebrick').
diggable('stairs:stair_inner_stonebrick').
damage_per_second('stairs:stair_inner_stonebrick', 0).
drowning('stairs:stair_inner_stonebrick', 0).
node('stairs:slab_sandstonebrick').
groups('stairs:slab_sandstonebrick', slab, 1).
groups('stairs:slab_sandstonebrick', cracky, 2).
buildable_to('stairs:slab_sandstonebrick', false).
sunlight_propagates('stairs:slab_sandstonebrick', false).
walkable('stairs:slab_sandstonebrick').
diggable('stairs:slab_sandstonebrick').
damage_per_second('stairs:slab_sandstonebrick', 0).
drowning('stairs:slab_sandstonebrick', 0).
node('default:grass_1').
groups('default:grass_1', flammable, 1).
groups('default:grass_1', grass, 1).
groups('default:grass_1', snappy, 3).
groups('default:grass_1', flora, 1).
groups('default:grass_1', normal_grass, 1).
groups('default:grass_1', attached_node, 1).
buildable_to('default:grass_1', true).
sunlight_propagates('default:grass_1', true).
diggable('default:grass_1').
damage_per_second('default:grass_1', 0).
drowning('default:grass_1', 0).