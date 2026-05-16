local path = core.get_modpath("craftium_kb")
local filepath = CRAFTIUM_DATA_PATH .. "/kb/items.pl"

local utils = dofile(path .. "/utils.lua")

local item_table = {
    ":- discontiguous item/1.",
    ""
}

for name, _ in pairs(core.registered_items) do
	-- skip predefined items
	if name == "unknown" or name == "air" or name == "ignore" or name == "" then
		return
	end

	table.insert(item_table, utils.build_fact("item", name))
end

-- write into the prolog file
core.safe_file_write(filepath, table.concat(item_table, "\n"))
