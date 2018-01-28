local unpack = _G.unpack

local keybind_list_1 = {

	{key = '1', text = 'Shift Keybind'},
	{key = '2', text = 'Control Keybind'},
	{key = '3', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},	
	
}

local keybind_list_2 = {

	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	

}

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\monk.blp', width = 128, height = 128, offset = 90, y = -50, align = 'center'},

}

local GUI = {

	unpack(Logo_GUI),

    {type = 'spacer'},
	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = 'spacer'},
	{type = 'combo', default = '1', key = 'list1', list = keybind_list_1, width = 100},	
	{type = 'text', text = "Use Leg Sweep:|c0000FA9A in melee :|r"},
	{type = 'text', text = "Use Paralysis:|c0000FA9A range > 10 yards:|r"},
	{type = 'spacer'},
	{type = "combo", default = "6", key = "list2", list = keybind_list_2, width = 100},	
    {type = "text", text = "Use Paralysis:|c0000FA9A on focus:|r"},
    {type = "spacer"}, {type = "ruler"}, {type = "spacer"},
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun:|c0000FA9A Auto stun PVP Target [Cheap Shot] or [Kidney Shot].|r", align = 'left', key = 'stun', default = true},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = 'spacer'}, {type = 'ruler'},

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = 'spacer'}, {type = 'ruler'},
	
	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = 'checkspin', text = 'Use Touch of Karma:', key = 'tok', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Healing Elixir:', key = 'he', check = true, spin = 70, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Paralysis:', key = 'par', check = true, spin = 20, width = 150, step = 5, max = 95, min = 1},	
	{type = 'checkspin', text = "|c0000FA9A When target health > yours"},
	
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},	

    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 15 sec|r", align = 'center'},	
	{type = 'spacer'},
	{type = 'text', text = "Touch of Death:"},
	{type = 'text', text = "Serenity:|c0000FA9A if talented"},
	{type = 'text', text = "Trinkets:"},
    {type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
    {type = 'text', text = "In out of combat:|c0000FA9A if your target is friendly and dead will use Resuscitate to ress|r"},
    {type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
	{type = 'header', size = 16, text = 'TO DO:', align = 'center'},
	{type = 'text', text = "Touch of Karma: when we are target of target and he activate the CD's to you"},

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

    {"Paralysis", "enemy & alive & player.health <= UI(par_spin) & UI(par_check) & targettarget.is(player) & !boss & !state(disorient) & !state(fear) & !debuff(Paralysis) & !debuff(Sap) & !debuff(Polymorph)", "target"}, 
    {"/stopattack", "player.health <= UI(par_spin) & UI(par_check) & target.health > player.health & !target.state(disorient) & !target.state(fear) & !debuff(Paralysis) & !debuff(Sap & !debuff(Polymorph)", "target"},
	
    {"Gift of the Naaru", "player.health <= 40 & target.enemy & target.alive", "player"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"}, --Health Stone
	{"Touch of Karma", "target.enemy & target.alive & player.health <= UI(tok_spin) & UI(tok_check)"}, --TO DO: {player.health <= UI(tok_spin) & UI(tok_check) || CD's.target}
	{"Healing Elixir", "talent(5,1) & player.health <= UI(he_spin) & UI(he_check) & !lastcast(Healing Elixir)", "player"},
	
}

local Cooldowns = {

	{"Touch of Death", "target.range <= 6.2 & player.combat & target.deathin >= 11.2", "target"},
	{"Serenity", "talent(7,3) & target.range <= 6.2 & player.combat & target.deathin >= 11.2", "player"},
	--{"Storm, Earth, and Fire", "!player.buff(Storm, Earth, and Fire)"},
	
	{"#trinket1", "UI(trk1) & target.inmelee & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.inmelee & target.deathin >= 10"},
	
}

local Interrupts = {

    {"Spear Hand Strike", "inmelee", "target"},
	{"Paralysis", "!target.inmelee || target.inmelee & player.spell(Spear Hand Strike).cooldown > 0", "target"},
	
}

local Combat = {

    {"/startattack", "inmelee & !isattacking", "target"},
    {"Disable", "pvp & !debuff(Disable) & !debuff(Strike of the Windlord)", "target"},
    {"Fists of Fury", "infront & inmelee & {target.deathin > 4 & !player.area(5).enemies.infront >= 3 || toggle(AoE) & player.area(5).enemies.infront >= 3}", "target"},	
	{"Whirling Dragon Punch", "inmelee", "target"},
    {"Energizing Elixir", "target.deathin > 6 & target.inmelee & player.energy < 35 & player.chi <= 2", "player"}, -- & player.spell(Fists of Fury).cooldown < gcd
    {"Rushing Jade Wind", "toggle(AoE) & player.area(8).enemies >= 5 & player.spell(Fists of Fury).cooldown > gcd"},
	{"Spinning Crane Kick", "toggle(AoE) & player.area(8).enemies >= 5 & count.enemies.debuffs(Mark of the Crane) >= 5 & range <= 7"},
	{"Blackout Kick", "inmelee & player.buff(Blackout Kick!) & {!player.lastcast(Blackout Kick) || player.level <= 99}", "target"},
    {"Strike of the Windlord", "infront & {inmelee & deathin >= 12 || player.area(7).enemies.infront >= 3}", "target"},
    {"Rising Sun Kick", "inmelee & {player.level <= 99 || !player.lastcast(Rising Sun Kick)} & {!player.area(5).enemies.infront >= 3 || player.area(5).enemies.infront >= 3 & player.spell(Fists of Fury).cooldown > gcd}", "target"},
	{"Blackout Kick", "inmelee & {player.level <= 99 || !player.lastcast(Blackout Kick)} & {!player.area(5).enemies.infront >= 3 || player.area(5).enemies.infront >= 3 & player.spell(Fists of Fury).cooldown > gcd}", "target"},
	{"Tiger Palm", "inmelee & {player.level <= 99 || !player.lastcast(Tiger Palm) || player.chi == 0 || player.area(5).enemies.infront >= 3 & !player.spell(Fists of Fury).cooldown > gcd}", "target"},

}

local Keybinds = {

	{"Leg Sweep", "target.enemy & target.alive & target.range <= 5 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || target.pvp & player.pvp & UI(stun)}", "target"},
	{"Paralysis", "target.range >= 10 & target.enemy & target.alive & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || target.pvp & player.pvp & UI(stun)}", "target"},
	{"Paralysis", "inRange.spell & enemy & alive & !immune_stun & !state(stun) & !state(disorient) & {!focus.immune_all || focus.buff(Touch of Karma)} & {!focus.player || focus.faction.positive || focus.faction.negative & player.pvp} & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "focus"},
	
}

local inCombat = {

    {"%pause", "target.enemy & {target.state(fear) & target.pvp ||target.debuff(Polymorph) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},

    {"Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"Gladiator's Medallion", "UI(medal) & target.pvp & player.pvp & {state(stun) & spell(Every Man for Himself)cooldown >= gcd & race = Human || state(stun) & !race = Human || state(fear) || state(disorient) || state(charm)}", "player"},

	{Keybinds},
	{Survival, "player.health < 100"},
	{Interrupts, "target.interruptAt(40) & toggle(interrupts)"},
	{Cooldowns, "toggle(cooldowns)"},
	{Combat, "target.inmelee & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
 
}

local outCombat = {

	{Keybinds},
	{Actions, "target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},

    {"%dispelself", nil, "player"},

    --{"Resuscitate", "player.area(38).dead.friendly >= 1", "friendly"},	
	{"Resuscitate", "!target.enemy & target.dead", "target"},
	--{"Effuse", "!player.moving & player.health < 90", "player"},
	
}

NeP.CR:Add(269, {
	name = '[|c0000FA9AKleei|r]|c0000FA9A Monk - Windwalker',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="707", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
