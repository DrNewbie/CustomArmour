function MenuSceneManager:get_level_addon_armor(armor_id, unit)
	armor_id = tostring(armor_id)
	if true then
		if alive(unit) then
			local unit_damage = alive(unit) and unit:damage()
			if type(armor_id) == "string" and unit_damage then
				local armor_data = tweak_data.blackmarket.armors and tweak_data.blackmarket.armors[armor_id]
				if armor_data and armor_data.custom and armor_data.custom_sequence then
					if unit_damage:has_sequence(armor_data.custom_sequence) then
						unit_damage:run_sequence_simple(armor_data.custom_sequence)
					end
				else
					if unit_damage:has_sequence(armor_data.sequence) then
						unit_damage:run_sequence_simple(armor_data.sequence)
					end
				end
			end
		end
	end
end

Hooks:PostHook(MenuSceneManager, "set_character_armor", "Dr_Newbie_CustomArmourPackage_set_character_armor", function(self, armor_id, unit)
	unit = unit or self._character_unit
	self:get_level_addon_armor(armor_id, unit)
end)

Hooks:PostHook(MenuSceneManager, "set_henchmen_loadout", "Dr_Newbie_CustomArmourPackage_set_henchmen_loadout", function(self, index, character, loadout)
	local unit = self._henchmen_characters and self._henchmen_characters[index]
	loadout = loadout or managers.blackmarket:henchman_loadout(index)
	local armor_id = loadout and loadout.armor
	self:get_level_addon_armor(armor_id, unit)
end)