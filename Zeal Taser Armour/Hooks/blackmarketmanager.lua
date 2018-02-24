Hooks:PostHook(BlackMarketManager, "on_aquired_armor", "ZealTaserArmour_on_aquired_armor", function(self)	
	self._global.armors["level_13"].unlocked = self._global.armors["level_7"].unlocked
	self._global.armors["level_13"].owned = self._global.armors["level_7"].owned
end)