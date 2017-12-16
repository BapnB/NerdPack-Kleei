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

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\fury.blp', width = 180, height = 180, offset = 175, y = -80, align = 'center'},

}

local GUI = {

	unpack(Logo_GUI),

	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = 'spacer'},
	{type = 'combo', default = '1', key = 'list1', list = keybind_list_1, width = 100},
	{type = 'text', text = "Use Charge:|c0000FA9A |r"},
	{type = 'spacer'},
	{type = 'combo', default = '5', key = 'list2', list = keybind_list_2, width = 100},	
	{type = 'text', text = "Use Heroic Leap:|c0000FA9A |r"},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
	{type = 'spacer'},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "spacer"},
	{type = "checkspin", text = "Use Commanding Shout:", key = "cs", check = true, spin = 30, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Intimidating Shout:", key = "is", check = true, spin = 25, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Enraged Regeneration:", key = "enr_regen", check = true, spin = 40, width = 150, step = 5, max = 95, min = 1},
	{type = "spacer"}, {type = "ruler"}, {type = "spacer"},

    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 5 sec|r", align = 'center'},
    {type = 'text', text = "Use Battle Cry"},
    {type = 'text', text = "Use Blood Fury:|c0000FA9A (Racial orc)"},

}

local exeOnLoad = function()

 	print('|c0000FA9A ----------------------------------------------------------------------|r')
 	print('|c0000FA9A --- |r|cffffff00WARRIOR - Fury|r')	
	print('|c0000FA9A ------------------------PVP-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/x - 2/x - 3/x - 4/x - 5/x - 6/x - 7/x')
    print('|c0000FA9A')
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/1 - 2/3 - 3/1 - 4/1 - 5/2 - 6/3 - 7/2')
 	print('|c0000FA9A ----------------------------------------------------------------------|r')

end

local pvp = {

    {"Every Man for Himself", "UI(medal) & player.state(stun)", "player"},        
    {"Gladiator's Medallion", "UI(medal) & {player.state(stun) & player.spell(Every Man for Himself)cooldown >= gcd || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},  

}

local Keybinds = {

	{"Charge", "range < 25 & range > 8 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},

}

local PreCombat = {

	{"Rampage", "inmelee & {talent(5,2) & player.buff(Frothing Berserker) || player.buff(Battle Cry) || !talent(5,2) & player.rage >= 85}", "target"}, -- & !player.buff(Enrage)
	{"Raging Blow", "inmelee & player.area(8).enemies < 3 & {talent(6,3) || !talent(6,3) & player.buff(Enraged)}", "target"},
	{"Bloodthirst", "inmelee", "target"},
	{"Whirlwind", "player.buff(Wrecking Ball) & player.area(8).enemies >= 1", "target"},
    {"Furious Slash", "inmelee", "target"},
    {"Whirlwind", "toggle(AoE) & player.area(8).enemies >= 3"},
    {"/startattack", "!isattacking & inmelee", "target"},

}

local Survival ={

    {"Enraged Regeneration", "target.inmelee & player.health <= UI(enr_regen_spin) & UI(enr_regen_check) & player.area(8).enemies > 0"},
	{"Commanding Shout", "player.health <= UI(cs_spin) & UI(cs_check) & player.area(8).enemies > 0"},
	{"Intimidating Shout", "player.health <= UI(is_spin) & UI(is_check) & player.area(8).enemies > 0"},

}

local Interrupts = {

    {"Pummel", "target.interruptAt(70) & inmelee", "target"},
	{"Pummel", "interruptAt(70)& inmelee", "enemies"},

}

local Cooldowns = {
 
    {"Battle Cry", "target.inmelee & target.deathin >= 4 & !player.rage >= 85"},
    {"Blood Fury", "target.inmelee & target.deathin >= 5"},

	{"#trinket1", "UI(trk1) & target.inmelee & target.deathin >= 5"},
	{"#trinket2", "UI(trk2) & target.inmelee & target.deathin >= 5"},

}

local Combat = {

    {"/startattack", "!isattacking & target.inmelee"},
	
	{"Whirlwind", "toggle(AoE) & player.area(8).enemies >= 3 & !player.lastcast(Whirlwind)"},
	
	{"Execute", "spell.proc & player.level < 100", "target"},

    {"Odyn's Fury", "player.buff(Battle Cry)", "target"},
	{"Rampage", "inmelee & {talent(5,2) & player.buff(Frothing Berserker) || player.buff(Battle Cry) || !talent(5,2) & player.rage >= 85}", "target"}, -- & !player.buff(Enrage)
	{"Raging Blow", "inmelee & player.area(8).enemies < 3 & {talent(6,3) || !talent(6,3) & player.buff(Enraged)}", "target"},
	{"Bloodthirst", "inmelee", "target"},
	{"Whirlwind", "player.buff(Wrecking Ball) & player.area(8).enemies >= 1", "target"},
    {"Furious Slash", "inmelee", "target"},
    {"Whirlwind", "toggle(AoE) & player.area(8).enemies >= 3"},

}

local inCombat = {

	{"Heroic Leap", "keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5", "cursor.ground"},
    {pvp, "player.pvp & target.player & target.enemy & target.alive"},
    {Keybinds, "target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
    {"/stopattack", "target.buff(Touch of Karma) || target.immune_all", "player"},
    {Interrupts, "toggle(interrupts) & infront & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{Combat, "target.inmelee & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},

}

local outCombat = {

	{"Heroic Leap", "keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5", "cursor.ground"},
    {"/stopattack", "target.buff(Touch of Karma) || target.immune_all", "player"},
    {Keybinds, "target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{PreCombat, "target.enemy & target.alive"},

}

NeP.CR:Add(72, {
	name = "[|cffffff00Kleei|r]|cffffff00 WARRIOR - Fury",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="750", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})