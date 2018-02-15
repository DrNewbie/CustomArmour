Hooks:PostHook(TeamAIMovement, "check_visual_equipment", "SkulldozerArmour_check_visual_equipment", function(self)
	local loadout =  managers.criminals:get_loadout_for(self._ext_base._tweak_table)
	if tostring(loadout.armor) == "level_12" then
		local unit_damage = self._unit:damage()
		if unit_damage and unit_damage:has_sequence("spawn_skulldozer_armour") then
			unit_damage:run_sequence_simple("spawn_skulldozer_armour")
		end
	end
end)