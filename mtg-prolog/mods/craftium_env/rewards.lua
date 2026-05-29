local rewards = {}

rewards.collect = function(pos, oldnode, oldmetadata, digger)
	local task_place = core.get_biome_id(task_place)
	local biome = core.get_biome_data(pos)

	if biome["biome"] == task_place and digger:is_player() then
		set_reward_once(1.0, 0.0)
	end

	core.override_item("default:acacia_tree", { after_dig_node = reward_func }, {})
end

return rewards
