Hooks:PostHook(UpgradesTweakData, "_player_definitions", "ZealHeavyArmour_player_definitions", function(self)	
	self.definitions.body_armor9 = {
		name_id = "bm_armor_level_11",
		armor_id = "level_11",
		category = "armor"
	}
end)

Hooks:PostHook(UpgradesTweakData, "_init_pd2_values", "ZealHeavyArmour_init_pd2_values", function(self)
	self.values.player.body_armor.armor[11] = self.values.player.body_armor.armor[7]
	self.values.player.body_armor.movement[11] = self.values.player.body_armor.movement[7]
	self.values.player.body_armor.concealment[11] = self.values.player.body_armor.concealment[7]
	self.values.player.body_armor.dodge[11] = self.values.player.body_armor.dodge[7]
	self.values.player.body_armor.damage_shake[11] = self.values.player.body_armor.damage_shake[7]
	self.values.player.body_armor.stamina[11] = self.values.player.body_armor.stamina[7]
	self.values.player.body_armor.skill_ammo_mul[11] = self.values.player.body_armor.skill_ammo_mul[7]
	self.values.player.body_armor.skill_max_health_store[11] = self.values.player.body_armor.skill_max_health_store[7]
	self.values.player.body_armor.skill_kill_change_regenerate_speed[11] = self.values.player.body_armor.skill_kill_change_regenerate_speed[7]
end)