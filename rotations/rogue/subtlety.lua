local unpack = _G.unpack

local keybind_list_1 = {

	{key = '1', text = 'Shift Keybind'},
	{key = '2', text = 'Control Keybind'},
	{key = '3', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},	
	
}

local keybind_list_2 = {

	{key = '4', text = 'Shift Keybind'},
	{key = '5', text = 'Control Keybind'},
	{key = '6', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},	

}

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\assassin.blp', width = 128, height = 128, offset = 90, y = -50, align = 'center'},

}

local GUI = {

	unpack(Logo_GUI),

	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = 'spacer'},
	{type = 'text', text = "Run /TargetEnemyPlayer:|c0000FA9A target Stealthed:|r"},
	{type = 'combo', default = '2', key = 'list1', list = keybind_list_1, width = 100},
	{type = 'text', text = "Use Sap:|c0000FA9A <= 10 yd, pause if already:|r"},
	{type = 'text', text = "Use Blind:|c0000FA9A in combat:"},
	{type = 'spacer'},
	{type = 'combo', default = '4', key = 'list2', list = keybind_list_2, width = 100},	
	{type = 'text', text = "Use Cheap Shot:|c0000FA9A Stealthed:"},
	{type = 'text', text = "Use Kidney Shot:|c0000FA9A not Stealthed:"},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun:|c0000FA9A auto stun PVP Target [Kidney Shot].|r", align = 'left', key = 'stun', default = true},
--  {type = 'checkbox',	text = "Vanish:|c0000FA9A target not stuned and [Kidney Shot] is on CD", align = 'left', key = 'van_no_stun', default = false},
--	{type = 'checkbox',	text = "Blind:|c0000FA9A target not stuned and [Vanish] is on CD", align = 'left', key = 'blind_no_van', default = false},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = 'checkspin', text = 'Use Vanish:', key = 'van', check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Crimson Vial:', key = 'cv', check = true, spin = 75, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Evasion:', key = 'eva', check = true, spin = 80, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},	

	{type = 'header', size = 16, text = 'Other', align = 'center'},
	{type = 'checkbox', text = "Pick Pocket:|c0000FA9A < 10 yards when you stand and don't move", 	key = 'pp',   default = false},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 10 sec|r", align = 'center'},
    {type = 'text', text = "Shadow Blades:"},
	
} 

local exeOnLoad = function()

 	print('|c0000FA9A ----------------------------------------------------------------------|r')
 	print('|c0000FA9A --- |r|cffffff00ROGUE - Subtlety|r')	
	print('|c0000FA9A ------------------------PVP-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/2 - 2/2 - 3/3 - 4/1 - 5/1 - 6/1 - 7/1')
    print('|c0000FA9A')
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/2 - 2/2 - 3/3 - 4/1 - 5/1 - 6/1 - 7/1')
 	print('|c0000FA9A ----------------------------------------------------------------------|r')
	
		NeP.Interface:AddToggle({
		key = 'Dotting',
		icon = 'Interface\\Icons\\ability_rogue_nightblade',
		name = 'Nightblade',
		text = 'Include Nightblade in rotation',
	})
	
end

