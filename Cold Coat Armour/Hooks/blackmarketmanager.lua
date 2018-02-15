Hooks:PostHook(BlackMarketManager, "on_aquired_armor", "ColdCoatArmour_on_aquired_armor", function(self)	
	self._global.armors["level_9"].unlocked = self._global.armors["level_1"].unlocked
	self._global.armors["level_9"].owned = self._global.armors["level_1"].owned
end)