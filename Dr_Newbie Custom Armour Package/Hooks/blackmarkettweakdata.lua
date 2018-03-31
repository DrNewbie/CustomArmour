Hooks:PostHook(BlackMarketTweakData, "_init_armors", "Dr_Newbie_CustomArmourPackage_init_armors", function(self)	
	self.armors.level_15 = {
		name_id = "bm_armor_level_15",
		sequence = "var_model_07",
		custom_sequence = "spawn_vip_1_armour",
		upgrade_level = 15,
		custom = true,
        base_on = "level_7"
	}
	self.armors.level_14 = {
		name_id = "bm_armor_level_14",
		sequence = "var_model_03",
		custom_sequence = "spawn_spooc_armour",
		upgrade_level = 14,
		custom = true,
        base_on = "level_3"
	}
	self.armors.level_13 = {
		name_id = "bm_armor_level_13",
		sequence = "var_model_07",
		custom_sequence = "spawn_zeal_taser_armour",
		upgrade_level = 13,
		custom = true,
        base_on = "level_7"
	}
	self.armors.level_12 = {
		name_id = "bm_armor_level_12",
		sequence = "var_model_07",
		custom_sequence = "spawn_skulldozer_armour",
		upgrade_level = 12,
		custom = true,
        base_on = "level_7"
	}
	self.armors.level_11 = {
		name_id = "bm_armor_level_11",
		sequence = "var_model_07",
		custom_sequence = "spawn_zeal_heavy_armour",
		upgrade_level = 11,
		custom = true,
        base_on = "level_7"
	}
	self.armors.level_10 = {
		name_id = "bm_armor_level_10",
		sequence = "var_model_01",
		custom_sequence = "spawn_prop_sneak_suit",
		upgrade_level = 10,
		custom = true,
        base_on = "level_1"
	}
	self.armors.level_9 = {
		name_id = "bm_armor_level_9",
		sequence = "var_model_01",
		custom_sequence = "spawn_prop_winter_suit",
		upgrade_level = 9,
		custom = true,
        base_on = "level_1"
	}
	self:_add_desc_from_name_macro(self.armors)
end)