Hooks:PostHook(UpgradesTweakData, "_player_definitions", "Dr_Newbie_CustomArmourPackage_player_definitions", function(self)	
	self.definitions.body_armor13 = {
		name_id = "bm_armor_level_14",
		armor_id = "level_14",
		category = "armor"
	}
	self.definitions.body_armor12 = {
		name_id = "bm_armor_level_13",
		armor_id = "level_13",
		category = "armor"
	}
	self.definitions.body_armor11 = {
		name_id = "bm_armor_level_12",
		armor_id = "level_12",
		category = "armor"
	}
	self.definitions.body_armor10 = {
		name_id = "bm_armor_level_11",
		armor_id = "level_11",
		category = "armor"
	}
	self.definitions.body_armor9 = {
		name_id = "bm_armor_level_10",
		armor_id = "level_10",
		category = "armor"
	}
	self.definitions.body_armor8 = {
		name_id = "bm_armor_level_9",
		armor_id = "level_9",
		category = "armor"
	}
end)

Hooks:PostHook(UpgradesTweakData, "_init_pd2_values", "Dr_Newbie_CustomArmourPackage_init_pd2_values", function(self)
	self.values.player.body_armor.armor[9] = 12
	self.values.player.body_armor.movement[9] = 0.65
	self.values.player.body_armor.concealment[9] = 14
	self.values.player.body_armor.dodge[9] = -0.3
	self.values.player.body_armor.damage_shake[9] = 0.6
	self.values.player.body_armor.stamina[9] = 0.8
	self.values.player.body_armor.skill_ammo_mul[9] = 1.6
	self.values.player.body_armor.skill_max_health_store[9] = 10
	self.values.player.body_armor.skill_kill_change_regenerate_speed[9] = 10
	self.values.player.armor_grinding[1][9] = self.values.player.armor_grinding[1][7]
	self.values.player.damage_to_armor[1][9] = self.values.player.damage_to_armor[1][7]
	
	self.values.player.body_armor.armor[10] = self.values.player.body_armor.armor[1]
	self.values.player.body_armor.movement[10] = self.values.player.body_armor.movement[1]
	self.values.player.body_armor.concealment[10] = 99
	self.values.player.body_armor.dodge[10] = -0.45
	self.values.player.body_armor.damage_shake[10] = self.values.player.body_armor.damage_shake[1]
	self.values.player.body_armor.stamina[10] = self.values.player.body_armor.stamina[1]
	self.values.player.body_armor.skill_ammo_mul[10] = self.values.player.body_armor.skill_ammo_mul[1]
	self.values.player.body_armor.skill_max_health_store[10] = self.values.player.body_armor.skill_max_health_store[1]
	self.values.player.body_armor.skill_kill_change_regenerate_speed[10] = self.values.player.body_armor.skill_kill_change_regenerate_speed[1]
	self.values.player.armor_grinding[1][10] = self.values.player.armor_grinding[1][1]
	self.values.player.damage_to_armor[1][10] = self.values.player.damage_to_armor[1][1]
	
	self.values.player.body_armor.armor[11] = self.values.player.body_armor.armor[7]
	self.values.player.body_armor.movement[11] = self.values.player.body_armor.movement[7]
	self.values.player.body_armor.concealment[11] = self.values.player.body_armor.concealment[7]
	self.values.player.body_armor.dodge[11] = self.values.player.body_armor.dodge[7]
	self.values.player.body_armor.damage_shake[11] = self.values.player.body_armor.damage_shake[7]
	self.values.player.body_armor.stamina[11] = self.values.player.body_armor.stamina[7]
	self.values.player.body_armor.skill_ammo_mul[11] = self.values.player.body_armor.skill_ammo_mul[7]
	self.values.player.body_armor.skill_max_health_store[11] = self.values.player.body_armor.skill_max_health_store[7]
	self.values.player.body_armor.skill_kill_change_regenerate_speed[11] = self.values.player.body_armor.skill_kill_change_regenerate_speed[7]
	self.values.player.armor_grinding[1][11] = self.values.player.armor_grinding[1][7]
	self.values.player.damage_to_armor[1][11] = self.values.player.damage_to_armor[1][7]
	
	self.values.player.body_armor.armor[12] = self.values.player.body_armor.armor[7]
	self.values.player.body_armor.movement[12] = self.values.player.body_armor.movement[7]
	self.values.player.body_armor.concealment[12] = self.values.player.body_armor.concealment[7]
	self.values.player.body_armor.dodge[12] = self.values.player.body_armor.dodge[7]
	self.values.player.body_armor.damage_shake[12] = self.values.player.body_armor.damage_shake[7]
	self.values.player.body_armor.stamina[12] = self.values.player.body_armor.stamina[7]
	self.values.player.body_armor.skill_ammo_mul[12] = self.values.player.body_armor.skill_ammo_mul[7]
	self.values.player.body_armor.skill_max_health_store[12] = self.values.player.body_armor.skill_max_health_store[7]
	self.values.player.body_armor.skill_kill_change_regenerate_speed[12] = self.values.player.body_armor.skill_kill_change_regenerate_speed[7]
	self.values.player.armor_grinding[1][12] = self.values.player.armor_grinding[1][7]
	self.values.player.damage_to_armor[1][12] = self.values.player.damage_to_armor[1][7]
	
	self.values.player.body_armor.armor[13] = self.values.player.body_armor.armor[7]
	self.values.player.body_armor.movement[13] = self.values.player.body_armor.movement[7]
	self.values.player.body_armor.concealment[13] = self.values.player.body_armor.concealment[7]
	self.values.player.body_armor.dodge[13] = self.values.player.body_armor.dodge[7]
	self.values.player.body_armor.damage_shake[13] = self.values.player.body_armor.damage_shake[7]
	self.values.player.body_armor.stamina[13] = self.values.player.body_armor.stamina[7]
	self.values.player.body_armor.skill_ammo_mul[13] = self.values.player.body_armor.skill_ammo_mul[7]
	self.values.player.body_armor.skill_max_health_store[13] = self.values.player.body_armor.skill_max_health_store[7]
	self.values.player.body_armor.skill_kill_change_regenerate_speed[13] = self.values.player.body_armor.skill_kill_change_regenerate_speed[7]
	self.values.player.armor_grinding[1][13] = self.values.player.armor_grinding[1][7]
	self.values.player.damage_to_armor[1][13] = self.values.player.damage_to_armor[1][7]
	
	self.values.player.body_armor.armor[14] = self.values.player.body_armor.armor[3]
	self.values.player.body_armor.movement[14] = self.values.player.body_armor.movement[3]
	self.values.player.body_armor.concealment[14] = self.values.player.body_armor.concealment[3]
	self.values.player.body_armor.dodge[14] = self.values.player.body_armor.dodge[3]
	self.values.player.body_armor.damage_shake[14] = self.values.player.body_armor.damage_shake[3]
	self.values.player.body_armor.stamina[14] = self.values.player.body_armor.stamina[3]
	self.values.player.body_armor.skill_ammo_mul[14] = self.values.player.body_armor.skill_ammo_mul[3]
	self.values.player.body_armor.skill_max_health_store[14] = self.values.player.body_armor.skill_max_health_store[3]
	self.values.player.body_armor.skill_kill_change_regenerate_speed[14] = self.values.player.body_armor.skill_kill_change_regenerate_speed[3]
	self.values.player.armor_grinding[1][14] = self.values.player.armor_grinding[1][3]
	self.values.player.damage_to_armor[1][14] = self.values.player.damage_to_armor[1][3]
end)