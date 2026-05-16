local Utils = {}

local function format_value(v)
    local str = tostring(v)

    if (str:sub(1,1) == "'" and str:sub(-1,-1) == "'") or (str:sub(1,1) == '"' and str:sub(-1,-1) == '"') then
        return str
    end

    if str:match("[%+%-%s%/%.%:]") or str:match("^[A-Z]") or str:sub(1,1) == "_" then
        return "'" .. str .. "'"
    end

    return str
end

function Utils.build_fact(predicate, ...)
	local args = { ... }
	local formatted_args = {}

	for i, v in ipairs(args) do
		formatted_args[i] = format_value(v)
	end

	return predicate .. "(" .. table.concat(formatted_args, ", ") .. ")."
end

return Utils
