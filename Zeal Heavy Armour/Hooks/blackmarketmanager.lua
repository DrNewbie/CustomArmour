Hooks:PostHook(BlackMarketManager, "on_aquired_armor", "ZealHeavyArmour_on_aquired_armor", function(self)	
	self._global.armors["level_11"].unlocked = self._global.armors["level_7"].unlocked
	self._global.armors["level_11"].owned = self._global.armors["level_7"].owned
end)