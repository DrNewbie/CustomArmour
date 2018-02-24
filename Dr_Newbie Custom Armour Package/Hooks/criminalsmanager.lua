if not PackageManager:loaded("packages/lvl_wwh") then
	PackageManager:load("packages/lvl_wwh")
end

if not PackageManager:loaded("packages/lvl_dah") then
	PackageManager:load("packages/lvl_wwh")
end

if not PackageManager:loaded("packages/sm_wish") then
	PackageManager:load("packages/sm_wish")
end

Hooks:PostHook(CriminalsManager, "add_character", "Dr_Newbie_CustomArmourPackage_add_character", function(self, name, unit, peer_id, ai, ai_loadout)
	if alive(unit) then
		local peer = managers.network:session():peer(peer_id)
		if peer then
			local armor_id = tostring(peer:armor_id(true))
			local unit_damage = not unit:damage() and unit:camera() and unit:camera():camera_unit():damage()
			if unit_damage then
				if armor_id == "level_9" then
					unit_damage:run_sequence_simple("spawn_prop_winter_suit")
				elseif armor_id == "level_10" then
					unit_damage:run_sequence_simple("spawn_prop_sneak_suit")
				elseif armor_id == "level_11" then
					if unit_damage:has_sequence("spawn_zeal_heavy_armour") then
						unit_damage:run_sequence_simple("spawn_zeal_heavy_armour")
					end
				elseif armor_id == "level_12" then
					if unit_damage:has_sequence("spawn_skulldozer_armour") then
						unit_damage:run_sequence_simple("spawn_skulldozer_armour")
					end
				elseif armor_id == "level_13" then
					if unit_damage:has_sequence("spawn_zeal_taser_armour") then
						unit_damage:run_sequence_simple("spawn_zeal_taser_armour")
					end
				end
			end
		end
	end
end)