-- craftium_kb/init.lua
CRAFTIUM_DATA_PATH = core.get_mod_data_path()

local path = core.get_modpath("craftium_kb")
local kb_path = CRAFTIUM_DATA_PATH .. "/kb"

-- create a main file importing all kb submodules
local main = {
	":- consult('nodes.pl').",
	":- consult('biomes.pl').",
	":- consult('items.pl').",
	":- consult('craftitems.pl').",
	":- consult('tools.pl').",
	":- consult('ores.pl').",
	":- consult('decorations.pl').",
	":- consult('crafts.pl').",
	"",
}

core.register_on_mods_loaded(function()
	core.log("action", "mods loaded, creating knowledge base")

	if not core.path_exists(kb_path) then
		core.mkdir(kb_path)
	end

	core.safe_file_write(kb_path .. "/main.pl", table.concat(main, "\n"))

	dofile(path .. "/registered-nodes.lua")
	dofile(path .. "/registered-biomes.lua")
	dofile(path .. "/registered-items.lua")
	dofile(path .. "/registered-craftitems.lua")
	dofile(path .. "/registered-tools.lua")
	dofile(path .. "/registered-ores.lua")
	dofile(path .. "/registered-decorations.lua")

	core.log("action", "exiting")
	core.request_shutdown("", false, 0)
end)
