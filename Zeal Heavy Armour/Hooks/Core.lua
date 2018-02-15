if not PackageManager:loaded("packages/lvl_dah") then
	PackageManager:load("packages/lvl_wwh")
end

if not PackageManager:loaded("packages/sm_wish") then
	PackageManager:load("packages/sm_wish")
end

Hooks:Add("BeardLibCreateScriptDataMods", "ZealHeavyArmourReplaceScriptData", function()
	BeardLib:ReplaceScriptData("assets/mod_overrides/Zeal Heavy Armour/ScriptData/npc_criminals_suit_1.xml", "custom_xml", "units/payday2/characters/npc_criminals_suit_1/npc_criminals_suit_1", "sequence_manager", {custom = true})
	BeardLib:ReplaceScriptData("assets/mod_overrides/Zeal Heavy Armour/ScriptData/npc_criminal_female_1.xml", "custom_xml", "units/payday2/characters/npc_criminal_female_1/npc_criminal_female_1", "sequence_manager", {custom = true})
	BeardLib:ReplaceScriptData("assets/mod_overrides/Zeal Heavy Armour/ScriptData/npc_criminal_bonnie.xml", "custom_xml", "units/pd2_dlc_bonnie/characters/npc_criminal_bonnie/npc_criminal_bonnie", "sequence_manager", {custom = true})
	BeardLib:ReplaceScriptData("assets/mod_overrides/Zeal Heavy Armour/ScriptData/npc_criminal_sydney.xml", "custom_xml", "units/pd2_dlc_opera/characters/npc_criminals_fem_3/npc_criminal_sydney", "sequence_manager", {custom = true})
	BeardLib:ReplaceScriptData("assets/mod_overrides/Zeal Heavy Armour/ScriptData/npc_criminal_wild_1.xml", "custom_xml", "units/pd2_dlc_wild/characters/npc_criminals_wild_1/npc_criminal_wild_1", "sequence_manager", {custom = true})
	BeardLib:ReplaceScriptData("assets/mod_overrides/Zeal Heavy Armour/ScriptData/npc_criminal_ecp_male.xml", "custom_xml", "units/pd2_dlc_ecp/characters/npc_criminals_ecp_male/npc_criminal_ecp_male", "sequence_manager", {custom = true})
	BeardLib:ReplaceScriptData("assets/mod_overrides/Zeal Heavy Armour/ScriptData/npc_criminal_ecp_female.xml", "custom_xml", "units/pd2_dlc_ecp/characters/npc_criminal_ecp_female/npc_criminal_ecp_female", "sequence_manager", {custom = true})
	BeardLib:ReplaceScriptData("assets/mod_overrides/Zeal Heavy Armour/ScriptData/npc_criminal_myh.xml", "custom_xml", "units/pd2_dlc_myh/characters/npc_criminals_myh/npc_criminal_myh", "sequence_manager", {custom = true})
	BeardLib:ReplaceScriptData("assets/mod_overrides/Zeal Heavy Armour/ScriptData/npc_criminal_max.xml", "custom_xml", "units/pd2_dlc_max/characters/npc_criminals_max/npc_criminal_max", "sequence_manager", {custom = true})
	BeardLib:ReplaceScriptData("assets/mod_overrides/Zeal Heavy Armour/ScriptData/npc_criminal_terry.xml", "custom_xml", "units/pd2_dlc_chico/characters/npc_criminals_terry/npc_criminal_terry", "sequence_manager", {custom = true})
end)