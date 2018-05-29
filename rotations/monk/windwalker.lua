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

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\monk.blp", width = 200, height = 200, offset = 90, y = -85, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

    {type = 'spacer'},{type = 'spacer'},{type = 'spacer'},{type = 'spacer'},{type = 'spacer'},{type = 'spacer'},
	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = 'spacer'},
	{type = 'combo', default = '1', key = 'list1', list = keybind_list_1, width = 100},	
	{type = 'text', text = "Use Leg Sweep:|c0000FA9A in melee :|r"},
	{type = 'text', text = "Use Paralysis:|c0000FA9A range > 10 yards:|r"},
	{type = "text", text = "", align = "center"},
	{type = "combo", default = "5", key = "list2", list = keybind_list_2, width = 100},	
    {type = "text", text = "Use Paralysis:|c0000FA9A on focus:|r"},
	{type = "text", text = "", align = "center"},
	{type = "combo", default = "9", key = "list3", list = keybind_list_3, width = 100},	
    {type = "text", text = "Use Effuse:|c0000FA9A on self|r"},
    {type = "spacer"},
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun:|c0000FA9A PVP enemy in Melee [Leg Sweep], in range [Paralysis].|r", align = 'left', key = 'stun', default = true},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = 'checkspin', text = 'Use Touch of Karma:', key = 'tok', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Healing Elixir:', key = 'he', check = true, spin = 70, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Cooldowns Toggle", align = 'center'},
	{type = 'text', text = "Touch of Death:"},
	{type = 'text', text = "Serenity:|c0000FA9A if talented"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = 'text', text = "In out of combat:|c0000FA9A if your target is friendly and dead will use Resuscitate to ress|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	--[[{type = 'header', size = 16, text = 'TO DO:', align = 'center'},
	{type = 'text', text = "Touch of Karma: when we are target of target and he activate the CD's to you"},]]

} 

local exeOnLoad = function()
	
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
 	print("|c0000FA9A --- |r|c0000FA9AMonk - WindWalker|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/2 - 2/1 - 3/1 - 4/3 - 5/1 - 6/3 - 7/2")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")

end

