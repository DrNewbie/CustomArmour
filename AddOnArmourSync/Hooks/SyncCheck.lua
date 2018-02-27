local AddOnArmourSyncFix_CleanOutfitString = BeardLib.Utils.CleanOutfitString
function BeardLib.Utils:CleanOutfitString(str, is_henchman)
	local bm = managers.blackmarket
	if is_henchman and not bm.unpack_henchman_loadout_string then
		is_henchman = false
	end
	local list = (is_henchman and bm.unpack_henchman_loadout_string) and bm:unpack_henchman_loadout_string(str) or bm:unpack_outfit_from_string(str)
	local bta = tweak_data.blackmarket.armors
	if list.armor and bta[list.armor] and bta[list.armor].custom then
		list.armor = bta[list.armor].base_on or "level_1"
	end
	if list.armor_current and bta[list.armor_current] and bta[list.armor_current].custom then
		list.armor_current = bta[list.armor_current].base_on or "level_1"
	end
	if list.armor_current_state and bta[list.armor_current_state] and bta[list.armor_current_state].custom then
		list.armor_current_state = bta[list.armor_current_state].base_on or "level_1"
	end
	str = self:OutfitStringFromList(list, is_henchman)
	return AddOnArmourSyncFix_CleanOutfitString(self, str, is_henchman)
end

function Sync2All_AddOnArmourSyncFix(peer_id, str)
	if type(peer_id) == "number" and type(str) == "string" then
		local bm = managers.blackmarket
		local bta = tweak_data.blackmarket.armors
		if bm and bta and peer_id > 0 and managers.network:session():local_peer():id() ~= peer_id then
			local list = bm:unpack_outfit_from_string(str)
			local peer = managers.network:session():peer(peer_id)			
			local unit = peer._unit or nil
			if not unit and managers.menu_scene and type(managers.menu_scene._lobby_characters) == "table" then
				unit = managers.menu_scene._lobby_characters[peer_id] or nil
			end
			if type(list) == "table" and peer and unit and alive(unit) then
				local armor_id
				if list.armor and bta[list.armor] and bta[list.armor].custom then
					armor_id = list.armor
				end
				if list.armor_current and bta[list.armor_current] and bta[list.armor_current].custom then
					armor_id = list.armor_current
				end
				if list.armor_current_state and bta[list.armor_current_state] and bta[list.armor_current_state].custom then
					armor_id = list.armor_current_state
				end
				if armor_id then
					local armor_sequence
					if armor_id == "level_9" then
						armor_sequence = "spawn_prop_winter_suit"
					elseif armor_id == "level_10" then
						armor_sequence = "spawn_prop_sneak_suit"
					elseif armor_id == "level_11" then
						armor_sequence = "spawn_zeal_heavy_armour"
					elseif armor_id == "level_12" then
						armor_sequence = "spawn_skulldozer_armour"
					elseif armor_id == "level_13" then
						armor_sequence = "spawn_zeal_taser_armour"
					elseif armor_id == "level_14" then
						armor_sequence = "spawn_spooc_armour"
					end
					if armor_sequence and unit:damage() and unit:damage():has_sequence(armor_sequence) then
						unit:damage():run_sequence_simple(armor_sequence)
					end
				end
			end
		end
	end
end

Hooks:PostHook(NetworkPeer, "spawn_unit", "spawn_unit_AddOnArmourSyncFix", function(self)
	DelayedCalls:Add("spawn_unit_AddOnArmourSyncFix_" .. self:id(), 2, function ()
		LuaNetworking:SendToPeers("BeardLib_check_send_outfit", managers.blackmarket:outfit_string())
	end)
end)

Hooks:Add("NetworkReceivedData", "NetReceived_AddOnArmourSyncFix", function(sender, sync_asked, data)
	if sync_asked and data then
		if sync_asked == "BeardLib_check_send_outfit" then
			data = tostring(data)
			sender = tonumber(sender)
			DelayedCalls:Add("spawn_unit_AddOnArmourSyncFix_" .. sender, 2, function ()
				Sync2All_AddOnArmourSyncFix(sender, data)
			end)
		end
	end
end)