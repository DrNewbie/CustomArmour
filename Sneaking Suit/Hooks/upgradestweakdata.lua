Hooks:PostHook(UpgradesTweakData, "_player_definitions", "SneakingSuit_player_definitions", function(self)	
	self.definitions.body_armor9 = {
		name_id = "bm_armor_level_10",
		armor_id = "level_10",
		category = "armor"
	}
end)

Hooks:PostHook(UpgradesTweakData, "_init_pd2_values", "SneakingSuit_init_pd2_values", function(self)
	self.values.player.body_armor.armor[10] = self.values.player.body_armor.armor[1]
	self.values.player.body_armor.movement[10] = self.values.player.body_armor.movement[1]
	self.values.player.body_armor.concealment[10] = 99
	self.values.player.body_armor.dodge[10] = -0.45
	self.values.player.body_armor.damage_shake[10] = self.values.player.body_armor.damage_shake[1]
	self.values.player.body_armor.stamina[10] = self.values.player.body_armor.stamina[1]
	self.values.player.body_armor.skill_ammo_mul[10] = self.values.player.body_armor.skill_ammo_mul[1]
	self.values.player.body_armor.skill_max_health_store[10] = self.values.player.body_armor.skill_max_health_store[1]
	self.values.player.body_armor.skill_kill_change_regenerate_speed[10] = self.values.player.body_armor.skill_kill_change_regenerate_speed[1]
end)