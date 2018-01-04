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

local keybind_list_3 = {

	{key = '7', text = 'Shift Keybind'},
	{key = '8', text = 'Control Keybind'},
	{key = '9', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},	

}

local target_list = {

    {key = 'cur', text = 'Cursor Ground'},
	{key = 'tar', text = 'Target Ground'},

}

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\outlaw.blp', width = 200, height = 200, offset = 90, y = -45, align = 'center'},

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
	{type = 'text', text = "Use Gouge:|c0000FA9A if target are facing to you"},
	{type = 'text', text = "Use Between the Eyes:|c0000FA9A < 20 yd:"},
	{type = 'spacer'},
	{type = 'combo', default = '9', key = 'list3', list = keybind_list_3, width = 100},		
    {type = 'text', text = "Use Grappling Hook:"},
	{type = 'combo', default = 'tar', key = 'list4', list = target_list,  width = 100},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Gouge:|c0000FA9A auto Gouge PVP Target if he are facing to you.|r", align = 'left', key = 'gog', default = true},
    {type = 'checkbox',	text = "Between the Eyes:|c0000FA9A auto stun PVP Target.|r", align = 'left', key = 'stun', default = true},
    --{type = 'checkbox',	text = "Vanish:|c0000FA9A target not stuned and [Between the Eyes] is on CD", align = 'left', key = 'van_no_stun', default = false},
	--{type = 'checkbox',	text = "Blind:|c0000FA9A target not stuned and [Vanish] is on CD", align = 'left', key = 'blind_no_van', default = false},
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
	{type = 'checkbox', text = "Use Faint:|c0000FA9A Sprint is up and Deception is active", key = "fnt", default = true},
	{type = 'checkspin', text = 'Use Vanish:', key = 'van', check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Crimson Vial:', key = 'cv', check = true, spin = 75, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Riposte:', key = 'ripo', check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},	

	{type = 'header', size = 16, text = 'Other', align = 'center'},
	{type = 'checkbox', text = "Use Tricks of the Trade:|c0000FA9A in party on tank", key = "tott", default = true},
	{type = 'checkbox', text = "Pick Pocket:|c0000FA9A < 10 yards when you stand and don't move", 	key = 'pp',   default = false},
	{type = 'checkbox', text = "Use Ambush:|c0000FA9A as opener instead [Cheap Shot]", 	key = 'amb',   default = false},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 10 sec|r", align = 'center'},
    {type = 'text', text = "Adrenaline Rush:"},
    {type = 'text', text = "Curse of the Dreadblades:"},
	
}
	
local exeOnLoad = function()

 	print('|c0000FA9A ----------------------------------------------------------------------|r')
 	print('|c0000FA9A --- |r|cffffff00ROGUE - Outlaw|r')	
	print('|c0000FA9A ------------------------PVP-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/2 - 2/1 - 3/3 - 4/2 - 5/3 - 6/2 - 7/3')
    print('|c0000FA9A')
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/2 - 2/1 - 3/3 - 4/x - 5/x - 6/2 - 7/1')
 	print('|c0000FA9A ----------------------------------------------------------------------|r')

end

