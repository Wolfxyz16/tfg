:- discontiguous ore/5.
:- discontiguous ore_in_biome/2.
:- discontiguous ore_in_node/2.

ore(1, blob, 'default:clay', '-15', 0).
ore_in_node(1, 'default:sand').
ore(2, scatter, 'default:stone_with_mese', 1025, 31000).
ore_in_node(2, 'default:stone').
ore(3, stratum, 'default:sandstone', 3, 39).
ore_in_biome(3, desert).
ore_in_node(3, 'default:desert_stone').
ore(4, scatter, 'default:mese', '-31000', '-4096').
ore_in_node(4, 'default:stone').
ore(5, scatter, 'default:stone_with_copper', '-127', '-64').
ore_in_node(5, 'default:stone').
ore(6, scatter, 'default:stone_with_iron', 1025, 31000).
ore_in_node(6, 'default:stone').
ore(7, stratum, 'default:desert_sandstone', 6, 42).
ore_in_biome(7, desert).
ore_in_node(7, 'default:desert_stone').
ore(8, scatter, 'default:stone_with_tin', '-31000', '-128').
ore_in_node(8, 'default:stone').
ore(9, blob, 'default:dirt', '-31', 31000).
ore_in_biome(9, taiga).
ore_in_biome(9, snowy_grassland).
ore_in_biome(9, grassland).
ore_in_biome(9, coniferous_forest).
ore_in_biome(9, deciduous_forest).
ore_in_biome(9, deciduous_forest_shore).
ore_in_biome(9, rainforest).
ore_in_biome(9, rainforest_swamp).
ore_in_node(9, 'default:stone').
ore(10, scatter, 'default:stone_with_coal', 1025, 31000).
ore_in_node(10, 'default:stone').
ore(11, scatter, 'default:stone_with_gold', 1025, 31000).
ore_in_node(11, 'default:stone').
ore(12, scatter, 'default:stone_with_diamond', '-2047', '-1024').
ore_in_node(12, 'default:stone').
ore(13, blob, 'default:gravel', '-31000', 31000).
ore_in_node(13, 'default:stone').
ore(14, blob, 'default:silver_sand', '-31000', 31000).
ore_in_node(14, 'default:stone').
ore(15, stratum, 'default:silver_sandstone', 6, 42).
ore_in_biome(15, cold_desert).
ore_in_node(15, 'default:stone').