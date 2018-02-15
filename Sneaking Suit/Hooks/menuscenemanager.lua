if not PackageManager:loaded("packages/lvl_dah") then
	PackageManager:load("packages/lvl_dah")
end

function MenuSceneManager:get_level_10_armor(armor_id, unit)
	if managers.network and managers.network:session() then
		local unit_damage = alive(unit) and unit:damage()
		if unit_damage then
			if tostring(armor_id) == "level_10" then
				unit_damage:run_sequence_simple("spawn_prop_sneak_suit")
			end
		end
	end
end

Hooks:PostHook(MenuSceneManager, "set_character_armor", "SneakingSuit_set_character_armor", function(self, armor_id, unit)
	unit = unit or self._character_unit
	self:get_level_10_armor(armor_id, unit)
end)

Hooks:PostHook(MenuSceneManager, "set_henchmen_loadout", "SneakingSuit_set_henchmen_loadout", function(self, index, character, loadout)
	local unit = self._henchmen_characters and self._henchmen_characters[index]
	loadout = loadout or managers.blackmarket:henchman_loadout(index)
	local armor_id = loadout and loadout.armor
	self:get_level_10_armor(armor_id, unit)
end)