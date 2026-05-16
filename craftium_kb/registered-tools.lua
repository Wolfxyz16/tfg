local path = core.get_modpath("craftium_kb")
local filepath = CRAFTIUM_DATA_PATH .. "/kb/tools.pl"

local utils = dofile(path .. "/utils.lua")

local tool_table = {
    ":- discontiguous tool/1.",
    ":- multifile groups/3.",
    ":- discontiguous full_punch_interval/2.",
    ":- discontiguous max_drop_level/2.",
    ":- discontiguous punch_attack_uses/2.",
    ":- discontiguous damage_groups/3.",
    ":- discontiguous groupcaps_meta/4.",
    ":- discontiguous groupcaps/4.",
    ""
}

for name, tool in pairs(core.registered_tools) do

	table.insert(tool_table, utils.build_fact("tool", name))

	if tool.groups ~= nil then
		for key, value in pairs(tool.groups) do
			table.insert(tool_table, utils.build_fact("groups", name, key, value))
		end
	end

  local caps = tool.tool_capabilities

  if caps ~= nil then
      if caps.full_punch_interval then
          table.insert(tool_table, utils.build_fact("full_punch_interval", name, caps.full_punch_interval))
      end

      if caps.max_drop_level then
        table.insert(tool_table, utils.build_fact("max_drop_level", name, caps.max_drop_level))
      end

      if caps.punch_attack_uses then
        table.insert(tool_table, utils.build_fact("punch_attack_uses", name, caps.punch_attack_uses))
      end

      if caps.damage_groups then
        for gname, damage in pairs(caps.damage_groups) do
          table.insert(tool_table, utils.build_fact("damage_groups", name, gname, damage))
        end
      end

      if caps.groupcaps then
        for gkey, gdata in pairs(caps.groupcaps) do
          local uses = gdata.uses or 0 -- number of uses tool can be used in the group
          local maxlevel = gdata.maxlevel or 0 -- maximum level which the tool can mine
          table.insert(tool_table, utils.build_fact("groupcaps_meta", name, gkey, uses, maxlevel))

          if gdata.times then
            for index, time_val in ipairs(gdata.times) do
              -- fact: groupcaps(tool, group, node_level, time)
              table.insert(tool_table, utils.build_fact("groupcaps", name, gkey, index, time_val))
            end
          end
        end
      end
  end
end

-- write into the prolog file
core.safe_file_write(filepath, table.concat(tool_table, "\n"))