local pvp = {

    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & {target.faction.positive || target.faction.negative & player.pvp} & {player.state(stun) & player.spell(Every Man for Himself)cooldown > 0 & player.race = Human || player.state(stun) & !player.race = Human || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Keybinds = {

	{"Leg Sweep", "enemy & alive & inRange(Tiger Palm).spell & !immune_stun & !state(stun) & !state(disorient) & {!target.immune_all || target.buff(Touch of Karma)} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || {target.faction.positive || target.faction.negative & player.pvp} & UI(stun)}", "target"},
	{"Paralysis", "target.range >= 7 & enemy & alive & !immune_stun & !state(stun) & !state(disorient) & {!target.immune_all || target.buff(Touch of Karma)} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || {target.faction.positive || target.faction.negative & player.pvp} & UI(stun)}", "target"},
	{"Paralysis", "inRange.spell & enemy & alive & !immune_stun & !state(stun) & !state(disorient) & {!focus.immune_all || focus.buff(Touch of Karma)} & {!focus.player || focus.faction.positive || focus.faction.negative & player.pvp} & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "focus"},
	{"Effuse", "player.health <= 90 & !player.moving & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "player"},

}

local Precombat = { 

    {"%dispelself", nil, "player"},
    {"Effuse", "health < 85 & !player.moving", "player"},
    {"Resuscitate", "inRange.spell & !enemy & dead & player & player.ingroup(target)", "target"},
    {"Resuscitate", "inRange.spell & !player.moving & !player.lastcast", "deadgroupmember"},
	
}

local Survival = {

    --{"Paralysis", "enemy & alive & player.health <= UI(par_spin) & UI(par_check) & targettarget.is(player) & !boss & !state(disorient) & !state(fear) & !debuff(Paralysis) & !debuff(Sap) & !debuff(Polymorph)", "target"}, 
    --{"/stopattack", "player.health <= UI(par_spin) & UI(par_check) & target.health > player.health & !target.state(disorient) & !target.state(fear) & !debuff(Paralysis) & !debuff(Sap & !debuff(Polymorph)", "target"},
	
    {"Gift of the Naaru", "player.health <= 40 & target.enemy & target.alive", "player"},
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & area(40).enemies >= 1", "player"}, --Health Stone
	{"Touch of Karma", "target.enemy & target.alive & player.health <= UI(tok_spin) & UI(tok_check)"}, --TO DO: {player.health <= UI(tok_spin) & UI(tok_check) || CD's.target}
	{"Healing Elixir", "talent(5,1) & player.health <= UI(he_spin) & UI(he_check) & !lastcast(Healing Elixir)", "player"},
	
}

local Cooldowns = {

	{"Touch of Death", "inRange.spell", "target"},
	{"Serenity", "talent(7,3) & target.inRange(Tiger Palm).spell", "player"},
	--{"Storm, Earth, and Fire", "!player.buff(Storm, Earth, and Fire)"},
	
	{"#trinket1", "UI(trk1) & target.inRange(Tiger Palm).spell"},
	{"#trinket2", "UI(trk2) & target.inRange(Tiger Palm).spell"},
	
}

local Interrupts = {

    {"!Spear Hand Strike", "inRange.spell", "target"},
	{"!Paralysis", "!target.inRange(Tiger Palm).spell & target.inRange(Paralysis).spell || target.inRange(Tiger Palm).spell & player.spell(Spear Hand Strike).cooldown > 0", "target"},
	
}

local Combat = {

    {"/startattack", "target.inRange(Tiger Palm).spell & !isattacking", "target"},
    {"Disable", "inRange.spell & !debuff(Disable) & !debuff(Strike of the Windlord) & {target.faction.positive || target.faction.negative & player.pvp}", "target"},
    {"Fists of Fury", "infront & inRange(Tiger Palm).spell & {target.deathin > 4 || toggle(AoE) & player.area(5).enemies.infront >= 3}", "target"},	
	{"Whirling Dragon Punch", "inRange(Tiger Palm).spell", "target"},
    {"Energizing Elixir", "target.deathin > 6 & inRange(Tiger Palm).spell & player.energy < 35 & player.chi <= 2", "player"}, -- & player.spell(Fists of Fury).cooldown < gcd
    {"Rushing Jade Wind", "toggle(AoE) & player.area(8).enemies >= 5 & player.spell(Fists of Fury).cooldown > gcd"},
	{"Spinning Crane Kick", "toggle(AoE) & player.area(8).enemies >= 5 & count.enemies.debuffs(Mark of the Crane) >= 5 & target.range <= 7"},
	{"Blackout Kick", "inRange.spell & player.buff(Blackout Kick!) & {!player.lastcast(Blackout Kick) || player.level <= 99}", "target"},
    {"Strike of the Windlord", "infront & {target.inmelee & deathin >= 12 || player.area(7).enemies.infront >= 3}", "target"},
    {"Rising Sun Kick", "inRange.spell & {player.level <= 99 || !player.lastcast(Rising Sun Kick)} & {!player.area(5).enemies.infront >= 3 || player.level < 20 || player.area(5).enemies.infront >= 3 & player.spell(Fists of Fury).cooldown > 0}", "target"},
	{"Blackout Kick", "inRange.spell & {player.level <= 99 || !player.lastcast(Blackout Kick)} & {!player.area(5).enemies.infront >= 3 || player.level < 20 || player.area(5).enemies.infront >= 3 & player.spell(Fists of Fury).cooldown > 0}", "target"},
	{"Tiger Palm", "inRange.spell & {player.level <= 99 || !player.lastcast(Tiger Palm) || player.chi == 0 || player.level < 20 || player.area(5).enemies.infront >= 3 & !player.spell(Fists of Fury).cooldown > 0}", "target"},

}

local inCombat = {

	{pvp},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & target.interruptAt(65) & !target.immune_all"},
	{Survival, "player.health < 100"},
	{"%pause", "target.enemy & target.immune_all", "player"},
	{Cooldowns, "toggle(cooldowns)"},
	{Combat, "target.enemy & target.alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
 
}

local outCombat = {

	{pvp},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & target.interruptAt(65) & !target.immune_all & {target.faction.positive || target.faction.negative & player.pvp}"},
	{Combat, "target.enemy & target.alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	{Precombat},

}

NeP.CR:Add(269, {
	name = '[|c0000FA9AKleei|r]|c0000FA9A Monk - Windwalker',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})
