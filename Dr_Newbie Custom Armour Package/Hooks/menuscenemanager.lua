if not PackageManager:loaded("packages/lvl_wwh") then
	PackageManager:load("packages/lvl_wwh")
end

if not PackageManager:loaded("packages/lvl_dah") then
	PackageManager:load("packages/lvl_wwh")
end

if not PackageManager:loaded("packages/sm_wish") then
	PackageManager:load("packages/sm_wish")
end

function MenuSceneManager:get_level_addon_armor(armor_id, unit)
	armor_id = tostring(armor_id)
	if managers.network and managers.network:session() then
		local unit_damage = alive(unit) and unit:damage()
		if unit_damage then
			if armor_id == "level_9" then
				unit_damage:run_sequence_simple("spawn_prop_winter_suit")
			end
			if armor_id == "level_10" then
				unit_damage:run_sequence_simple("spawn_prop_sneak_suit")
			end
			if armor_id == "level_11" and unit_damage:has_sequence("spawn_zeal_heavy_armour") then
				unit_damage:run_sequence_simple("spawn_zeal_heavy_armour")
			end
			if armor_id == "level_12" and unit_damage:has_sequence("spawn_skulldozer_armour") then
				unit_damage:run_sequence_simple("spawn_skulldozer_armour")
			end
			if armor_id == "level_13" and unit_damage:has_sequence("spawn_zeal_taser_armour") then
				unit_damage:run_sequence_simple("spawn_zeal_taser_armour")
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