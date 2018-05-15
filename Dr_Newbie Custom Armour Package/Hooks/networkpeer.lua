Hooks:PostHook(NetworkPeer, "_update_equipped_armor", "Dr_Newbie_CustomArmourPackage__update_equipped_armor", function(self)
	if not tweak_data.blackmarket or not tweak_data.blackmarket.armors then
		return
	end
	if not alive(self._unit) then
		return
	end
	local unit_damage = self._unit and self._unit:damage() or nil
	if not unit_damage then
		return
	end
	local new_armor_id = self:armor_id(true) or self:armor_id()
	if not new_armor_id then
		return
	end
	if unit_damage then
		local armor_id = tostring(new_armor_id)
		local armor_data = tweak_data.blackmarket.armors and tweak_data.blackmarket.armors[armor_id]
		if armor_data and armor_data.custom and armor_data.custom_sequence then
			if unit_damage:has_sequence(armor_data.custom_sequence) then
				unit_damage:run_sequence_simple(armor_data.custom_sequence)
			end
		end
	end
end)