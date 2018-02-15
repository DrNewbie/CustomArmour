if not PackageManager:loaded("packages/lvl_dah") then
	PackageManager:load("packages/lvl_dah")
end

Hooks:PostHook(TeamAIMovement, "check_visual_equipment", "SneakingSuit_check_visual_equipment", function(self)
	local loadout =  managers.criminals:get_loadout_for(self._ext_base._tweak_table)
	if tostring(loadout.armor) == "level_10" then
		local unit_damage = self._unit:damage()
		if unit_damage then
			unit_damage:run_sequence_simple("spawn_prop_sneak_suit")
		end
	end
end)