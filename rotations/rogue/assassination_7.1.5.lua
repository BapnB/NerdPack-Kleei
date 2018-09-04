local unpack = _G.unpack

local keybind_list_1 = {

	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	
}

local keybind_list_2 = {

	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	

}

local keybind_list_3 = {

	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	

}

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\assassin.blp", width = 160, height = 160, offset = 125, y = -60, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "2", key = "list1", list = keybind_list_1, width = 100},
	{type = "text", text = "Use Sap:|c0000FA9A "},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "4", key = "list2", list = keybind_list_2, width = 100},	
	{type = "text", text = "Use Cheap Shot:|c0000FA9A when Stealthed:"},
	{type = "text", text = "Use Kidney Shot:|c0000FA9A when not Stealthed:"},
	{type = "text", text = "Use Blind:|c0000FA9A when > 10 yd"},
	--{type = "text", text = "", align = "center"}, --------------------------------------
	--{type = "combo", default = "9", key = "list3", list = keybind_list_3, width = 100},		
    --{type = "text", text = "Use Shadowstep:|c0000FA9A on target"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = "checkbox",	text = "Stun:|c0000FA9A auto stun PVP Target [Kidney Shot].|r", align = "left", key = "stun", default = true},
    {type = "checkbox",	text = "Sap:|c0000FA9A auto [Sap] PVP Target.", align = "left", key = "sap_key", default = true},
    --{type = 'checkbox',	text = "Vanish:|c0000FA9A target PVP not stuned and [Kidney Shot] is on CD", align = 'left', key = 'van_no_stun', default = false},
	--{type = 'checkbox',	text = "Blind:|c0000FA9A target PVP not stuned and [Vanish] is on CD", align = 'left', key = 'blind_no_van', default = false},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Feint:|c0000FA9A [Will of Valeera]", key = "fnt", check = true, spin = 30, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Vanish:", key = "van", check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Crimson Vial:', key = 'cv', check = true, spin = 75, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Evasion:', key = 'eva', check = true, spin = 80, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Cooldowns Toggle:", align = 'center'},
	{type = "checkbox", text = "Vendetta:|c0000FA9A (optimised)", key = "vendeta_cd_key", default = true},
	{type = "checkbox", text = "KingsBane:|c0000FA9A (optimised)", key = "kings_bane_cd_key", default = true},
	{type = "checkbox", text = "Thistle Tea:|c0000FA9A when energy < 40 and target boss or PVP enemy", key = "tea_key", default = true},
	{type = "checkbox", text = "Blood Fury:|c0000FA9A ORC Racial", key = "bloodfury_key", default = true},
	{type = "checkbox", text = "Berserking:|c0000FA9A Troll Racial", key = "berserking_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Other", align = "center"},
	{type = "checkbox", text = "Auto Stealth:|c0000FA9A when you have enemy target", key = "stealth_key", default = true},
	{type = "checkbox", text = "Use Tricks of the Trade:|c0000FA9A in dungeon on tank", key = "tott", default = true},
	{type = "checkbox", text = "Pick Pocket:|c0000FA9A when in Range", key = "pocket_key",   default = false},
	{type = "checkbox", text = "Poisons:|c0000FA9A <= 10 min.", key = "poisons_key",   default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = "Trinkets", align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

} 

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r|cffffff00ROGUE - Assassination|r|c00FF0000 for Advanced Unlocker|r")
	print('|c0000FA9A ------------------------PVP-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/1 - 2/3 - 3/3 - 4/3 - 5/2 - 6/3 - 7/1')
    print('|c0000FA9A')
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/1 - 2/2 - 3/3 - 4/1 - 5/1 - 6/2 - 7/1')
 	print('|c0000FA9A ----------------------------------------------------------------------|r')
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")
    
	NeP.Interface:AddToggle({key = "rupture_key", icon = "Interface\\Icons\\ability_rogue_rupture", name = "Rupture", text = "Include Rupture in rotation."})

end

local Garrote = {

    {"%pause", "player.energy <= 45"},
    {"Garrote", "inRange.spell", "target"},

}

