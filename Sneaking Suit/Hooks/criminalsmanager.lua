if not PackageManager:loaded("packages/lvl_dah") then
	PackageManager:load("packages/lvl_dah")
end

Hooks:PostHook(CriminalsManager, "add_character", "SneakingSuit_add_character", function(self, name, unit, peer_id, ai, ai_loadout)
	if alive(unit) then
		local peer = managers.network:session():peer(peer_id)
		if peer then
			if tostring(peer:armor_id(true)) == "level_10" then
				local unit_damage = not unit:damage() and unit:camera() and unit:camera():camera_unit():damage()
				if unit_damage then
					unit_damage:run_sequence_simple("spawn_prop_sneak_suit")
				end
			end
		end
	end
end)