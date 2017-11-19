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

    {type = 'spacer'},
	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = 'spacer'},
	{type = 'combo', default = '2', key = 'list1', list = keybind_list_1, width = 100},	
	{type = 'text', text = "Use Sap:|c0000FA9A <= 10 yards, pause if already:|r"},
	{type = 'text', text = "Use Blind:|c0000FA9A in combat:"},
	{type = 'spacer'},
	{type = 'combo', default = '4', key = 'list2', list = keybind_list_2, width = 100},	
	{type = 'text', text = "Use Cheap Shot:|c0000FA9A Stealth:"},	
	{type = 'text', text = "Use Kidney Shot:|c0000FA9A in melee not in Stealth:"},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    --{type = 'checkbox',	text = "Sap:|c0000FA9A auto Sap PVP Target.|r", align = 'left', key = 'sapp', default = true},
    {type = 'checkbox',	text = "Stun:|c0000FA9A auto stun PVP Target [Kidney Shot].|r", align = 'left', key = 'stun', default = true},
    {type = 'checkbox',	text = "Vanish:|c0000FA9A target PVP not stuned and [Kidney Shot] is on CD", align = 'left', key = 'van_no_stun', default = true},
	{type = 'checkbox',	text = "Blind:|c0000FA9A target PVP not stuned and [Vanish] is on CD", align = 'left', key = 'blind_no_van', default = true},
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
	{type = 'checkbox', text = "Poisons:|c0000FA9A <= 10 min.", 	key = 'pos',   default = true},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},	
	
    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 10 sec|r", align = 'center'},	
    {type = 'text', text = "Vendetta:"},
	{type = 'spacer'},
	
} 

local exeOnLoad = function()
	
	print('|cffADFF2F ------------------------PVP-------------------------------------------|r')
 	print('|cffADFF2F --- |r|cffffff00ROGUE - Assassination|r')
 	print('|cffADFF2F --- |rRecommended Talents: 1/1 - 2/3 - 3/3 - 4/3 - 5/2 - 6/3 - 7/1')
 	print('|cffADFF2F ----------------------------------------------------------------------|r')
	
	print('|cffADFF2F ------------------------PVE-------------------------------------------|r')
 	print('|cffADFF2F --- |r|cffffff00ROGUE - Assassination|r')
 	print('|cffADFF2F --- |rRecommended Talents: 1/1 - 2/3 - 3/3 - 4/1 - 5/1 - 6/2 - 7/1')
 	print('|cffADFF2F ----------------------------------------------------------------------|r')


--		NeP.Interface:AddToggle({
--		key = 'Dotting',
--		icon = 'Interface\\Icons\\trade_brewpoison',
--		name = 'Auto Dotting',
--		text = 'ON/OFF Dotting rotation',

--})

end

local Garrote = {

    {"%pause", "player.energy <= 44"},
    {"Garrote", nil, "target"},

}

