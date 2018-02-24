Hooks:PostHook(BlackMarketTweakData, "_init_armors", "ZealTaserArmour_init_armors", function(self)	
	self.armors.level_13 = {
		name_id = "bm_armor_level_13",
		sequence = "var_model_01",
		upgrade_level = 13,
		custom = true,
        base_on = "level_7"
	}
	self:_add_desc_from_name_macro(self.armors)
end)