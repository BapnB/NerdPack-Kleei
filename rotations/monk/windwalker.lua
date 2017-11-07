local GUI = {

    {type = 'header', text = 'Settings', align = 'center'},
	{type = 'checkbox',	text = "Remove stun/fear/disorient/charm by Gladiator's Medallion", align = 'left', key = 'medal', default = true},
	{type = 'checkbox',	text = "Auto stun PVP enemy", align = 'left', key = 'stun', default = true},
	{type = 'ruler'}, {type = 'spacer'},	
    -----------------------------------------------------------------------------------------------------
	{type = 'header', text = 'Use Trinkets if Cooldown Toggle is enable', align = 'center'},		
	-----------------------------------------------------------------------------------------------------
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	-----------------------------------------------------------------------------------------------------
	{type = 'ruler'}, {type = 'spacer'},

	{type = 'header', text = 'Keybinds', align = 'center'},
	{type = 'text', text = 'Alt Keybind = Pause.'},
	{type = 'text', text = 'Shift Keybind will use Leg Sweep if target is in range <= 5.'},
	{type = 'text', text = 'Shift Keybind will use Paralysis if target are in 10 or more yards.'},
	{type = 'text', text = 'Control  Keybind + Cooldowns toggle will use Touch of Death on target.'},
	{type = 'text', text = 'In out of combat if your target is friendly and dead will use Resuscitate to ress him.'},
	
} 

local exeOnLoad = function()
	
	print('|cffADFF2F ------------------------PVE-------------------------------------------|r')
 	print('|cffADFF2F --- |r|cffADFF2FMonk - WindWalker|r')
 	print('|cffADFF2F --- |rRecommended Talents: 1/3 - 2/1 - 3/1 - 4/3 - 5/1 - 6/3 - 7/2')
 	print('|cffADFF2F ----------------------------------------------------------------------|r')

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
	{"Serenity", "target.range <= 6.2 & player.combat & {target.deathin >= 11.2 || keybind(control)}"},
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
    {"Disable", "pvp & !debuff", "target"},
	{"Whirling Dragon Punch"},
    {"Energizing Elixir", "target.deathin > 6 & target.infront & player.energy < 35 & player.chi <= 2"}, -- & player.spell(Fists of Fury).cooldown < gcd
    {"Rushing Jade Wind", "toggle(AoE) & player.area(8).enemies >= 5 & player.spell(Fists of Fury).cooldown > gcd"},
	{"Spinning Crane Kick", "toggle(AoE) & player.area(8).enemies >= 5 & count(Mark of the Crane).enemies.debuffs >= 5 & range <= 7", "enemies"},
	{"Blackout Kick", "player.buff(Blackout Kick!) & !player.lastcast(Blackout Kick)"},
    {"Strike of the Windlord", "target.health.actual >= 400000"},
    {"Fists of Fury", "infront & range <= 4.5 & {target.deathin > 4 & !player.area(5).enemies.infront >= 3 || toggle(AoE) & player.area(5).enemies.infront >= 3}", "enemies"},
    {"Rising Sun Kick", "!player.lastcast(Rising Sun Kick) & {!player.area(5).enemies.infront >= 3 || player.area(5).enemies.infront >= 3 & player.spell(Fists of Fury).cooldown > gcd}"},
	{"Blackout Kick", "!player.lastcast(Blackout Kick) & {!player.area(5).enemies.infront >= 3 || player.area(5).enemies.infront >= 3 & player.spell(Fists of Fury).cooldown > gcd}"},
	{"Tiger Palm", "!player.lastcast(Tiger Palm) || player.chi == 0 || player.area(5).enemies.infront >= 3 & !player.spell(Fists of Fury).cooldown > gcd"},
	{"Chi Wave", "talent(1,3) & player.chi == 0 & player.energy < 47"},

}

local Keybinds = {
	-- Pause
	{"%pause", "keybind(alt)"},
	{"Leg Sweep", "target.enemy & target.alive & target.range <= 5 & {keybind(shift) || target.pvp & player.pvp & UI(stun)}", "target"},
	{"Paralysis", "target.range >= 10 & target.enemy & target.alive & {keybind(shift) || target.pvp & player.pvp & UI(stun)}", "target"},

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
	name = '[|cffADFF2FKleei|r]|cffADFF2F Monk - Windwalker',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
