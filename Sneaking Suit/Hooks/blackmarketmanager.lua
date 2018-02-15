Hooks:PostHook(BlackMarketManager, "on_aquired_armor", "SneakingSuit_on_aquired_armor", function(self)	
	self._global.armors["level_10"].unlocked = self._global.armors["level_1"].unlocked
	self._global.armors["level_10"].owned = self._global.armors["level_1"].owned
end)