local pvp = {

    {"!Every Man for Himself", "UI(medal) & state(stun) & !buff(Stealth) & !buff(Vanish)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & !buff(Stealth) & !buff(Vanish) & target.player & target.canAttack & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

--[[local pvp_1v1 = {

    {"!Every Man for Himself", "UI(medal) & state(stun) & !buff(Stealth) & !buff(Vanish)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & !buff(Stealth) & !buff(Vanish) & target.player & {player.state(stun) & player.spell(Every Man for Himself)cooldown > 0 & player.race = Human || player.state(stun) & !player.race = Human || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
    
	{"Kidney Shot", "inRange.spell & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & UI(stun) & target.debuff(Cheap Shot).duration <= 0.5", "target"},

    {"Vanish", "!player.buff(Stealth) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & UI(van_no_stun) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & player.spell(Kidney Shot).cooldown >= gcd & !player.buff(Evasion)  & {target.class(Rogue) & player.spell(Blind).cooldown >= gcd || !target.class(Rogue)}"}, --test  & targettarget.is(player)
    {"Blind", "inRange.spell & !player.buff(Stealth) & !player.buff(Vanish) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & !target.debuff(Blind) & UI(blind_no_van) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & !player.lastcast(Vanish) & player.spell(Kidney Shot).cooldown >= gcd & !target.immune(disorient) & !player.buff(Evasion)", "target"},-- & targettarget.is(player)

}]]

local Keybinds = {

	{"Cheap Shot", "inRange.spell & player.buff(Stealth) & !player.buff(Vanish) & !immune_stun & !state(stun) & {spell(Garrote).cooldown > gcd || keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Kidney Shot", "inRange.spell & !IsStealthed & !immune_stun & !state(stun) & player.combopoints >= 3 & {UI(stun) & target.player || keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Sap", "inRange.spell & !player.buff(Vanish) & !immune_stun & !state(stun) & !state(disorient) & !state(incapacitate) & !combat & {UI(sap_key) & target.player || keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
	{"Blind", "inRange.spell & {!target.inRange(Kidney Shot).spell || spell(Kidney Shot).cooldown > 1} & !immune_stun & !state(stun) & !state(disorient) & !state(incapacitate) & !player.buff(Vanish) & {target.buff(Touch of Karma) || keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},

}

local PreCombat = {

    --Leveling
    {"Sinister Strike", "inRange.spell & {player.level < 8 || !keybind(alt) & !keybind(shift) & !keybind(control) & player.level >= 8 & player.level <= 11}", "target"},
	--End Leveling

	{"Pick Pocket", "inRange.spell & UI(pocket_key) & !isdummy & !target.player & !player.moving & player.buff(Stealth) & !player.lastcast(Pick Pocket) & creatureType(Humanoid)", "target"},	

	{"Garrote", "inRange.spell", "target"},

}

local Survival ={

	{"#neck", "equiped(Eternal Will of the Martyr) & !IsStealthed & player.health <= 40"},
    --{"Blind", "inRange.spell & !IsStealthed & player.area(10).enemies < 2 & targettarget(player) & target.buff(Touch of Karma)", "target"}, -- || many more target CD's
    {"Vanish", "player.combat & !IsStealthed & player.health < target.health & player.health <= UI(van_spin) & UI(van_check)"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"Evasion", "player.health <= UI(eva_spin) & UI(eva_check) & !IsStealthed & player.incdmg.phys(5) >= 100000"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)"}, --Health Stone
    {"Feint", "!player.buff(Will of Valeera) & equipped(Will of Valeera) & player.health <= UI(fnt_spin) & UI(fnt_check) & !pvp.area"},
	
}

local Interrupts = {

	{"!Kick", "interruptAt(60) & inRange.spell & canAttack & infront & {player.level < 100 || !indungeon}", "target"},
	{"!Kick", "interruptAt(1) & inRange.spell & canAttack & infront & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent", "interruptAt(1) & inRange(Kick).spell & canAttack & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent",	"interruptAt(60) & inRange(Kick).spell & canAttack & {player.level < 100 || !indungeon}", "target"},

}

local Cooldowns = {

	{"&Vendetta", "UI(vendeta_cd_key) & inRange(Mutilate).spell & canAttack & infront & debuff(Rupture) & {target.debuff(Agonizing Poison).count == 5 || !talent(6,1)} & {spell(KingsBane).cooldown <= 5 || spell(KingsBane).cooldown > 14 || !UI(kings_bane_cd_key)}", "target"},
	{"KingsBane", "UI(kings_bane_cd_key) & inRange.spell & canAttack & player.combopoints < 4 & {target.debuff(Agonizing Poison).count == 5 || !talent(6,1)} & {target.debuff(Vendetta) || spell(Vendetta).cooldown > 13 || !UI(vendeta_cd_key)}", "target"},
    {"#7676", "UI(tea_key) & target.inRange(Garrote).spell & target.canAttack & item(7676).count > 0 & player.energy < 40 & {target.boss || target.player}"},

	{"Blood Fury", "UI(bloodfury_key) & target.inRange(Mutilate).spell & target.canAttack"},
    {"Berserking", "UI(berserking_key) & target.inRange(Mutilate).spell & target.canAttack"},

	{"Exsanguinate", "talent(6,3) & inRange.spell & canAttack & target.deathin > 5 & target.debuff(Rupture).duration > 18 & debuff(Garrote).duration > 10", "target"},

	{"#trinket1", "UI(trk1) & target.inRange(Mutilate).spell & target.canAttack"},
	{"#trinket2", "UI(trk2) & target.inRange(Mutilate).spell & target.canAttack"},

}

local Combat = {

    {"/startattack", "!isattacking & target.inRange(Mutilate).spell & target.canAttack & target.infront & !IsStealthed"},	
    {"Tricks of the Trade", "inRange.spell & indungeon & UI(tott)", "tank"},

    --AoEs
    {"Fan of Knives", "toggle(AoE) & player.area(10).enemies >= 3 & {player.combopoints < 4 || target.fixRange > 8 || !target.exists}"},
    --{"Envenom", "toggle(AoE) & inRange.spell & player.combopoints > 3 & player.area(5).enemies >= 7", "target"},
	{"Rupture", "toggle(AoE) & toggle(rupture_key) & inRange.spell & canAttack & infront & !pvp & target.debuff(Rupture) & debuff(Rupture).duration < 3 & deathin > 12 & player.combopoints > 2 & count.enemies.debuffs(Rupture) < 3 & player.area(6).enemies >= 2", "enemies"},

    --Finishers
	{"Rupture", "toggle(rupture_key) & inRange.spell & canAttack & infront & {target.deathin > 12 || target.isdummy} & player.combopoints > 2 & !talent(6,3) & target.debuff(Rupture).duration <= 8", "target"},
    {"Envenom", "talent(6,3) & inRange.spell & canAttack & infront & player.combopoints > 3  & player.spell(Exsanguinate).cooldown > 33", "target"},
	{"Death from Above", "talent(7,3) & inRange.spell & canAttack & infront & !player.buff(Stealth) & player.combopoints > 3", "target"},
	{"Envenom", "inRange.spell & canAttack & infront & player.combopoints > 3 & {talent(7,3) & spell(Death from Above).cooldown > 1 || !talent(7,3)}", "target"},-- & {target.debuff(Rupture).duration > 9 || target.deathin < 12 || !toggle(Rupt) || player.area(5).enemies.infront >= 3}

    --Builders
    {Garrote, "inRange(Garrote).spell & canAttack & infront & player.combopoints < 4 & debuff(Garrote).duration < 5", "target"},
	{"Hemorrhage", "inRange.spell & canAttack & infront & talent(1,3) & player.combopoints < 4 & debuff(Hemorrhage).duration < 5", "target"},
	{"Mutilate", "inRange.spell & canAttack & infront & player.combopoints < 4"},

    {"Sinister Strike", "inRange.spell & canAttack & infront & {player.level < 3 || player.combopoints <= 4 & player.level < 40}"},
	{"Eviscerate", "inRange.spell & canAttack & infront & player.level < 36 & player.combopoints > 4"},

}

local Poisons = {

    {"!/stopcasting", "player.casting(Deadly Poison) & player.buff(Deadly Poison).duration > 600"},
	{"Deadly Poison", "!talent(6,1) & !player.casting(Deadly Poison) & player.buff(Deadly Poison).duration <= 600"},
    {"!/stopcasting", "player.casting(Agonizing Poison) & player.buff(Agonizing Poison).duration > 600"},
	{"Agonizing Poison", "talent(6,1) & !player.casting(Agonizing Poison) & player.buff(Agonizing Poison).duration <= 600"},
	{"!/stopcasting", "player.casting(Leeching Poison) & player.buff(Leeching Poison).duration > 600"},
	{"Leeching Poison", "talent(4,1) & !player.casting(Leeching Poison) & player.buff(Leeching Poison).duration <= 600"},
	{"!/stopcasting", "player.casting(Crippling Poison) & player.buff(Crippling Poison).duration > 600"},
	{"Crippling Poison", "!talent(4,1) & !player.casting(Crippling Poison) & player.buff(Crippling Poison).duration <= 600"},
	
}
	
local inCombat = {

    {"Shadowstep", "inRange.spell & {UI(sap_key) & target.player || keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "cursor"},
    {pvp},
	{Survival, "player.health < 100"},
	{"!/stopattack", "player.buff(Vanish) || target.immune_all"},
    --{pvp_1v1, "player.pvp & target.player & target.enemy & target.alive"},
    {Keybinds, "target.canAttack & target.alive & target.infront"},
    {Interrupts, "toggle(interrupts) & target.canAttack & target.alive & !IsStealthed"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack & target.alive & target.infront & !IsStealthed"},
	{Combat, "target.canAttack & target.alive"},

}

local outCombat = {

    {pvp},
	{"Stealth", "UI(stealth_key) & !player.state(dot) & !IsStealthed & target.enemy & target.canAttack & target.alive"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"!/stopattack", "player.buff(Vanish) || target.immune_all"},
    {Keybinds, "target.canAttack & target.alive & target.infront"},
	{PreCombat, "target.canAttack & target.alive & target.infront"},
	{Poisons, "UI(poisons_key) & !player.moving & !player.buff(Vanish)"},

}

NeP.CR:Add(259, {
	name = '[|cffffff00Kleei|r]|cffffff00 ROGUE - Assassination [7.1.5]',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})
