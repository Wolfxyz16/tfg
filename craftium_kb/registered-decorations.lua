local path = core.get_modpath("craftium_kb")
local filepath = CRAFTIUM_DATA_PATH .. "/kb/decorations.pl"

local utils = dofile(path .. "/utils.lua")

local decoration_table = {
	":- discontiguous decoration/1.",
	":- discontiguous deco_node/2.",
	":- discontiguous decoration_biome/2.",
	":- discontiguous decoration_placed_on/2.",
	":- discontiguous decoration_spawn_by/2.",
	":- discontiguous deco_type/2.",
	":- discontiguous schematic/2.",
	"",
}

local deco_id = 1

for _, deco in pairs(core.registered_decorations) do
	table.insert(decoration_table, utils.build_fact("decoration", deco_id))
	table.insert(decoration_table, utils.build_fact("deco_type", deco_id, deco.deco_type))

	if type(deco.decoration) == "table" then
		for _, value in ipairs(deco.decoration) do
			table.insert(decoration_table, utils.build_fact("deco_node", deco_id, value))
		end
	elseif type(deco.decoration) == "string" then
		table.insert(decoration_table, utils.build_fact("deco_node", deco_id, deco.decoration))
	end

	if deco.biomes ~= nil and type(deco.biomes) == "table" then
		for _, value in pairs(deco.biomes) do
			table.insert(decoration_table, utils.build_fact("decoration_biome", deco_id, value))
		end
	elseif deco.biomes ~= nil then
		table.insert(decoration_table, utils.build_fact("decoration_biome", deco_id, deco.biomes))
	end

	if deco.place_on ~= nil then
		if type(deco.place_on) == "table" then
			for _, surface in pairs(deco.place_on) do
				table.insert(decoration_table, utils.build_fact("decoration_placed_on", deco_id, surface))
			end
		else
			table.insert(decoration_table, utils.build_fact("decoration_placed_on", deco_id, deco.place_on))
		end
	end

	if deco.spawn_by ~= nil then
		if type(deco.spawn_by) == "table" then
			for _, neighbor in pairs(deco.spawn_by) do
				table.insert(decoration_table, utils.build_fact("decoration_spawn_by", deco_id, neighbor))
			end
		else
			table.insert(decoration_table, utils.build_fact("decoration_spawn_by", deco_id, deco.spawn_by))
		end
	end

	if deco.deco_type == "schematic" then
		local schematic = core.read_schematic(deco.schematic, {})
		local control = {}
		for _, value in ipairs(schematic.data) do
			if not control[value.name] and value.name ~= "air" then
				table.insert(decoration_table, utils.build_fact("deco_node", deco_id, value.name))
				control[value.name] = true
			end
		end
	end

	deco_id = deco_id + 1
end

-- write into the prolog file
core.safe_file_write(filepath, table.concat(decoration_table, "\n"))
