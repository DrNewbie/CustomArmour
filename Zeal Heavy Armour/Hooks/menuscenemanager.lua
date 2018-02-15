function MenuSceneManager:get_level_11_armor(armor_id, unit)
	if managers.network and managers.network:session() and armor_id == "level_11" then
		local unit_damage = alive(unit) and unit:damage()
		if unit_damage then
			if unit_damage and unit_damage:has_sequence("spawn_zeal_heavy_armour") then
				unit_damage:run_sequence_simple("spawn_zeal_heavy_armour")
			end
		end
	end
end

Hooks:PostHook(MenuSceneManager, "set_character_armor", "ZealHeavyArmour_set_character_armor", function(self, armor_id, unit)
	unit = unit or self._character_unit
	self:get_level_11_armor(armor_id, unit)
end)

Hooks:PostHook(MenuSceneManager, "set_henchmen_loadout", "ZealHeavyArmour_set_henchmen_loadout", function(self, index, character, loadout)
	local unit = self._henchmen_characters and self._henchmen_characters[index]
	loadout = loadout or managers.blackmarket:henchman_loadout(index)
	local armor_id = loadout and loadout.armor
	self:get_level_11_armor(armor_id, unit)
end)