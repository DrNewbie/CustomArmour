if not PackageManager:loaded("packages/lvl_wwh") then
	PackageManager:load("packages/lvl_wwh")
end

function MenuSceneManager:get_level_9_armor(armor_id, unit)
	if managers.network and managers.network:session() then
		local unit_damage = alive(unit) and unit:damage()
		if unit_damage then
			if tostring(armor_id) == "level_9" then
				unit_damage:run_sequence_simple("spawn_prop_winter_suit")
			end
		end
	end
end

Hooks:PostHook(MenuSceneManager, "set_character_armor", "ColdCoatArmour_set_character_armor", function(self, armor_id, unit)
	unit = unit or self._character_unit
	self:get_level_9_armor(armor_id, unit)
end)

Hooks:PostHook(MenuSceneManager, "set_henchmen_loadout", "ColdCoatArmour_set_henchmen_loadout", function(self, index, character, loadout)
	local unit = self._henchmen_characters and self._henchmen_characters[index]
	loadout = loadout or managers.blackmarket:henchman_loadout(index)
	local armor_id = loadout and loadout.armor
	self:get_level_9_armor(armor_id, unit)
end)