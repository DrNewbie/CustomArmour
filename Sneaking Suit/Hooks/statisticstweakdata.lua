local SneakingSuit_statistics_table = StatisticsTweakData.statistics_table
function StatisticsTweakData:statistics_table()
	local level_list, job_list, mask_list, weapon_list, melee_list, grenade_list, enemy_list, armor_list, character_list, deployable_list = SneakingSuit_statistics_table(self)
	armor_list[10] = "level_10"
	return level_list, job_list, mask_list, weapon_list, melee_list, grenade_list, enemy_list, armor_list, character_list, deployable_list
end