local function build_fact(predicate, ...)
	local args = { ... }
	local formatted_args = {}

	for i, v in ipairs(args) do
		formatted_args[i] = tostring(v)
	end

	return predicate .. "(" .. table.concat(formatted_args, ", ") .. ")."
end

local S = function(name)
	return name
end

local save_to_file = function(t, filename)
	local file = assert(io.open(filename, "w"))

	for _, value in pairs(t) do
		file:write(value .. "\n")
	end
end

core = {}
default = {}
minetest = core

default.node_sound_stone_defaults = function() end
default.node_sound_dirt_defaults = function() end
default.node_sound_gravel_defaults = function() end
default.node_sound_sand_defaults = function() end
default.node_sound_snow_defaults = function() end
default.node_sound_ice_defaults = function() end
default.node_sound_wood_defaults = function() end
default.node_sound_leaves_defaults = function() end
default.node_sound_metal_defaults = function() end
default.node_sound_glass_defaults = function() end
default.node_sound_water_defaults = function() end
default.node_sound_defaults = function() end
default.LIGHT_MAX = 0
default.get_hotbar_bg = function(a, b)
	return a
end
default.set_inventory_action_loggers = function() end
default.get_translator = function(name)
	return name
end
default.register_fence = function() end
default.register_fence_rail = function() end
default.register_mesepost = function() end
default.register_leafdecay = function() end

core.item_eat = function() end
core.get_mapgen_setting = function()
	return false
end

-- global tables, registered definition tables, not all tables are included
core.registered_items = {}
core.registered_nodes = {}
core.registered_craftitems = {}
core.registered_tools = {}

core.registered_biomes = {}

core.registered_entities = {}
core.objects_by_guid = {}
core.registered_aliases = {}
core.registered_ores = {}
core.registered_decorations = {}
core.registered_chatcommands = {}
core.registered_privileges = {}

minetest.register_item = function(name, def)
	-- skip predefined items
	if name == "unknown" or name == "air" or name == "ignore" or name == "" then
		return
	end

	local item_table = core.registered_items
	table.insert(node_table, build_fact("node", name))
end

minetest.register_node = function(name, node)
	local node_table = core.registered_nodes

	table.insert(node_table, build_fact("node", name))

	-- description is a string, so must be inside "..." in prolog
	if node.description ~= nil then
		table.insert(node_table, build_fact("description", '"' .. node.description .. '"'))
	end

	-- missing node.drop table definition, gravel, saplings...
	if (node.drop ~= nil and node.drop ~= "") and type(node.drop) ~= "table" then
		table.insert(node_table, build_fact("drop", name, node.drop))
	end

	if node.groups ~= nil then
		for key, value in pairs(node.groups) do
			table.insert(node_table, build_fact("groups", name, key, value))
		end
	end

	if node.buildable_to ~= nil then
		table.insert(node_table, build_fact("buildable_to", name, node.buildable_to))
	end

	if node.sunlight_propagates ~= nil then
		table.insert(node_table, build_fact("sunlight_propagates", name, node.sunlight_propagates))
	end

	if node.walkable ~= nil then
		table.insert(node_table, build_fact("walkable", name, node.walkable))
	end

	if node.diggable ~= nil then
		table.insert(node_table, build_fact("diggable", name, node.diggable))
	end

	if node.climbable ~= nil then
		table.insert(node_table, build_fact("climbable", name, node.climbable))
	end

	if node.floodable ~= nil then
		table.insert(node_table, build_fact("floodable", name, node.floodable))
	end

	if node.damage_per_second ~= nil then
		table.insert(node_table, build_fact("damage_per_second", name, node.damage_per_second))
	end

	if node.drowning ~= nil then
		table.insert(node_table, build_fact("drowning", name, node.drowning))
	end

	for key, value in pairs(node_table) do
		print(key, " ", value)
	end
end

-- load all .lua files from the minetest-game
dofile("mods/default/nodes.lua")

-- prolog needs the fact base to be sorted in order to improve indexing
table.sort(core.registered_nodes, function(a, b)
	return a < b
end)

save_to_file(core.registered_nodes, "./knowledge_base/nodes.pro")
