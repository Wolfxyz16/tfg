local rewards = {}

rewards.collect = function(task)
	local node = task.goal

	core.register_on_dignode(function(pos, oldnode, digger)
		if node == oldnode then
			set_reward_once(1.0, 0.0)
		end
	end)
end

rewards.craft = function(task)
	local node = task.goal

	core.register_on_craft(function(itemstack, player, old_craft_grid, craft_inv)
		if itemstack.equals(itemstack(node)) then
			set_reward_once(1.0, 0.0)
		end
	end)
end

rewards.explore = function(task)
	local agent = core.get_connected_players()[1]
	local biome_data = core.get_biome_data(agent:get_pos())

	if core.get_biome_id(task.goal) == biome_data.biome then
		set_reward_once(1.0, 0.0)
	end
end

return rewards
