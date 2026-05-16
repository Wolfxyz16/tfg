local path = core.get_modpath("craftium_kb")
local filepath = CRAFTIUM_DATA_PATH .. "/kb/ores.pl"

local utils = dofile(path .. "/utils.lua")

local ore_table = {
    ":- discontiguous ore/5.",
    ":- discontiguous ore_in_biome/2.",
    ":- discontiguous ore_in_node/2.",
    ""
}

local id_ore = 1

for _, ore in pairs(core.registered_ores) do
    if ore.ore ~= nil and ore.ore ~= "" then
        local o_type = ore.ore_type or "scatter"
        local y_min = ore.y_min or -31000
        local y_max = ore.y_max or 31000

        table.insert(ore_table, utils.build_fact("ore", id_ore, o_type, ore.ore, y_min, y_max))

        if ore.biomes ~= nil then
            for _, value in pairs(ore.biomes) do
                table.insert(ore_table, utils.build_fact("ore_in_biome", id_ore, value))
            end
        end

        if ore.wherein ~= nil then
            if type(ore.wherein) == "table" then
                for _, bloque in pairs(ore.wherein) do
                    table.insert(ore_table, utils.build_fact("ore_in_node", id_ore, bloque))
                end
            else
                table.insert(ore_table, utils.build_fact("ore_in_node", id_ore, ore.wherein))
            end
        end

        id_ore = id_ore + 1
    end
end

-- write into the prolog file
core.safe_file_write(filepath, table.concat(ore_table, "\n"))
