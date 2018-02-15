Hooks:PostHook(BlackMarketTweakData, "_init_armors", "ZealHeavyArmour_init_armors", function(self)	
	self.armors.level_11 = {
		name_id = "bm_armor_level_11",
		sequence = "var_model_01",
		upgrade_level = 11,
		custom = true,
        base_on = "level_7"
	}
	self:_add_desc_from_name_macro(self.armors)
end)