local pvp = {

    {"Every Man for Himself", "UI(medal) & player.state(stun) & !player.buff(Vanish) & !player.buff(Stealth)", "player"},        
    {"Gladiator's Medallion", "UI(medal) & !player.buff(Vanish) & !player.buff(Stealth) & {player.state(stun) & player.spell(Every Man for Himself)cooldown >= gcd || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},        
	{"/stopattack", "target.state(disorient) & !player.buff(Stealth) || target.debuff(Blind) & !player.buff(Stealth) || player.buff(Vanish) || target.immune_all"},
    --{"Kidney Shot", "inmelee & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & UI(stun) & target.debuff(Cheap Shot).duration <= 0.5", "target"},

    --{"Vanish", "!player.buff(Stealth) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & UI(van_no_stun) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & player.spell(Kidney Shot).cooldown >= gcd & !player.buff(Evasion)  & {target.class(Rogue) & player.spell(Blind).cooldown >= gcd || !target.class(Rogue)}"}, --test  & targettarget.is(player)
    --{"Blind", "!player.buff(Stealth) & !player.buff(Vanish) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & !target.debuff(Blind) & UI(blind_no_van) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & !player.lastcast(Vanish) & player.spell(Kidney Shot).cooldown >= gcd & !target.immune(disorient) & !player.buff(Evasion)", "target"},-- & targettarget.is(player)

}

local Keybinds = {

	{"Cheap Shot", "target.debuff(Cheap Shot).duration <= 0.5 & inmelee & {player.buff(Stealth) || player.buff(Shadow Dance) || player.buff(Subterfuge)} & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Sap", "target.enemy & range <= 10 & !target.state(stun) & !target.state(disorient) & !debuff(Sap) & !combat & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
	{"Kidney Shot", "inmelee & !player.buff(Stealth) & !player.buff(Vanish) & !player.buff(Shadow Dance) & !player.buff(Subterfuge) & player.spell(Shadow Dance).charges < 1 & player.combopoints >= 3 & target.debuff(Cheap Shot).duration <= 0.5 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Blind", "range <= 15 & !player.buff(Stealth) & !player.buff(Vanish) & !player.buff(Shadow Dance) & !player.buff(Subterfuge) & player.combat & {target.buff(Touch of Karma) || keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},

}

local PreCombat = {


	--Leveling
    {"Sinister Strike", "target.inmelee & {player.level < 8 || player.level >= 8 & player.level <= 11 || !keybind(alt) & !keybind(shift) & !keybind(control) & player.level >= 8 & player.level <= 11} & {target.player & player.pvp || !target.player}", "target"},
	--End Leveling

	{"Pick Pocket", "UI(pp) & !player.moving & player.buff(Stealth) & !player.lastcast(Pick Pocket) & creatureType(Humanoid) & !target.player & range < 7 & !isdummy", "target"},	
	{"%pause", "target.debuff(Sap) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & {!target.player || target.player & player.pvp}"},	
    {"/stopattack", "{player.buff(Vanish) || player.buff(Stealth)} & target.buff(Touch of Karma)"},

	{"Cheap Shot", "player.buff(Stealth) & inmelee & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || target.player & player.pvp & !target.immune(stun)}", "target"},
	{"Shadowstrike", "player.buff(Stealth) & range <= 7 & infront", "target"},

}

local Survival ={

    {"Blind", "target.buff(Touch of Karma) & !player.buff(Stealth) & !player.buff(Vanish)", "target"}, -- || many more target CD's
    {"Vanish", "player.combat & !player.buff(Stealth) & player.health < target.health & player.health <= UI(van_spin) & UI(van_check)"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"Evasion", "player.health <= UI(eva_spin) & UI(eva_check) & !player.buff(Stealth) & !player.buff(Vanish) & player.incdmg.phys(5) >= 100000"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)"}, --Health Stone
	
}

local Cooldowns ={

	{"Shadow Blades", "target.inmelee"},
    {"Goremaw's Bite", "target.inmelee & !player.buff(Shadow Dance) & !player.buff(Subterfuge) & player.combopoints <= 2 & player.energy <= 85", "target"},
	
}

local Interrupts = {

	{"Kick", "target.interruptAt(75) & target.inmelee", "target"},
	{"Kick", "interruptAt(75)& inmelee", "enemies"},

}

local Combat = {
	
    {"/startattack", "!isattacking & target.inmelee"},
    {"Tricks of the Trade", "player.aggro & {group.type == 3 || group.type == 2}", "tank"},
	--MASS Shuriken
	{"Shuriken Storm", "toggle(aoe) & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints < 5 & player.area(8).enemies >= 4"},
	
    --Steath Actions
	{"Symbols of Death", "target.inmelee & player.buff(Symbols of Death).duration <= 4"},
	{"Shadowstrike", "!player.buff(Vanish) & range <= 15 & player.combopoints < 5 & {player.buff(Shadow Dance) || player.buff(Subterfuge)}", "target"},
	{"Shadowstrike", "!player.buff(Vanish) & range <= 15 & player.combopoints < 5 & player.buff(Subterfuge)", "target"},
	
	--Finishers  
	{"Nightblade", "toggle(Dotting) & deathin > 10 & inmelee & player.combopoints == 5 & debuff(Nightblade).duration <= 3.5", "target"},
	{"Eviscerate", "player.combopoints == 5 & inmelee", "target"},
	
	--Stealth Cooldowns
    {"Shadow Dance", "!player.buff(Shadow Dance) & !player.buff(Subterfuge) & !player.combopoints > 4 & player.energy >= 38 & target.range < 15"},
    
	--Build Combo Point
	{"Backstab", "!talent(1,3) & player.combopoints < 5 & !player.buff(Stealth) & !player.buff(Shadow Dance) & !player.buff(Vanish) & !player.buff(Subterfuge) & {player.spell(Shadow Dance).charges < 1 || player.level < 40}", "target"},
	{"Gloomblade", "talent(1,3) & player.combopoints < 5 & !player.buff(Stealth) & !player.buff(Shadow Dance) & !player.buff(Vanish) & !player.buff(Subterfuge) & {player.spell(Shadow Dance).charges < 1 || player.level < 40}", "target"},

}

local inCombat = {

	{"/stopattack", "player.pvp & target.player & target.enemy & target.alive & target.debuff(Blind) & !player.buff(Stealth)"},
    {pvp, "player.pvp & target.player & target.enemy & target.alive"},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & target.infront & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{Survival, "player.health <100"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
    {"/stopattack", "target.debuff(Blind) & target.player & !player.buff(Stealth) || target.buff(Touch of Karma) || player.buff(Vanish) & target.player || target.immune_all", "player"},
	{Combat, "!player.buff(Stealth) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
    
}

local outCombat = {

    {"/targetenemyplayer", "!target.exists & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}"},
	{"Stealth", "!player.buff(Stealth) & !player.buff(Vanish) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"/stopattack", "player.pvp & target.player & target.enemy & target.alive & {target.debuff(Blind) & !player.buff(Stealth) || target.state(disorient) & !player.buff(Stealth)|| target.state(fear) & !player.buff(Stealth) || target.debuff(Polymorph) & !player.buff(Stealth) || target.immune_all}", "player"},
    {Keybinds},
	{PreCombat, "target.enemy & target.alive"},

}

NeP.CR:Add(261, {
	name = '[|cffffff00Kleei|r]|cffffff00 ROGUE - Subtlety',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="750", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
