local path = core.get_modpath("craftium_kb")
local filepath = CRAFTIUM_DATA_PATH .. "/kb/nodes.pl"

local utils = dofile(path .. "/utils.lua")

local node_table = {
    ":- discontiguous node/1.",
    ":- discontiguous drop/2.",
    ":- multifile groups/3.",
    ":- discontiguous buildable_to/2.",
    ":- discontiguous sunlight_propagates/2.",
    ":- discontiguous walkable/1.",
    ":- discontiguous diggable/1.",
    ":- discontiguous climbable/1.",
    ":- discontiguous floodable/1.",
    ":- discontiguous damage_per_second/2.",
    ":- discontiguous drowning/2.",
    ""
}

for name, node in pairs(core.registered_nodes) do

	table.insert(node_table, utils.build_fact("node", name))

	-- description is a string, so must be inside "..." in prolog
  -- DELETED, idk why there are some string format errors, maybe due to the use of ()
	if node.description ~= nil and false then
		table.insert(node_table, utils.build_fact("description", '"' .. node.description .. '"'))
	end

	-- missing node.drop table definition, gravel, saplings...
	if (node.drop ~= nil and node.drop ~= "") and type(node.drop) ~= "table" then
    local parsed_item = string.match(node.drop, "^([^%s]+)")
		table.insert(node_table, utils.build_fact("drop", name, parsed_item))
	end

	if node.groups ~= nil then
		for key, value in pairs(node.groups) do
			table.insert(node_table, utils.build_fact("groups", name, key, value))
		end
	end

	if node.buildable_to ~= nil then
		table.insert(node_table, utils.build_fact("buildable_to", name, node.buildable_to))
	end

	if node.sunlight_propagates ~= nil then
		table.insert(node_table, utils.build_fact("sunlight_propagates", name, node.sunlight_propagates))
	end

	if node.walkable ~= nil and node.walkable then
		table.insert(node_table, utils.build_fact("walkable", name))
	end

	if node.diggable ~= nil and node.diggable then
		table.insert(node_table, utils.build_fact("diggable", name))
	end

	if node.climbable ~= nil and node.climbable then
		table.insert(node_table, utils.build_fact("climbable", name))
	end

	if node.floodable ~= nil and node.floodable then
		table.insert(node_table, utils.build_fact("floodable", name))
	end

	if node.damage_per_second ~= nil then
		table.insert(node_table, utils.build_fact("damage_per_second", name, node.damage_per_second))
	end

	if node.drowning ~= nil then
		table.insert(node_table, utils.build_fact("drowning", name, node.drowning))
	end
end

-- write into the prolog file
core.safe_file_write(filepath, table.concat(node_table, "\n"))
