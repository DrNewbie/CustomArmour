Hooks:PostHook(BlackMarketTweakData, "_init_armors", "SkulldozerArmour_init_armors", function(self)	
	self.armors.level_12 = {
		name_id = "bm_armor_level_12",
		sequence = "var_model_01",
		upgrade_level = 12,
		custom = true,
        base_on = "level_7"
	}
	self:_add_desc_from_name_macro(self.armors)
end)