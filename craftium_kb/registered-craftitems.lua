local path = core.get_modpath("craftium_kb")
local filepath = CRAFTIUM_DATA_PATH .. "/kb/craftitems.pl"

local utils = dofile(path .. "/utils.lua")

local craftitem_table = {
    ":- discontiguous craftitem/1.",
    ":- discontiguous groups/3.",
    ":- multifile groups/3.",
    ""
}

for name, craftitem in pairs(core.registered_craftitems) do
	-- skip predefined items
	if name == "unknown" or name == "air" or name == "ignore" or name == "" then
		return
	end

	table.insert(craftitem_table, utils.build_fact("craftitem", name))

	if craftitem.groups ~= nil then
		for key, value in pairs(craftitem.groups) do
			table.insert(craftitem_table, utils.build_fact("groups", name, key, value))
		end
	end
end

-- write into the prolog file
core.safe_file_write(filepath, table.concat(craftitem_table, "\n"))
