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

local pvp_1v1 = {

    {"Every Man for Himself", "UI(medal) & player.state(stun) & !player.buff(Vanish) & !player.buff(Stealth)", "player"},        
    {"Gladiator's Medallion", "UI(medal) & !player.buff(Vanish) & !player.buff(Stealth) & {player.state(stun) & player.spell(Every Man for Himself)cooldown >= gcd || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},        

    {"Kidney Shot", "inmelee & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & UI(stun) & target.debuff(Cheap Shot).duration <= 0.5}", "target"},

    {"Vanish", "!player.buff(Stealth) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & UI(van_no_stun) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & player.spell(Kidney Shot).cooldown >= gcd & !player.buff(Evasion)  & {target.class(Rogue) & player.spell(Blind).cooldown >= gcd || !target.class(Rogue)}"}, --test  & targettarget.is(player)
    {"Blind", "!player.buff(Stealth) & !player.buff(Vanish) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & UI(blind_no_van) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & !player.lastcast(Vanish) & player.spell(Kidney Shot).cooldown >= gcd & !target.immune(disorient) & !player.buff(Evasion)", "target"},-- & targettarget.is(player)

}

local Keybinds = {

    {"%pause", "target.debuff(Blind) & !target.player & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}"},
    {"/stopattack", "target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)", "player"},

	{"Sap", "range <= 10 & !target.state(stun) & !target.state(disorient) & !debuff(Sap) & !combat & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
	{"/stopattack", "target.enemy & {target.state(disorient) & !player.buff(Stealth) || target.debuff(Blind) & !player.buff(Stealth) || player.buff(Vanish)}"},
	
	{"Kidney Shot", "inmelee & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Blind", "!player.buff(Stealth) & !player.buff(Vanish) & player.combat & range <= 15 & {target.buff(Touch of Karma) || keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
	
}

local PreCombat = {

    --Leveling
    {"Sinister Strike", "target.inmelee & {player.level < 8 || player.level >= 8 & player.level <= 11 || !keybind(alt) & !keybind(shift) & !keybind(control) & player.level >= 8 & player.level <= 11} & {target.player & player.pvp || !target.player}", "target"},
	--{"Sinister Strike", " & target.range < 6"},
	--End Leveling

	{"Pick Pocket", "UI(pp) & !player.moving & player.buff(Stealth) & !player.lastcast(Pick Pocket) & creatureType(Humanoid) & !target.player & range < 7 & !isdummy", "target"},	
	{"%pause", "target.debuff(Sap) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & {!target.player || target.player & player.pvp}"},	
	
    {"/stopattack", "player.buff(Vanish) & player.buff(Stealth & target.buff(Touch of Karma)"},
	--{"Sap", "range <= 10 & !debuff(Sap) & UI(sapp) & target.pvp & player.pvp & !target.state(stun)", "target"}, -- & creatureType(Humanoid) & creatureType(Beast) & creatureType(Demon) & creatureType(Dragonkin)

	{"Cheap Shot", "player.buff(Stealth) & inmelee & {player.spell(Garrote).cooldown > gcd || !target.caster & target.player & player.pvp || keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Garrote", "inmelee & player.buff(Stealth) & {target.caster & target.player & player.pvp || !target.player}", "target"},
	
}

local Survival ={

    {"Blind", "target.buff(Touch of Karma) & !player.buff(Stealth) & !player.buff(Vanish)", "target"}, -- || many more target CD's
    {"Vanish", "player.combat & !player.buff(Stealth) & player.health < target.health & player.health <= UI(van_spin) & UI(van_check)"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"Evasion", "player.health <= UI(cv_spin) & UI(cv_check) & !player.buff(Stealth) & !player.buff(Vanish) & player.incdmg.phys(5) >= 100000"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)"}, --Health Stone
	
}

local Interrupts = {

    {"Sap", "target.interruptAt(75) & range <= 10 & !debuff(Sap) & !immune(disorient) & !player.lastcast(Sap) & !combat & pvp & player.pvp & !state(stun) & {player.buff(Stealth) || player.buff(Vanish)}", "target"},
    {"/stopattack", "player.buff(Vanish) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)", "player"},
	{"Kick", "target.interruptAt(75) & target.inmelee", "target"},
	--{"Cloak of Shadows", "target.interruptAt(75) & target.caster & target.pvp & targettarget.is(player) & {player.spell(Kick).cooldown > 0.1 || player.state(root) || target.range >= 7}", "target"},
	
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

    {"/stopattack", "target.debuff(Blind) & target.pvp & !player.buff(Stealth) || target.buff(Touch of Karma) || player.buff(Vanish) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)", "player"},
    {"/startattack", "!isattacking & target.inmelee"},
    {"Tricks of the Trade", "player.aggro & {group.type == 3 || group.type == 2}", "tank"},
    --Mass
    {"Fan of Knives", "toggle(AoE) & player.combopoints < 5 & player.area(8).enemies >= 4 & count.enemies(Deadly Poison).debuffs < player.area(10).enemies"},
	
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

local Poisons = {

	{"Deadly Poison", "UI(pos) & !player.moving & player.buff(Deadly Poison).duration <= 600"},
	{"Leeching Poison", "talent(4,1) & UI(pos) & !player.moving & player.buff(Leeching Poison).duration <= 600"},
	{"Crippling Poison", "!talent(4,1) & UI(pos) & !player.moving & player.buff(Crippling Poison).duration <= 600"},
	
}
	
local inCombat = {

    {pvp_1v1, "player.pvp & target.player & target.enemy & target.alive"},	
    {Keybinds, "target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
    {Interrupts, "toggle(interrupts) & infront & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{Combat, "target.inmelee & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},

}

local outCombat = {

    {"/targetenemyplayer", "!target.exists & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}"},
	{"Stealth", "!player.buff(Stealth) & !player.buff(Vanish) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
    --{"Sap", "range <= 10 & !melee & !target.state(stun) & !target.state(disorient) & !target.immune(disorient) & !player.lastcast(Sap) & !debuff(Sap) & !combat", "target"},
	{"/stopattack", "player.pvp & target.player & target.enemy & target.alive & {target.debuff(Blind) & !player.buff(Stealth) || target.state(disorient) & !player.buff(Stealth)|| target.state(fear) & !player.buff(Stealth) || target.debuff(Polymorph) & !player.buff(Stealth) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check) & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
    {Keybinds, "target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{PreCombat, "target.enemy & target.alive"},
	{Poisons},

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
