if not PackageManager:loaded("packages/lvl_wwh") then
	PackageManager:load("packages/lvl_wwh")
end

Hooks:PostHook(TeamAIMovement, "check_visual_equipment", "ColdCoatArmour_check_visual_equipment", function(self)
	local loadout =  managers.criminals:get_loadout_for(self._ext_base._tweak_table)
	if tostring(loadout.armor) == "level_9" then
		local unit_damage = self._unit:damage()
		if unit_damage then
			unit_damage:run_sequence_simple("spawn_prop_winter_suit")
		end
	end
end)