Hooks:PostHook(BlackMarketManager, "on_aquired_armor", "SkulldozerArmour_on_aquired_armor", function(self)	
	self._global.armors["level_12"].unlocked = self._global.armors["level_7"].unlocked
	self._global.armors["level_12"].owned = self._global.armors["level_7"].owned
end)