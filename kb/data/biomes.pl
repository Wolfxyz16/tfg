:- discontiguous biome/1.
:- discontiguous node_dust/2.
:- discontiguous node_top/2.
:- discontiguous node_filler/2.
:- discontiguous node_stone/2.
:- discontiguous node_water_top/2.
:- discontiguous node_water/2.
:- discontiguous node_riverbed/2.
:- discontiguous node_dungeon/2.
:- discontiguous node_dungeon_alt/2.
:- discontiguous node_dungeon_stair/2.
:- discontiguous y_max/2.
:- discontiguous y_min/2.
:- discontiguous heat/2.
:- discontiguous humidity/2.
:- discontiguous voronoi_weight/2.

biome(taiga_ocean).
node_dust(taiga_ocean, 'default:snow').
node_top(taiga_ocean, 'default:sand').
node_filler(taiga_ocean, 'default:sand').
node_stone(taiga_ocean, 'default:stone').
node_riverbed(taiga_ocean, 'default:sand').
node_dungeon(taiga_ocean, 'default:cobble').
node_dungeon_alt(taiga_ocean, 'default:mossycobble').
node_dungeon_stair(taiga_ocean, 'stairs:stair_cobble').
y_max(taiga_ocean, 3).
y_min(taiga_ocean, '-255').
heat(taiga_ocean, 25).
humidity(taiga_ocean, 70).
biome(taiga_under).
node_stone(taiga_under, 'default:stone').
node_dungeon(taiga_under, 'default:cobble').
node_dungeon_alt(taiga_under, 'default:mossycobble').
node_dungeon_stair(taiga_under, 'stairs:stair_cobble').
y_max(taiga_under, '-256').
y_min(taiga_under, '-31000').
heat(taiga_under, 25).
humidity(taiga_under, 70).
biome(snowy_grassland_ocean).
node_dust(snowy_grassland_ocean, 'default:snow').
node_top(snowy_grassland_ocean, 'default:sand').
node_filler(snowy_grassland_ocean, 'default:sand').
node_stone(snowy_grassland_ocean, 'default:stone').
node_riverbed(snowy_grassland_ocean, 'default:sand').
node_dungeon(snowy_grassland_ocean, 'default:cobble').
node_dungeon_alt(snowy_grassland_ocean, 'default:mossycobble').
node_dungeon_stair(snowy_grassland_ocean, 'stairs:stair_cobble').
y_max(snowy_grassland_ocean, 3).
y_min(snowy_grassland_ocean, '-255').
heat(snowy_grassland_ocean, 20).
humidity(snowy_grassland_ocean, 35).
biome(snowy_grassland_under).
node_stone(snowy_grassland_under, 'default:stone').
node_dungeon(snowy_grassland_under, 'default:cobble').
node_dungeon_alt(snowy_grassland_under, 'default:mossycobble').
node_dungeon_stair(snowy_grassland_under, 'stairs:stair_cobble').
y_max(snowy_grassland_under, '-256').
y_min(snowy_grassland_under, '-31000').
heat(snowy_grassland_under, 20).
humidity(snowy_grassland_under, 35).
biome(grassland_dunes).
node_top(grassland_dunes, 'default:sand').
node_filler(grassland_dunes, 'default:sand').
node_stone(grassland_dunes, 'default:stone').
node_riverbed(grassland_dunes, 'default:sand').
node_dungeon(grassland_dunes, 'default:cobble').
node_dungeon_alt(grassland_dunes, 'default:mossycobble').
node_dungeon_stair(grassland_dunes, 'stairs:stair_cobble').
y_max(grassland_dunes, 5).
y_min(grassland_dunes, 4).
heat(grassland_dunes, 50).
humidity(grassland_dunes, 35).
biome(grassland_ocean).
node_top(grassland_ocean, 'default:sand').
node_filler(grassland_ocean, 'default:sand').
node_stone(grassland_ocean, 'default:stone').
node_riverbed(grassland_ocean, 'default:sand').
node_dungeon(grassland_ocean, 'default:cobble').
node_dungeon_alt(grassland_ocean, 'default:mossycobble').
node_dungeon_stair(grassland_ocean, 'stairs:stair_cobble').
y_max(grassland_ocean, 3).
y_min(grassland_ocean, '-255').
heat(grassland_ocean, 50).
humidity(grassland_ocean, 35).
biome(grassland_under).
node_stone(grassland_under, 'default:stone').
node_dungeon(grassland_under, 'default:cobble').
node_dungeon_alt(grassland_under, 'default:mossycobble').
node_dungeon_stair(grassland_under, 'stairs:stair_cobble').
y_max(grassland_under, '-256').
y_min(grassland_under, '-31000').
heat(grassland_under, 50).
humidity(grassland_under, 35).
biome(coniferous_forest_dunes).
node_top(coniferous_forest_dunes, 'default:sand').
node_filler(coniferous_forest_dunes, 'default:sand').
node_stone(coniferous_forest_dunes, 'default:stone').
node_riverbed(coniferous_forest_dunes, 'default:sand').
node_dungeon(coniferous_forest_dunes, 'default:cobble').
node_dungeon_alt(coniferous_forest_dunes, 'default:mossycobble').
node_dungeon_stair(coniferous_forest_dunes, 'stairs:stair_cobble').
y_max(coniferous_forest_dunes, 5).
y_min(coniferous_forest_dunes, 4).
heat(coniferous_forest_dunes, 45).
humidity(coniferous_forest_dunes, 70).
biome(coniferous_forest_ocean).
node_top(coniferous_forest_ocean, 'default:sand').
node_filler(coniferous_forest_ocean, 'default:sand').
node_stone(coniferous_forest_ocean, 'default:stone').
node_riverbed(coniferous_forest_ocean, 'default:sand').
node_dungeon(coniferous_forest_ocean, 'default:cobble').
node_dungeon_alt(coniferous_forest_ocean, 'default:mossycobble').
node_dungeon_stair(coniferous_forest_ocean, 'stairs:stair_cobble').
y_max(coniferous_forest_ocean, 3).
y_min(coniferous_forest_ocean, '-255').
heat(coniferous_forest_ocean, 45).
humidity(coniferous_forest_ocean, 70).
biome(coniferous_forest_under).
node_stone(coniferous_forest_under, 'default:stone').
node_dungeon(coniferous_forest_under, 'default:cobble').
node_dungeon_alt(coniferous_forest_under, 'default:mossycobble').
node_dungeon_stair(coniferous_forest_under, 'stairs:stair_cobble').
y_max(coniferous_forest_under, '-256').
y_min(coniferous_forest_under, '-31000').
heat(coniferous_forest_under, 45).
humidity(coniferous_forest_under, 70).
biome(deciduous_forest_ocean).
node_top(deciduous_forest_ocean, 'default:sand').
node_filler(deciduous_forest_ocean, 'default:sand').
node_stone(deciduous_forest_ocean, 'default:stone').
node_riverbed(deciduous_forest_ocean, 'default:sand').
node_dungeon(deciduous_forest_ocean, 'default:cobble').
node_dungeon_alt(deciduous_forest_ocean, 'default:mossycobble').
node_dungeon_stair(deciduous_forest_ocean, 'stairs:stair_cobble').
y_max(deciduous_forest_ocean, '-2').
y_min(deciduous_forest_ocean, '-255').
heat(deciduous_forest_ocean, 60).
humidity(deciduous_forest_ocean, 68).
biome(deciduous_forest_under).
node_stone(deciduous_forest_under, 'default:stone').
node_dungeon(deciduous_forest_under, 'default:cobble').
node_dungeon_alt(deciduous_forest_under, 'default:mossycobble').
node_dungeon_stair(deciduous_forest_under, 'stairs:stair_cobble').
y_max(deciduous_forest_under, '-256').
y_min(deciduous_forest_under, '-31000').
heat(deciduous_forest_under, 60).
humidity(deciduous_forest_under, 68).
biome(desert_ocean).
node_top(desert_ocean, 'default:sand').
node_filler(desert_ocean, 'default:sand').
node_stone(desert_ocean, 'default:desert_stone').
node_riverbed(desert_ocean, 'default:sand').
node_dungeon(desert_ocean, 'default:desert_stone').
node_dungeon_stair(desert_ocean, 'stairs:stair_desert_stone').
y_max(desert_ocean, 3).
y_min(desert_ocean, '-255').
heat(desert_ocean, 92).
humidity(desert_ocean, 16).
biome(desert_under).
node_stone(desert_under, 'default:stone').
node_dungeon(desert_under, 'default:cobble').
node_dungeon_alt(desert_under, 'default:mossycobble').
node_dungeon_stair(desert_under, 'stairs:stair_cobble').
y_max(desert_under, '-256').
y_min(desert_under, '-31000').
heat(desert_under, 92).
humidity(desert_under, 16).
biome(sandstone_desert).
node_top(sandstone_desert, 'default:sand').
node_filler(sandstone_desert, 'default:sand').
node_stone(sandstone_desert, 'default:sandstone').
node_riverbed(sandstone_desert, 'default:sand').
node_dungeon(sandstone_desert, 'default:sandstonebrick').
node_dungeon_stair(sandstone_desert, 'stairs:stair_sandstone_block').
y_max(sandstone_desert, 31000).
y_min(sandstone_desert, 4).
heat(sandstone_desert, 60).
humidity(sandstone_desert, 0).
biome(sandstone_desert_ocean).
node_top(sandstone_desert_ocean, 'default:sand').
node_filler(sandstone_desert_ocean, 'default:sand').
node_stone(sandstone_desert_ocean, 'default:sandstone').
node_riverbed(sandstone_desert_ocean, 'default:sand').
node_dungeon(sandstone_desert_ocean, 'default:sandstonebrick').
node_dungeon_stair(sandstone_desert_ocean, 'stairs:stair_sandstone_block').
y_max(sandstone_desert_ocean, 3).
y_min(sandstone_desert_ocean, '-255').
heat(sandstone_desert_ocean, 60).
humidity(sandstone_desert_ocean, 0).
biome(sandstone_desert_under).
node_stone(sandstone_desert_under, 'default:stone').
node_dungeon(sandstone_desert_under, 'default:cobble').
node_dungeon_alt(sandstone_desert_under, 'default:mossycobble').
node_dungeon_stair(sandstone_desert_under, 'stairs:stair_cobble').
y_max(sandstone_desert_under, '-256').
y_min(sandstone_desert_under, '-31000').
heat(sandstone_desert_under, 60).
humidity(sandstone_desert_under, 0).
biome(cold_desert_ocean).
node_top(cold_desert_ocean, 'default:sand').
node_filler(cold_desert_ocean, 'default:sand').
node_stone(cold_desert_ocean, 'default:stone').
node_riverbed(cold_desert_ocean, 'default:sand').
node_dungeon(cold_desert_ocean, 'default:cobble').
node_dungeon_alt(cold_desert_ocean, 'default:mossycobble').
node_dungeon_stair(cold_desert_ocean, 'stairs:stair_cobble').
y_max(cold_desert_ocean, 3).
y_min(cold_desert_ocean, '-255').
heat(cold_desert_ocean, 40).
humidity(cold_desert_ocean, 0).
biome(cold_desert_under).
node_stone(cold_desert_under, 'default:stone').
node_dungeon(cold_desert_under, 'default:cobble').
node_dungeon_alt(cold_desert_under, 'default:mossycobble').
node_dungeon_stair(cold_desert_under, 'stairs:stair_cobble').
y_max(cold_desert_under, '-256').
y_min(cold_desert_under, '-31000').
heat(cold_desert_under, 40).
humidity(cold_desert_under, 0).
biome(savanna).
node_top(savanna, 'default:dry_dirt_with_dry_grass').
node_filler(savanna, 'default:dry_dirt').
node_stone(savanna, 'default:stone').
node_riverbed(savanna, 'default:sand').
node_dungeon(savanna, 'default:cobble').
node_dungeon_alt(savanna, 'default:mossycobble').
node_dungeon_stair(savanna, 'stairs:stair_cobble').
y_max(savanna, 31000).
y_min(savanna, 1).
heat(savanna, 89).
humidity(savanna, 42).
biome(cold_desert).
node_top(cold_desert, 'default:silver_sand').
node_filler(cold_desert, 'default:silver_sand').
node_stone(cold_desert, 'default:stone').
node_riverbed(cold_desert, 'default:sand').
node_dungeon(cold_desert, 'default:cobble').
node_dungeon_alt(cold_desert, 'default:mossycobble').
node_dungeon_stair(cold_desert, 'stairs:stair_cobble').
y_max(cold_desert, 31000).
y_min(cold_desert, 4).
heat(cold_desert, 40).
humidity(cold_desert, 0).
biome(desert).
node_top(desert, 'default:desert_sand').
node_filler(desert, 'default:desert_sand').
node_stone(desert, 'default:desert_stone').
node_riverbed(desert, 'default:sand').
node_dungeon(desert, 'default:desert_stone').
node_dungeon_stair(desert, 'stairs:stair_desert_stone').
y_max(desert, 31000).
y_min(desert, 4).
heat(desert, 92).
humidity(desert, 16).
biome(taiga).
node_dust(taiga, 'default:snow').
node_top(taiga, 'default:dirt_with_snow').
node_filler(taiga, 'default:dirt').
node_stone(taiga, 'default:stone').
node_riverbed(taiga, 'default:sand').
node_dungeon(taiga, 'default:cobble').
node_dungeon_alt(taiga, 'default:mossycobble').
node_dungeon_stair(taiga, 'stairs:stair_cobble').
y_max(taiga, 31000).
y_min(taiga, 4).
heat(taiga, 25).
humidity(taiga, 70).
biome(snowy_grassland).
node_dust(snowy_grassland, 'default:snow').
node_top(snowy_grassland, 'default:dirt_with_snow').
node_filler(snowy_grassland, 'default:dirt').
node_stone(snowy_grassland, 'default:stone').
node_riverbed(snowy_grassland, 'default:sand').
node_dungeon(snowy_grassland, 'default:cobble').
node_dungeon_alt(snowy_grassland, 'default:mossycobble').
node_dungeon_stair(snowy_grassland, 'stairs:stair_cobble').
y_max(snowy_grassland, 31000).
y_min(snowy_grassland, 4).
heat(snowy_grassland, 20).
humidity(snowy_grassland, 35).
biome(grassland).
node_top(grassland, 'default:dirt_with_grass').
node_filler(grassland, 'default:dirt').
node_stone(grassland, 'default:stone').
node_riverbed(grassland, 'default:sand').
node_dungeon(grassland, 'default:cobble').
node_dungeon_alt(grassland, 'default:mossycobble').
node_dungeon_stair(grassland, 'stairs:stair_cobble').
y_max(grassland, 31000).
y_min(grassland, 6).
heat(grassland, 50).
humidity(grassland, 35).
biome(coniferous_forest).
node_top(coniferous_forest, 'default:dirt_with_coniferous_litter').
node_filler(coniferous_forest, 'default:dirt').
node_stone(coniferous_forest, 'default:stone').
node_riverbed(coniferous_forest, 'default:sand').
node_dungeon(coniferous_forest, 'default:cobble').
node_dungeon_alt(coniferous_forest, 'default:mossycobble').
node_dungeon_stair(coniferous_forest, 'stairs:stair_cobble').
y_max(coniferous_forest, 31000).
y_min(coniferous_forest, 6).
heat(coniferous_forest, 45).
humidity(coniferous_forest, 70).
biome(deciduous_forest).
node_top(deciduous_forest, 'default:dirt_with_grass').
node_filler(deciduous_forest, 'default:dirt').
node_stone(deciduous_forest, 'default:stone').
node_riverbed(deciduous_forest, 'default:sand').
node_dungeon(deciduous_forest, 'default:cobble').
node_dungeon_alt(deciduous_forest, 'default:mossycobble').
node_dungeon_stair(deciduous_forest, 'stairs:stair_cobble').
y_max(deciduous_forest, 31000).
y_min(deciduous_forest, 1).
heat(deciduous_forest, 60).
humidity(deciduous_forest, 68).
biome(deciduous_forest_shore).
node_top(deciduous_forest_shore, 'default:dirt').
node_filler(deciduous_forest_shore, 'default:dirt').
node_stone(deciduous_forest_shore, 'default:stone').
node_riverbed(deciduous_forest_shore, 'default:sand').
node_dungeon(deciduous_forest_shore, 'default:cobble').
node_dungeon_alt(deciduous_forest_shore, 'default:mossycobble').
node_dungeon_stair(deciduous_forest_shore, 'stairs:stair_cobble').
y_max(deciduous_forest_shore, 0).
y_min(deciduous_forest_shore, '-1').
heat(deciduous_forest_shore, 60).
humidity(deciduous_forest_shore, 68).
biome(savanna_ocean).
node_top(savanna_ocean, 'default:sand').
node_filler(savanna_ocean, 'default:sand').
node_stone(savanna_ocean, 'default:stone').
node_riverbed(savanna_ocean, 'default:sand').
node_dungeon(savanna_ocean, 'default:cobble').
node_dungeon_alt(savanna_ocean, 'default:mossycobble').
node_dungeon_stair(savanna_ocean, 'stairs:stair_cobble').
y_max(savanna_ocean, '-2').
y_min(savanna_ocean, '-255').
heat(savanna_ocean, 89).
humidity(savanna_ocean, 42).
biome(savanna_under).
node_stone(savanna_under, 'default:stone').
node_dungeon(savanna_under, 'default:cobble').
node_dungeon_alt(savanna_under, 'default:mossycobble').
node_dungeon_stair(savanna_under, 'stairs:stair_cobble').
y_max(savanna_under, '-256').
y_min(savanna_under, '-31000').
heat(savanna_under, 89).
humidity(savanna_under, 42).
biome(rainforest_ocean).
node_top(rainforest_ocean, 'default:sand').
node_filler(rainforest_ocean, 'default:sand').
node_stone(rainforest_ocean, 'default:stone').
node_riverbed(rainforest_ocean, 'default:sand').
node_dungeon(rainforest_ocean, 'default:cobble').
node_dungeon_alt(rainforest_ocean, 'default:mossycobble').
node_dungeon_stair(rainforest_ocean, 'stairs:stair_cobble').
y_max(rainforest_ocean, '-2').
y_min(rainforest_ocean, '-255').
heat(rainforest_ocean, 86).
humidity(rainforest_ocean, 65).
biome(icesheet).
node_dust(icesheet, 'default:snowblock').
node_top(icesheet, 'default:snowblock').
node_filler(icesheet, 'default:snowblock').
node_stone(icesheet, 'default:cave_ice').
node_water_top(icesheet, 'default:ice').
node_riverbed(icesheet, 'default:gravel').
node_dungeon(icesheet, 'default:ice').
node_dungeon_stair(icesheet, 'stairs:stair_ice').
y_max(icesheet, 31000).
y_min(icesheet, '-8').
heat(icesheet, 0).
humidity(icesheet, 73).
biome(rainforest_under).
node_stone(rainforest_under, 'default:stone').
node_dungeon(rainforest_under, 'default:cobble').
node_dungeon_alt(rainforest_under, 'default:mossycobble').
node_dungeon_stair(rainforest_under, 'stairs:stair_cobble').
y_max(rainforest_under, '-256').
y_min(rainforest_under, '-31000').
heat(rainforest_under, 86).
humidity(rainforest_under, 65).
biome(icesheet_ocean).
node_dust(icesheet_ocean, 'default:snowblock').
node_top(icesheet_ocean, 'default:sand').
node_filler(icesheet_ocean, 'default:sand').
node_stone(icesheet_ocean, 'default:stone').
node_water_top(icesheet_ocean, 'default:ice').
node_dungeon(icesheet_ocean, 'default:cobble').
node_dungeon_alt(icesheet_ocean, 'default:mossycobble').
node_dungeon_stair(icesheet_ocean, 'stairs:stair_cobble').
y_max(icesheet_ocean, '-9').
y_min(icesheet_ocean, '-255').
heat(icesheet_ocean, 0).
humidity(icesheet_ocean, 73).
biome(rainforest_swamp).
node_top(rainforest_swamp, 'default:dirt').
node_filler(rainforest_swamp, 'default:dirt').
node_stone(rainforest_swamp, 'default:stone').
node_riverbed(rainforest_swamp, 'default:sand').
node_dungeon(rainforest_swamp, 'default:cobble').
node_dungeon_alt(rainforest_swamp, 'default:mossycobble').
node_dungeon_stair(rainforest_swamp, 'stairs:stair_cobble').
y_max(rainforest_swamp, 0).
y_min(rainforest_swamp, '-1').
heat(rainforest_swamp, 86).
humidity(rainforest_swamp, 65).
biome(rainforest).
node_top(rainforest, 'default:dirt_with_rainforest_litter').
node_filler(rainforest, 'default:dirt').
node_stone(rainforest, 'default:stone').
node_riverbed(rainforest, 'default:sand').
node_dungeon(rainforest, 'default:cobble').
node_dungeon_alt(rainforest, 'default:mossycobble').
node_dungeon_stair(rainforest, 'stairs:stair_cobble').
y_max(rainforest, 31000).
y_min(rainforest, 1).
heat(rainforest, 86).
humidity(rainforest, 65).
biome(icesheet_under).
node_stone(icesheet_under, 'default:stone').
node_dungeon(icesheet_under, 'default:cobble').
node_dungeon_alt(icesheet_under, 'default:mossycobble').
node_dungeon_stair(icesheet_under, 'stairs:stair_cobble').
y_max(icesheet_under, '-256').
y_min(icesheet_under, '-31000').
heat(icesheet_under, 0).
humidity(icesheet_under, 73).
biome(tundra_highland).
node_dust(tundra_highland, 'default:snow').
node_stone(tundra_highland, 'default:stone').
node_riverbed(tundra_highland, 'default:gravel').
node_dungeon(tundra_highland, 'default:cobble').
node_dungeon_alt(tundra_highland, 'default:mossycobble').
node_dungeon_stair(tundra_highland, 'stairs:stair_cobble').
y_max(tundra_highland, 31000).
y_min(tundra_highland, 47).
heat(tundra_highland, 0).
humidity(tundra_highland, 40).
biome(tundra).
node_top(tundra, 'default:permafrost_with_stones').
node_filler(tundra, 'default:permafrost').
node_stone(tundra, 'default:stone').
node_riverbed(tundra, 'default:gravel').
node_dungeon(tundra, 'default:cobble').
node_dungeon_alt(tundra, 'default:mossycobble').
node_dungeon_stair(tundra, 'stairs:stair_cobble').
y_max(tundra, 46).
y_min(tundra, 2).
heat(tundra, 0).
humidity(tundra, 40).
biome(savanna_shore).
node_top(savanna_shore, 'default:dry_dirt').
node_filler(savanna_shore, 'default:dry_dirt').
node_stone(savanna_shore, 'default:stone').
node_riverbed(savanna_shore, 'default:sand').
node_dungeon(savanna_shore, 'default:cobble').
node_dungeon_alt(savanna_shore, 'default:mossycobble').
node_dungeon_stair(savanna_shore, 'stairs:stair_cobble').
y_max(savanna_shore, 0).
y_min(savanna_shore, '-1').
heat(savanna_shore, 89).
humidity(savanna_shore, 42).
biome(tundra_beach).
node_top(tundra_beach, 'default:gravel').
node_filler(tundra_beach, 'default:gravel').
node_stone(tundra_beach, 'default:stone').
node_riverbed(tundra_beach, 'default:gravel').
node_dungeon(tundra_beach, 'default:cobble').
node_dungeon_alt(tundra_beach, 'default:mossycobble').
node_dungeon_stair(tundra_beach, 'stairs:stair_cobble').
y_max(tundra_beach, 1).
y_min(tundra_beach, '-3').
heat(tundra_beach, 0).
humidity(tundra_beach, 40).
biome(tundra_ocean).
node_top(tundra_ocean, 'default:sand').
node_filler(tundra_ocean, 'default:sand').
node_stone(tundra_ocean, 'default:stone').
node_riverbed(tundra_ocean, 'default:gravel').
node_dungeon(tundra_ocean, 'default:cobble').
node_dungeon_alt(tundra_ocean, 'default:mossycobble').
node_dungeon_stair(tundra_ocean, 'stairs:stair_cobble').
y_max(tundra_ocean, '-4').
y_min(tundra_ocean, '-255').
heat(tundra_ocean, 0).
humidity(tundra_ocean, 40).
biome(tundra_under).
node_stone(tundra_under, 'default:stone').
node_dungeon(tundra_under, 'default:cobble').
node_dungeon_alt(tundra_under, 'default:mossycobble').
node_dungeon_stair(tundra_under, 'stairs:stair_cobble').
y_max(tundra_under, '-256').
y_min(tundra_under, '-31000').
heat(tundra_under, 0).
humidity(tundra_under, 40).