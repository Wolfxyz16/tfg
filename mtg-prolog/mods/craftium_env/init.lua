local modpath = core.get_modpath(core.get_current_modname())
local rewards = dofile(modpath .. "/rewards.lua")

-- get the task table
local task = {
	action = core.settings:get("task.action"),
	goal = core.settings:get("task.goal"),
	preconditions = core.settings:get("task.preconditions"),
	effects = core.settings:get("task.effects"),
}

-- Turn on the termination flag if the agent dies
core.register_on_dieplayer(function(ObjectRef, reason)
	set_termination()
end)

-- Executed when the agent joins the game
core.register_on_joinplayer(function(agent, _last_login)
	-- local inv = agent:get_inventory()
	-- inv:set_stack("main", 1, ItemStack("default:wood 3"))
	-- inv:set_stack("main", 2, ItemStack("default:stick 2"))

	-- set timeofday to midday
	core.set_timeofday(0.5)

	-- Disable HUD elements
	agent:hud_set_flags({
		hotbar = false,
		crosshair = false,
		healthbar = false,
		chat = true,
	})

	core.chat_send_player(agent:get_player_name(), core.colorize("#CA6857", "Generated task: ") .. rewards.format(task))

	-- load reward function when the player has spawned
	rewards[task.action](task)
end)

core.register_globalstep(function(dtime)
	-- get the first connected player
	local player = core.get_connected_players()[1]

	-- if the player is not connected end here
	if player == nil then
		return nil
	end
end)
