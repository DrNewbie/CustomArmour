Hooks:PostHook(UpgradesTweakData, "_player_definitions", "SkulldozerArmour_player_definitions", function(self)	
	self.definitions.body_armor9 = {
		name_id = "bm_armor_level_12",
		armor_id = "level_12",
		category = "armor"
	}
end)

Hooks:PostHook(UpgradesTweakData, "_init_pd2_values", "SkulldozerArmour_init_pd2_values", function(self)
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
end)