local Grappling_Hook = {

    {"Grappling Hook", "talent(2,1) & UI(list4)==tar & range < 40 & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target.ground"},
    {"Grappling Hook", "talent(2,1) & UI(list4)==cur & {!UI(list4)==tar || !target.exists} & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "cursor.ground"},

}

local pvp = {

    {"Every Man for Himself", "UI(medal) & state(stun) & !buff(Stealth) & !buff(Vanish) & race = Human", "player"},        
    {"Gladiator's Medallion", "UI(medal) & !buff(Vanish) & !buff(Stealth) & {state(stun) & spell(Every Man for Himself)cooldown >= gcd & race = Human || state(stun) & !race = Human || state(fear) || state(disorient) || state(charm)}", "player"},        
	{"/stopattack", "target.state(disorient) & !player.buff(Stealth) || target.debuff(Blind) & !player.buff(Stealth) || player.buff(Vanish) || target.immune_all"},
	{"Between the Eyes", "range < 20 & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & target.debuff(Cheap Shot).duration <= 0.5 & UI(stun)", "target"},
    {"Gouge", "inmelee & player.infront.of.target & !player.buff(Stealth) & !player.buff(Vanish) & !debuff(Cheap Shot) & !debuff(Between the Eyes) & UI(gog)", "target"},
    --{"Vanish", "!player.buff(Stealth) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & UI(van_no_stun) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & player.spell(Kidney Shot).cooldown >= gcd & !player.buff(Evasion)  & {target.class(Rogue) & player.spell(Blind).cooldown >= gcd || !target.class(Rogue)}"}, --test  & targettarget.is(player)
    --{"Blind", "!player.buff(Stealth) & !player.buff(Vanish) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & !target.debuff(Blind) & UI(blind_no_van) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & !player.lastcast(Vanish) & player.spell(Kidney Shot).cooldown >= gcd & !target.immune(disorient) & !player.buff(Evasion)", "target"},-- & targettarget.is(player)


}

local Keybinds = {

	{"Sap", "target.enemy & range <= 10 & !target.state(stun) & !target.state(disorient) & !debuff(Sap) & !combat & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
	{"Between the Eyes", "range < 20 & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & debuff(Cheap Shot).duration <= 0.5 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Gouge", "inmelee & player.infront.of.target & !player.buff(Stealth) & !player.buff(Vanish) & !debuff(Cheap Shot) & !debuff(Between the Eyes) & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Blind", "range <= 15 & !player.buff(Stealth) & !player.buff(Vanish) & player.combat & {target.buff(Touch of Karma) || keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},

}

local PreCombat = {

	--Leveling
    {"Sinister Strike", "target.inmelee & {player.level < 8 || player.level >= 8 & player.level <= 11 || !keybind(alt) & !keybind(shift) & !keybind(control) & player.level >= 8 & player.level <= 11} & {target.player & player.pvp || !target.player}", "target"},
	--End Leveling

	{"Pick Pocket", "UI(pp) & !player.moving & player.buff(Stealth) & !player.lastcast(Pick Pocket) & creatureType(Humanoid) & !target.player & range < 7 & !isdummy", "target"},	
	{"%pause", "target.debuff(Sap) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & {!target.player || target.player & player.pvp}"},	
    {"/stopattack", "{player.buff(Vanish) || player.buff(Stealth)} & target.buff(Touch of Karma) || target.immune_all"},

    {"/startattack", "!isattacking & !immune_all & target.inmelee & !target.player & player.energy < 45"},
	{"Pistol Shot", "range < 20 & !immune_all & range > 9 & !target.pvp & !lastcast & infront & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6 || !talent(7,3) & player.buff(Opportunity)}", "target"},
	{"Cheap Shot", "inmelee & !lastcast & target.pvp & player.buff(Stealth) & !debuff(Cheap Shot) & !immune_all & !UI(amb)}", "target"},
	{"Ambush", "player.buff(Stealth) & inmelee & UI(amb)", "target"},
	{"Saber Slash", "inmelee & !immune_all & {debuff(Cheap Shot) & target.pvp || !target.pvp} & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},
	{"Run Through", "inmelee & !immune_all & {debuff(Cheap Shot) & target.pvp || !target.pvp} & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},
	{"Death from Above", "talent(7,3) & !target.pvp & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},

}

local Survival ={

    {"Faint", "player.buff(Sprint) & !buff & !lastcast & artifact.enabled(Deception) & UI(fnt)", "player"},
    {"Blind", "target.buff(Touch of Karma) & !player.buff(Stealth) & !player.buff(Vanish)", "target"}, -- || many more target CD's
    {"Vanish", "player.combat & !player.buff(Stealth) & player.health < target.health & player.health <= UI(van_spin) & UI(van_check)"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"Riposte", "player.health <= UI(ripo_spin) & UI(ripo_check) & !player.buff(Stealth) & !player.buff(Vanish) & player.incdmg.phys(5) >= 100000"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)"}, --Health Stone

}

local Interrupts = {

    {"!Sap", "{interruptAt(75) || channeling.percent(90)} & range <= 10 & !debuff(Sap) & !immune(disorient) & !player.lastcast(Sap) & !combat & pvp & player.pvp & !state(stun) & {player.buff(Stealth) || player.buff(Vanish)}", "target"},
    {"/stopattack", "buff(Vanish)", "player"},
	{"!Kick", "interruptAt(75) & inmelee", "target"},
	{"!Kick", "interruptAt(75) & inmelee", "enemies"},
}

local Cooldowns = {

    {"#7676", "item(7676).count >= 1 & player.energy <= 10 & target.deathin >= 5 & {target.boss || target.pvp}"},
	{"Cannonball Barrage", "talent(6,1) & range <= 35", "target.ground"},
	{"Marked for Death", "inmelee & talent(7,2) & player.combopoints < 2", "target"},
	{"Curse of the Dreadblades", "target.inmelee & player.combopoints <= 3 & !player.buff(Broadsides) & {target.debuff(Ghostly Strike) || !talent(1,1)}", "player"},
	{"Adrenaline Rush", "target.inmelee & !player.lastcast(Curse of the Dreadblades) & player.spell(Curse of the Dreadblades).cooldown >= gcd & !debuff(Curse of the Dreadblades)", "player"},
	{"Killing Spree", "talent(6,3) & range <= 10 & player.energy < 15", "target"},

	{"#trinket1", "UI(trk1) & target.inmelee"},
	{"#trinket2", "UI(trk2) & target.inmelee"},

}

local Combat = {

    {"/startattack", "!isattacking & target.inmelee"},
    {"Tricks of the Trade", "player.aggro & UI(tott) & player.los(tank) & {group.type == 3 || group.type == 2}", "tank"},

	{"Blade Flurry", "toggle(AoE) & area(4).enemies >= 3 & !buff(Blade Flurry) || !toggle(AoE) & buff(Blade Flurry) || area(5).enemies <= 2 & buff(Blade Flurry)", "player"},
	{"Pistol Shot", "toggle(AoE) & area(20).enemies == 2 & inmelee & {!talent(1,3) & player.energy < 49 || talent(1,3)} & !is(target) & !immune_all & combat & !pvp & player.buff(Opportunity) & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "enemies"},
	
	{"Death from Above", "talent(7,3) & area(8).enemies > 2 & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},
	{"Death from Above", "talent(7,3) & {pvp || boss} & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},

    {"Roll the Bones", "!talent(7,1) & target.deathin > 10 & player.combopoints > 4 & !buff_of_the_bones", "player"},
	{"Slice and Dice", "talent(7,1) & buff(Slice and Dice).duration < 3 & {target.deathin > 10 & player.combopoints > 4 || target.deathin <= 10 & player.combopoints > 1}", "player"},
	{"Run Through", "inmelee & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},

    {"Ghostly Strike", "inmelee & talent(1,1) & buff(Ghostly Strike).duration < 2 & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},
	{"Pistol Shot", "range < 20 & {!talent(1,3) & {player.energy < 49 || range > 9 & !lastcast & infront} || talent(1,3)} & player.buff(Opportunity) & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},
	{"Saber Slash", "inmelee & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},

}

local inCombat = {

    {Grappling_Hook},
    {"/stopattack", "player.pvp & target.player & target.enemy & target.alive & target.debuff(Blind) & !player.buff(Stealth)"},
    {pvp, "player.pvp & target.player & target.enemy & target.alive"},	
    {Keybinds, "target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
    {Interrupts, "toggle(interrupts) & infront & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & !target.immune_all & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
    {"/stopattack", "target.player & {target.state(disorient) & !buff(Stealth) || target.state(incapacitate) & !buff(Stealth) || target.state(fear) & !buff(Stealth) || target.debuff(Polymorph) & !buff(Stealth) || target.buff(Touch of Karma) || buff(Vanish) || target.immune_all}", "player"},
	{Combat, "!target.immune_all & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},

}

local outCombat = {

    {Grappling_Hook},
	{"Blade Flurry", "area(5).enemies <= 2 & buff(Blade Flurry)", "player"},
    {"/targetenemyplayer", "!target.exists & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}"},
	{"Stealth", "!player.buff(Stealth) & !player.buff(Vanish) & target.enemy & target.alive & player.pvp & target.player"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"/stopattack", "player.pvp & target.player & target.enemy & target.alive & {target.state(disorient) & !buff(Stealth) || target.state(incapacitate) & !buff(Stealth) || target.state(fear) & !buff(Stealth) || target.debuff(Polymorph) & !buff(Stealth) || target.buff(Touch of Karma) || buff(Vanish) || target.immune_all}", "player"},
    {Keybinds, "target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{PreCombat, "target.enemy & target.alive"},

}

NeP.CR:Add(260, {
	name = '[|cffffff00Kleei|r]|cffffff00 ROGUE - Outlaw',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
