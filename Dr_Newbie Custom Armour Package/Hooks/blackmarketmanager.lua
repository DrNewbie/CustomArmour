Hooks:PostHook(BlackMarketManager, "on_aquired_armor", "Dr_Newbie_CustomArmourPackage_on_aquired_armor", function(self)	
	self._global.armors["level_9"].unlocked = self._global.armors["level_1"].unlocked
	self._global.armors["level_9"].owned = self._global.armors["level_1"].owned
	self._global.armors["level_10"].unlocked = self._global.armors["level_1"].unlocked
	self._global.armors["level_10"].owned = self._global.armors["level_1"].owned
	self._global.armors["level_11"].unlocked = self._global.armors["level_7"].unlocked
	self._global.armors["level_11"].owned = self._global.armors["level_7"].owned
	self._global.armors["level_12"].unlocked = self._global.armors["level_7"].unlocked
	self._global.armors["level_12"].owned = self._global.armors["level_7"].owned
	self._global.armors["level_13"].unlocked = self._global.armors["level_7"].unlocked
	self._global.armors["level_13"].owned = self._global.armors["level_7"].owned
	self._global.armors["level_14"].unlocked = self._global.armors["level_3"].unlocked
	self._global.armors["level_14"].owned = self._global.armors["level_3"].owned
	self._global.armors["level_15"].unlocked = self._global.armors["level_7"].unlocked
	self._global.armors["level_15"].owned = self._global.armors["level_7"].owned
end)