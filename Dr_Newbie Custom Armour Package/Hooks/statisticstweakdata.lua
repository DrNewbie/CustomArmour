local Dr_Newbie_CustomArmourPackage_statistics_table = StatisticsTweakData.statistics_table
function StatisticsTweakData:statistics_table()
	local level_list, job_list, mask_list, weapon_list, melee_list, grenade_list, enemy_list, armor_list, character_list, deployable_list = Dr_Newbie_CustomArmourPackage_statistics_table(self)
	armor_list[9] = "level_9"
	armor_list[10] = "level_10"
	armor_list[11] = "level_11"
	armor_list[12] = "level_12"
	armor_list[13] = "level_13"
	return level_list, job_list, mask_list, weapon_list, melee_list, grenade_list, enemy_list, armor_list, character_list, deployable_list
end