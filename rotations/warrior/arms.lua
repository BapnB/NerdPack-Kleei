local unpack = _G.unpack

local exeOnLoad = function()

 	print('|c0000FA9A ----------------------------------------------------------------------|r')
 	print('|c0000FA9A --- |r|cffffff00WARRIOR - Arms|r')	
	print('|c0000FA9A ------------------------PVP-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/x - 2/x - 3/x - 4/x - 5/x - 6/x - 7/x')
    print('|c0000FA9A')
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/x - 2/x - 3/x - 4/x - 5/x - 6/x - 7/x')
 	print('|c0000FA9A ----------------------------------------------------------------------|r')

end

local pvp = {

}

local Keybinds = {

	{"Charge", "range < 25 & range > 8 & keybind(shift)", "target"},

}

local PreCombat = {

    {"Slam", "inmelee", "target"},
	{"Victory Rush", "inmelee & player.level <= 10", "target"},
    {"/startattack", "!isattacking & inmelee", "target"},

}

local Survival ={

    {"Victory Rush", "inmelee & player.health <= 75", "target"},

}

local Interrupts = {

}

local Cooldowns = {

}

local Combat = {

    {"/startattack", "!isattacking & target.inmelee"},
	
	{"Execute", "inmelee & spell.proc", "target"},
    {"Slam", "inmelee", "target"},
	{"Victory Rush", "inmelee & player.level <= 10", "target"},

}

local inCombat = {

    {Keybinds, "target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
    {Interrupts, "toggle(interrupts) & infront & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{Combat, "target.inmelee & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},

}

local outCombat = {

    {Keybinds, "target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{PreCombat, "target.enemy & target.alive"},

}

NeP.CR:Add(71, {
	name = "[|cffffff00Kleei|r]|cffffff00 WARRIOR - Arms to lvl 10",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="750", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})