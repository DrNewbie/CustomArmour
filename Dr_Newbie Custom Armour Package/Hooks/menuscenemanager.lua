function MenuSceneManager:get_level_addon_armor(armor_id, unit)
	armor_id = tostring(armor_id)
	if managers.network and managers.network:session() then
		if alive(unit) then
			DelayedCalls:Add("spawn_unit_AddOnArmourSyncFix_" .. tostring(unit:key()), 2, function ()
				local unit_damage = alive(unit) and unit:damage()
				if type(armor_id) == "string" and unit_damage then
					if armor_id == "level_9" then
						unit_damage:run_sequence_simple("spawn_prop_winter_suit")
					elseif armor_id == "level_10" then
						unit_damage:run_sequence_simple("spawn_prop_sneak_suit")
					elseif armor_id == "level_11" and unit_damage:has_sequence("spawn_zeal_heavy_armour") then
						unit_damage:run_sequence_simple("spawn_zeal_heavy_armour")
					elseif armor_id == "level_12" and unit_damage:has_sequence("spawn_skulldozer_armour") then
						unit_damage:run_sequence_simple("spawn_skulldozer_armour")
					elseif armor_id == "level_13" and unit_damage:has_sequence("spawn_zeal_taser_armour") then
						unit_damage:run_sequence_simple("spawn_zeal_taser_armour")
					elseif armor_id == "level_14" and unit_damage:has_sequence("spawn_spooc_armour") then
						unit_damage:run_sequence_simple("spawn_spooc_armour")
					end
				end
			end)
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