local Keybinds = {

    {"%pause", "target.debuff(Blind) & !target.pvp & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}"},
    {"/stopattack", "player.buff(Vanish) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},
	
    --{"Shadowstep", "range <= 25 & range >= 9 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Sap", "range <= 10 & !target.state(stun) & !target.state(disorient) & !debuff(Sap) & !combat & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
	--{"Cheap Shot", "inmelee & infront & player.buff(Stealth) & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || !toggle(interrupts) & target.pvp}", "target"},
	{"Kidney Shot", "inmelee & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || target.pvp & player.pvp & UI(stun) & target.debuff(Cheap Shot).duration <= 0.5}", "target"},
	{"Blind", "!player.buff(Stealth) & !player.buff(Vanish) & player.combat & range <= 15 & {target.buff(Touch of Karma) || keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
	
}

local PreCombat = {

    --Leveling
    {"Sinister Strike", "target.inmelee & {player.level < 8 || player.level >= 8 & player.level <= 11 || !keybind(alt) & !keybind(shift) & !keybind(control) & player.level >= 8 & player.level <= 11} & {!target.pvp || target.pvp & player.pvp}", "target"},
	--{"Sinister Strike", " & target.range < 6"},
	--End Leveling

	{"Pick Pocket", "UI(pp) & !player.moving & player.buff(Stealth) & !player.lastcast(Pick Pocket) & creatureType(Humanoid) & !pvp & enemy & alive & range < 7 & !isdummy", "target"},	
	{"%pause", "target.debuff(Sap) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & {!target.pvp || target.pvp & player.pvp}"},	
	
    {"/stopattack", "player.buff(Vanish) & target.buff(Touch of Karma)"},
	--{"Sap", "range <= 10 & !debuff(Sap) & UI(sapp) & target.pvp & player.pvp & !target.state(stun)", "target"}, -- & creatureType(Humanoid) & creatureType(Beast) & creatureType(Demon) & creatureType(Dragonkin)

	{"Cheap Shot", "player.buff(Stealth) & inmelee & {player.spell(Garrote).cooldown > gcd || !target.caster & target.pvp & player.pvp || keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Garrote", "inmelee & player.buff(Stealth) & {target.caster & target.pvp & player.pvp || !target.pvp}", "target"},
	
}

local Survival ={

    {"Blind", "target.buff(Touch of Karma)", "target"}, -- || many more target CD's
    {"Vanish", "player.combat & !player.buff(Stealth) & player.health < target.health & player.health <= UI(van_spin) & UI(van_check)"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"Evasion", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)"}, --Health Stone
	
}

local Interrupts = {

    {"/stopattack", "player.buff(Vanish) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},
	{"Kick", "target.interruptAt(75) & target.inmelee", "target"},
	--{"Cloak of Shadows", "target.interruptAt(75) & target.caster & target.pvp & targettarget.is(player) & {player.spell(Kick).cooldown > 0.1 || player.state(root) || target.range >= 7}", "target"},
	--{"Cheap Shot", "player.buff(Stealth) & target.inmelee"},
	--{"Kidney Shot", "cooldown(Kick).duration > gcd & target.inmelee"},
	--{"Blind", "!target.inmelee"},
	--{"Blind", "cooldown(Kidney Shot).duration > gcd"},
	
}

local Cooldowns = {

    {"/stopattack", "target.buff(Touch of Karma) || player.buff(Vanish) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},
	
	{"Vendetta", "target.inmelee & {artifact.enabled(Urge to Kill) & player.energy <= 60 || !artifact.enabled(Urge to Kill)}"},
    {"Blood Fury", "target.inmelee & target.deathin > 5"},

	{"Exsanguinate", "talent(6,3) & target.deathin > 12 & target.debuff(Rupture).duration > 18 & debuff(Garrote).duration > 10", "target"},
	
	{"#trinket1", "UI(trk1) & target.inmelee & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.inmelee & target.deathin >= 10"},

}

local Combat = {

    {"/stopattack", "target.buff(Touch of Karma) || player.buff(Vanish) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},
    {"/startattack", "!isattacking & target.inmelee"},
    {"Tricks of the Trade", "player.aggro & {group.type == 3 || group.type == 2}", "tank"},
    --Mass
    {"Fan of Knives", "toggle(AoE) & player.combopoints < 5 & player.area(8).enemies >= 3 & count.enemies(Deadly Poison).debuffs < player.area(10).enemies"},
	
	--Dotting
	{"Hemorrhage", "talent(1,3) & player.combopoints < 5 & target.debuff(Hemorrhage).duration <= 4", "target"},
	{"KingsBane", "target.deathin > 8 & target.debuff(Deadly Poison)", "target"},
	{"Rupture", "target.deathin > 12 & player.combopoints >= 5 & {talent(6,3) & target.debuff(Rupture).duration <= 8 & player.spell(Exsanguinate).cooldown <= 33 || !target.debuff(Rupture) || !talent(6,3) & target.debuff(Rupture).duration <= 8}", "target"},
    {Garrote, "target.deathin > 5 & player.combopoints <= 4 & target.debuff(Garrote).duration <= 5", "target"},

    {"Envenom", "talent(6,3) & player.combopoints >= 4 & player.spell(Exsanguinate).cooldown > 33", "target"},
	{"Envenom", "player.combopoints >= 4 & {target.debuff(Rupture).duration > 9 || target.deathin < 12}", "target"},
	{"Mutilate", "!player.combopoints > 4"},
	
	{"Eviscerate", "player.level < 36 & player.combopoints == 5"},
    {"Sinister Strike", "player.level < 3 || player.combopoints <= 4 & player.level < 40"},
   
}

local inCombat = {


    {"/stopattack", "target.enemy & {player.buff(Vanish) || target.state(disorient) & target.pvp & !player.buff(Stealth) || target.state(fear) & target.pvp & !player.buff(Stealth) || target.debuff(Polymorph) & target.pvp & !player.buff(Stealth) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},
    {"Cloak of Shadows", "target.pvp & player.pvp & player.state(dot) & {player.buff(Vanish) || player.buff(Stealth)}"},
	
	{"Every Man for Himself", "target.pvp & player.pvp & UI(medal) & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},	
	{"Gladiator's Medallion", "target.pvp & player.pvp & UI(medal) & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},	
	
    {"Vanish", "!player.buff(Stealth) & !player.buff(Vanish) & !player.buff(Cloak of Shadows) & !debuff(Sap) & target.pvp & player.pvp & targettarget.is(player) & UI(van_no_stun) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & player.spell(Kidney Shot).cooldown > gcd"}, --test
    {"Blind", "!player.buff(Stealth) & !player.buff(Vanish) & !player.buff(Cloak of Shadows) & !debuff(Sap) & target.pvp & player.pvp & targettarget.is(player) & UI(blind_no_van) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & !player.lastcast(Vanish) & player.spell(Kidney Shot).cooldown > gcd & !target.immune(disorient)", "target"},
	
    {Keybinds, "target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
    {Interrupts, "toggle(interrupts) & infront & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
	{Combat, "target.inmelee & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},

}

local outCombat = {

	{"Stealth", "!player.buff(Stealth) & !player.buff(Vanish) & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
    {"Cloak of Shadows", "target.pvp & player.pvp & player.state(dot) & {player.buff(Vanish) || player.buff(Stealth)}"},
	
	{"/stopattack", "target.enemy & {player.buff(Vanish) || target.state(disorient) & target.pvp & !player.buff(Stealth)|| target.state(fear) & target.pvp & !player.buff(Stealth) || target.debuff(Polymorph) & target.pvp & !player.buff(Stealth) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},

	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check) & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
	
    {Keybinds, "target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
	{PreCombat, "target.enemy & target.alive"},
	
	-- Poisons
	{"Deadly Poison", "UI(pos) & !player.moving & player.buff(Deadly Poison).duration <= 600"},
	{"Leeching Poison", "talent(4,1) & UI(pos) & !player.moving & player.buff(Leeching Poison).duration <= 600"},
	{"Crippling Poison", "!talent(4,1) & UI(pos) & !player.moving & player.buff(Crippling Poison).duration <= 600"},
}

NeP.CR:Add(259, {
	name = '[|cffffff00Kleei|r]|cffffff00 ROGUE - Assassination',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="750", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
