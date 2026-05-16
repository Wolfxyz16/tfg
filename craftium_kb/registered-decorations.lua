local path = core.get_modpath("craftium_kb")
local filepath = CRAFTIUM_DATA_PATH .. "/kb/decorations.pl"

local utils = dofile(path .. "/utils.lua")

local decoration_table = {
    ":- discontiguous decoration/4.",
    ":- discontiguous decoration_biome/2.",
    ":- discontiguous decoration_placed_on/2.",
    ":- discontiguous decoration_spawn_by/2.",
    ""
}

local deco_id = 1

for _, deco in pairs(core.registered_decorations) do
    local item = deco.decoration or deco.schematic

    if item ~= nil and item ~= "" then
        local y_min = deco.y_min or -31000
        local y_max = deco.y_max or 31000

        if type(item) == "string" then
            local file_name = string.match(item, "([^/]+)$")
            if file_name then
                item = file_name
            end
        elseif type(item) == "table" then
            item = "complex_schematic"
        end

        table.insert(decoration_table, utils.build_fact("decoration", deco_id, item, y_min, y_max))

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

        deco_id = deco_id + 1
    end
end

-- write into the prolog file
core.safe_file_write(filepath, table.concat(decoration_table, "\n"))
