local unpack = _G.unpack

local keybind_list_1 = {

	{key = '1', text = 'Shift Keybind'},
	{key = '2', text = 'Control Keybind'},
	{key = '3', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},	
	
}

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\monk.blp', width = 128, height = 128, offset = 90, y = -50, align = 'center'},
	{type = 'spacer'}, {type = 'spacer'}, {type = 'spacer'}, {type = 'ruler'},

}

local GUI = {

	unpack(Logo_GUI),

	{type = 'spacer'},	{type = 'spacer'},

    {type = 'header', size = 16, text = 'Settings', align = 'center'},
    {type = 'checkbox',	text = "Freedom", align = 'left', key = 'medal', default = true, desc = "|c0000FA9A Remove stun/fear/disorient/charm by Gladiator's Medallion in PVP|r"},
    {type = 'checkbox',	text = "Stun PVP", align = 'left', key = 'stun', default = true, desc = "|c0000FA9A Auto stun PVP Target ,Leg Sweep in melee or Paralysis if range > 10 yards|r"},
	
	-----------------------------------------------------------------------------------------------------	

	{type = 'ruler'}, {type = 'spacer'},	
    -----------------------------------------------------------------------------------------------------

	
	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	-----------------------------------------------------------------------------------------------------
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false, desc = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	
	-----------------------------------------------------------------------------------------------------
	
	{type = 'ruler'}, {type = 'spacer'},	
	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A In fight just keep pressing|r", align = 'center'},
	{type = 'spacer'},	
	-----------------------------------------------------------------------------------------------------
	{type = 'text', text = "|c0087CEFA Choose Keybind:"},
	{type = 'text', text = "Cast Leg Sweep in melee or Paralysis if range > 10 yards|r"},
	{type = 'combo',	default = '1',  key = 'list1', 	list = keybind_list_1, 	width = 120},
   
	{type = 'spacer'},	{type = 'spacer'},		
	{type = 'ruler'}, {type = 'spacer'},	
    {type = 'text', text = "Cooldowns Toggle:", desc = "|c0000FA9A [Touch of Death] + [Serenity (if talented)] + Trinkets if target is about to die in more than 10 sec|r"},

    {type = 'text', text = "In out of combat:", desc = "|c0000FA9A if your target is friendly and dead will use Resuscitate to ress|r"},
	
} 

local exeOnLoad = function()
	
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
 	print('|c0000FA9A --- |r|c0000FA9AMonk - WindWalker|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/3 - 2/1 - 3/1 - 4/3 - 5/1 - 6/3 - 7/2')
 	print('|c0000FA9A ----------------------------------------------------------------------|r')

end

local Precombat = { 

    
	
}

local Survival = {

    {"Gift of the Naaru", "player.health <= 40 & target.enemy & target.alive", "player"},
	{"#5512", "item(5512).count >= 1 & player.health <= 60", "player"}, --Health Stone
	{"Touch of Karma", "target.enemy & target.alive & {player.health <= 60 & target.deathin >= 7 || player.health <= 35 & target.deathin < 7}"},
	{"Healing Elixir", "talent(5,1) & player.health <= 70 & !lastcast(Healing Elixir)", "player"},
	
}

local Cooldowns = {

	{"Touch of Death", "target.range <= 6.2 & player.combat & target.deathin >= 11.2", "target"},
	{"Serenity", "talent(7,3) & target.range <= 6.2 & player.combat & target.deathin >= 11.2", "player"},
	--{"Storm, Earth, and Fire", "!player.buff(Storm, Earth, and Fire)"},
	
	{"#trinket1", "UI(trk1) & target.inmelee & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.inmelee & target.deathin >= 10"},
	
}

local AoE = {

    --{"Rushing Jade Wind" ,"player.spell(Fists of Fury).cooldown > 1"},
    
}

local Interrupts = {

    {"Spear Hand Strike", "target.inmelee", "target"},
	{"Paralysis", "!target.inmelee || target.inmelee & player.spell(Spear Hand Strike).cooldown > gcd", "target"},
	
}

local Actions = {

    {"/startattack", "!isattacking", "target"},
    {"Disable", "pvp & !debuff(Disable) & !debuff(Strike of the Windlord)", "target"},
    {"Fists of Fury", "infront & range <= 4.5 & {target.deathin > 4 & !player.area(5).enemies.infront >= 3 || toggle(AoE) & player.area(5).enemies.infront >= 3}", "enemies"},	
	{"Whirling Dragon Punch"},
    {"Energizing Elixir", "target.deathin > 6 & target.infront & player.energy < 35 & player.chi <= 2"}, -- & player.spell(Fists of Fury).cooldown < gcd
    {"Rushing Jade Wind", "toggle(AoE) & player.area(8).enemies >= 5 & player.spell(Fists of Fury).cooldown > gcd"},
	{"Spinning Crane Kick", "toggle(AoE) & player.area(8).enemies >= 5 & count(Mark of the Crane).enemies.debuffs >= 5 & range <= 7", "enemies"},
	{"Blackout Kick", "player.buff(Blackout Kick!) & !player.lastcast(Blackout Kick)"},
    {"Strike of the Windlord", "target.health.actual >= 400000"},
    {"Rising Sun Kick", "!player.lastcast(Rising Sun Kick) & {!player.area(5).enemies.infront >= 3 || player.area(5).enemies.infront >= 3 & player.spell(Fists of Fury).cooldown > gcd}"},
	{"Blackout Kick", "!player.lastcast(Blackout Kick) & {!player.area(5).enemies.infront >= 3 || player.area(5).enemies.infront >= 3 & player.spell(Fists of Fury).cooldown > gcd}"},
	{"Tiger Palm", "!player.lastcast(Tiger Palm) || player.chi == 0 || player.area(5).enemies.infront >= 3 & !player.spell(Fists of Fury).cooldown > gcd"},
	{"Chi Wave", "talent(1,3) & player.chi == 0 & player.energy < 47"},

}

local Keybinds = {

	{"Leg Sweep", "target.enemy & target.alive & target.range <= 5 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || target.pvp & player.pvp & UI(stun)}", "target"},
	{"Paralysis", "target.range >= 10 & target.enemy & target.alive & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || target.pvp & player.pvp & UI(stun)}", "target"},

}

local inCombat = {

    {"%pause", "target.enemy & {target.state(fear) & target.pvp ||target.debuff(Polymorph) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},
	
	{"Gladiator's Medallion", "target.pvp & player.pvp & UI(medal) & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

	{Keybinds},
	{Survival, "player.health < 100"},
	{Interrupts, "target.interruptAt(40) & toggle(interrupts)"},
	{Cooldowns, "toggle(cooldowns)"},
	{AoE, "toggle(AoE) & player.area(8).enemies >= 2"},
	{Actions, "target.inmelee & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
 
}

local outCombat = {

	{Keybinds},
	{Actions, "target.inmelee & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},

    {"Resuscitate", "player.area(38).dead.friendly >= 1", "friendly"},	
	--{"Resuscitate", "!target.enemy & target.dead", "target"},
	--{"Effuse", "!player.moving & player.health < 90", "player"},
	
}

NeP.CR:Add(269, {
	name = '[|c0000FA9AKleei|r]|c0000FA9A Monk - Windwalker',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="620", color="87CEFA"},	
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
