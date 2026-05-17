local path = core.get_modpath("craftium_kb")
local filepath_items = CRAFTIUM_DATA_PATH .. "/kb/items.pl"
local filepath_crafts = CRAFTIUM_DATA_PATH .. "/kb/crafts.pl"

local utils = dofile(path .. "/utils.lua")

local item_table = {
	":- discontiguous item/1.",
	"",
}

local craft_table = {
    ":- discontiguous craft/5.",
    ":- discontiguous fuel/2.",
    "",
}

for name, _ in pairs(core.registered_items) do
    table.insert(item_table, utils.build_fact("item", name))

    local recipes = core.get_all_craft_recipes(name)
    if recipes then
        for _, recipe in ipairs(recipes) do
            local method_clean = type(recipe.method) == "table" and recipe.method[1] or tostring(recipe.method)
            if method_clean:sub(1, 5) == "table" or method_clean == "nil" then
                method_clean = "normal"
            end

            if method_clean == "fuel" then
                local burn_time = 0
                if recipe.output then
                    burn_time = tonumber(recipe.output:match("%d+")) or 0
                end
                if burn_time > 0 then
                    local fuel_fact = utils.build_fact("fuel", name, burn_time)
                    table.insert(craft_table, fuel_fact)
                end
            elseif recipe.output and recipe.output ~= "" then
                local output_item, count = recipe.output:match("^([^%s]+)%s+(%d+)$")
                if not output_item then
                    output_item = recipe.output
                    count = 1
                else
                    count = tonumber(count)
                end

                local ingredients = {}
                for _, ing in pairs(recipe.items) do
                    if ing and ing ~= "" then
                        table.insert(ingredients, ing)
                    end
                end

                if #ingredients > 0 then
                    local craft_fact = utils.build_fact("craft", output_item, count, method_clean, ingredients)
                    table.insert(craft_table, craft_fact)
                end
            end
        end
    end
end

-- write into the prolog file
core.safe_file_write(filepath_items, table.concat(item_table, "\n"))
core.safe_file_write(filepath_crafts, table.concat(craft_table, "\n"))
