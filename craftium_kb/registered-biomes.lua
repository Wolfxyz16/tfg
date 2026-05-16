local path = core.get_modpath("craftium_kb")
local filepath = CRAFTIUM_DATA_PATH .. "/kb/biomes.pl"

local utils = dofile(path .. "/utils.lua")

local biome_table = {
    ":- discontiguous biome/1.",
    ":- discontiguous node_dust/2.",
    ":- discontiguous node_top/2.",
    ":- discontiguous node_filler/2.",
    ":- discontiguous node_stone/2.",
    ":- discontiguous node_water_top/2.",
    ":- discontiguous node_water/2.",
    ":- discontiguous node_riverbed/2.",
    ":- discontiguous node_dungeon/2.",
    ":- discontiguous node_dungeon_alt/2.",
    ":- discontiguous node_dungeon_stair/2.",
    ":- discontiguous y_max/2.",
    ":- discontiguous y_min/2.",
    ":- discontiguous heat/2.",
    ":- discontiguous humidity/2.",
    ":- discontiguous voronoi_weight/2.",
    ""
}

for name, biome in pairs(core.registered_biomes) do

  name = string.lower(name)

	table.insert(biome_table, utils.build_fact("biome", name))

	if biome.node_dust ~= nil then
		table.insert(biome_table, utils.build_fact("node_dust", name, biome.node_dust))
	end

	if biome.node_top ~= nil then
		table.insert(biome_table, utils.build_fact("node_top", name, biome.node_top))
	end

	if biome.node_filler ~= nil then
		table.insert(biome_table, utils.build_fact("node_filler", name, biome.node_filler))
	end

	if biome.node_stone ~= nil then
		table.insert(biome_table, utils.build_fact("node_stone", name, biome.node_stone))
	end

	if biome.node_water_top ~= nil then
		table.insert(biome_table, utils.build_fact("node_water_top", name, biome.node_water_top))
	end

	if biome.node_water ~= nil then
		table.insert(biome_table, utils.build_fact("node_water", name, biome.node_water))
	end

	if biome.node_riverbed ~= nil then
		table.insert(biome_table, utils.build_fact("node_riverbed", name, biome.node_riverbed))
	end

	if biome.node_dungeon ~= nil then
		table.insert(biome_table, utils.build_fact("node_dungeon", name, biome.node_dungeon))
	end

	if biome.node_dungeon_alt ~= nil then
		table.insert(biome_table, utils.build_fact("node_dungeon_alt", name, biome.node_dungeon_alt))
	end

	if biome.node_dungeon_stair ~= nil then
		table.insert(biome_table, utils.build_fact("node_dungeon_stair", name, biome.node_dungeon_stair))
	end

	if biome.y_max ~= nil then
		table.insert(biome_table, utils.build_fact("y_max", name, biome.y_max))
	end

	if biome.y_min ~= nil then
		table.insert(biome_table, utils.build_fact("y_min", name, biome.y_min))
	end

	if biome.heat_point ~= nil then
		table.insert(biome_table, utils.build_fact("heat", name, biome.heat_point))
	end

	if biome.humidity_point ~= nil then
		table.insert(biome_table, utils.build_fact("humidity", name, biome.humidity_point))
	end

	if biome.weight ~= nil then
		table.insert(biome_table, utils.build_fact("voronoi_weight", name, biome.weight))
	end
end

-- write into the prolog file
core.safe_file_write(filepath, table.concat(biome_table, "\n"))
