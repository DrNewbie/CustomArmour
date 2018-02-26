if not PackageManager:loaded("packages/lvl_wwh") then
	PackageManager:load("packages/lvl_wwh")
end

if not PackageManager:loaded("packages/lvl_dah") then
	PackageManager:load("packages/lvl_dah")
end

if not PackageManager:loaded("packages/sm_wish") then
	PackageManager:load("packages/sm_wish")
end

Hooks:PostHook(TeamAIMovement, "check_visual_equipment", "Dr_Newbie_CustomArmourPackage_check_visual_equipment", function(self)
	local loadout =  managers.criminals:get_loadout_for(self._ext_base._tweak_table)
	local unit_damage = self._unit:damage()
	if unit_damage then
		local armor = tostring(loadout.armor)
		if armor == "level_9" then
			unit_damage:run_sequence_simple("spawn_prop_winter_suit")
		elseif armor == "level_10" then
			unit_damage:run_sequence_simple("spawn_prop_sneak_suit")
		elseif armor == "level_11" and unit_damage:has_sequence("spawn_zeal_heavy_armour") then
			unit_damage:run_sequence_simple("spawn_zeal_heavy_armour")
		elseif armor == "level_12" and unit_damage:has_sequence("spawn_skulldozer_armour") then
			unit_damage:run_sequence_simple("spawn_skulldozer_armour")
		elseif armor == "level_13" and unit_damage:has_sequence("spawn_zeal_taser_armour") then
			unit_damage:run_sequence_simple("spawn_zeal_taser_armour")
		elseif armor == "level_14" and unit_damage:has_sequence("spawn_spooc_armour") then
			unit_damage:run_sequence_simple("spawn_spooc_armour")
		end
	end
end)