-- get the task triplet
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

-- Executed when the player joins the game
core.register_on_joinplayer(function(agent, _last_login)
	-- set timeofday to midday
	core.set_timeofday(0.5)

	-- Disable HUD elements
	agent:hud_set_flags({
		hotbar = false,
		crosshair = false,
		healthbar = false,
		chat = false,
	})

	agent:hud_add({
		type = "text",
		alignment = { x = 0, y = 0 },
		offset = { x = 800, y = 100 },
		size = { x = 2, y = 2 },
		text = "task(collect, 'default:wood', [], [])",
		style = 4,
	})
end)

core.register_globalstep(function(dtime)
	-- get the first connected player
	local player = core.get_connected_players()[1]

	-- if the player is not connected end here
	if player == nil then
		return nil
	end
end)
