Hooks:PostHook(BlackMarketTweakData, "_init_armors", "ColdCoatArmour_init_armors", function(self)	
	self.armors.level_9 = {
		name_id = "bm_armor_level_9",
		sequence = "var_model_01",
		upgrade_level = 9,
		custom = true,
        base_on = "level_1"
	}
	self:_add_desc_from_name_macro(self.armors)
end)