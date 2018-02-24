Hooks:PostHook(CriminalsManager, "add_character", "ZealTaserArmour_add_character", function(self, name, unit, peer_id, ai, ai_loadout)
	if alive(unit) then
		local peer = managers.network:session():peer(peer_id)
		if peer then
			if tostring(peer:armor_id(true)) == "level_13" then
				local unit_damage = not unit:damage() and unit:camera() and unit:camera():camera_unit():damage()
				if unit_damage and unit_damage:has_sequence("spawn_zeal_taser_armour") then
					unit_damage:run_sequence_simple("spawn_zeal_taser_armour")
				end
			end
		end
	end
end)