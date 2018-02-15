Hooks:PostHook(BlackMarketTweakData, "_init_armors", "SneakingSuit_init_armors", function(self)	
	self.armors.level_10 = {
		name_id = "bm_armor_level_10",
		sequence = "var_model_01",
		upgrade_level = 10,
		custom = true,
        base_on = "level_1"
	}
	self:_add_desc_from_name_macro(self.armors)
end)