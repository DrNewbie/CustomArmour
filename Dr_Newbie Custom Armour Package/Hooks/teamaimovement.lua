Hooks:PostHook(TeamAIMovement, "check_visual_equipment", "Dr_Newbie_CustomArmourPackage_check_visual_equipment", function(self)
	local loadout =  managers.criminals:get_loadout_for(self._ext_base._tweak_table)
	local unit_damage = self._unit:damage()
	if unit_damage then
		local armor_id = tostring(loadout.armor)
		local armor_data = tweak_data.blackmarket.armors and tweak_data.blackmarket.armors[armor_id]
		if armor_data and armor_data.custom and armor_data.custom_sequence then
			if unit_damage:has_sequence(armor_data.custom_sequence) then
				unit_damage:run_sequence_simple(armor_data.custom_sequence)
			end
		end
	end
end)