-- task(collect, wood, forest)
local task_item = core.settings:get("task.item")
local task_place = core.settings:get("task.place")
local task_action = core.settings:get("task.action")

-- task_place = core.get_biome_id(task_place)
core.debug(task_action .. " " .. task_item .. " in " .. task_place)

local reward_func = function(pos, oldnode, oldmetadata, digger)
	local biome = core.get_biome_data(pos)

	if biome["biome"] == task_place and digger:is_player() then
		set_reward_once(1.0, 0.0)
	end
end

-- if item is digged, set reward to 1
core.override_item("default:acacia_tree", { after_dig_node = reward_func }, {})

-- Turn on the termination flag if the agent dies
core.register_on_dieplayer(function(ObjectRef, reason)
	set_termination()
end)

-- Executed when the player joins the game
core.register_on_joinplayer(function(player, _last_login)
	-- set timeofday to midday
	core.set_timeofday(0.5)

	-- Disable HUD elements
	player:hud_set_flags({
		hotbar = false,
		crosshair = false,
		healthbar = false,
		chat = false,
	})

	local biome_table = core.get_biome_data({ 0, 0, 0 })
	print(core.get_biome_name(biome_table.biome))
end)

core.register_globalstep(function(dtime)
	-- get the first connected player
	local player = core.get_connected_players()[1]

	-- if the player is not connected end here
	if player == nil then
		return nil
	end

	-- if the player is connected:
	local player_pos = player:get_pos()
end)
