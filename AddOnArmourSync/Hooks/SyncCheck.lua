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