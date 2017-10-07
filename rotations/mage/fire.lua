local GUI = {

	{type = 'ruler'}, {type = 'spacer'},
	{type = 'header', text = 'Settings', align = 'center'},
	{type = 'ruler'}, {type = 'spacer'},
	{type = 'header', text = 'Use Trinkets if Cooldown Toggle is enable', align = 'center'},		
	----------------------------------------------------------------------------
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = true},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = true},
	--------------------------------------------------------------------------
	{type = 'ruler'}, {type = 'spacer'},
	
}

local exeOnLoad = function()

	print('|c0000BFFF --- |r|c0000BFFF Mage - Fire |r')

	print('|c0000BFFF ------------------------PVE-------------------------------------------|r')
	print('|c0000BFFF --- |rRecommended Talents: Coming Soon')
	print('|c0000BFFF ----------------------------------------------------------------------|r')
	
end

local Keybinds = {

   --Coming Soon

}

local PreCombat = { 

	{"Blazing Barrier", "!player.buff(Blazing Barrier) & player.area(40).enemies >= 1", "player"},

}

local Survival = {

	{"!Ice Block", "{player.health <= 20 || player.debuff(Cauterize)}", "player"},
	
	{"!Frost Nova", "player.area(8).enemies >= 1 & !player.lastcast(Frost Nova) & !target.debuff(Frost Nova)"},
	
	--{"!Blink", "player.area(8).enemies >= 1 & !player.lastcast(Blink)"},
	
	{"Blazing Barrier", "player.buff(Blazing Barrier).duration < gcd & {!target.pvp & target.range <= 8 || target.pvp & player.pvp}", "player"},
	
	{"#5512", "item(5512).count >= 1 & player.health <= 60", "player"},	

}

local Interrupts = {

	{"!Counterspell", "interruptAt(55)", "target"},
	
	{"!Dragon's Breath", "interruptAt(55) & player.spell(Counterspell).cooldown > gcd & !plastcast.lastcast(Counterspell) & player.area(12).enemies.infront >= 1", "target"},
	
	{"!Ring of Frost", "interruptAt(5) & !player.moving & player.spell(Counterspell).cooldown > gcd & !plastcast.lastcast(Counterspell)  &range < 31", "target.ground"},

}

local Cooldowns = {

	{"Time Warp", "target.range <= 35 & target.deathin >= 20"},
	
	{"Combustion", "target.range <= 35 & target.deathin >= 10", "player"},
	
	{"Meteor", "target.range <=35 & target.deathin >= 10", "target.ground"},

    {"#trinket1", "UI(trk1)"},
	{"#trinket2", "UI(trk2)"},

}

local Combat = {

    {"Flamestrike", "toggle(AoE) & player.buff(Hot Streak!) & target.area(10).enemies >= 3", "target.ground"},
	
	{"Meteor", "toggle(AoE) & target.range <= 35 & target.area(8).enemies >= 3", "target.ground"},	
	
	{"Pyroblast", "target.range <=35 & player.buff(Hot Streak!)", "target"},
	
	{"Phoenix's Flames",  "!player.buff(Hot Streak!)", "target"},
	
	{"Fire Blast", "!player.buff(Hot Streak!)", "target"},
	
	{"Fireball", "!player.moving & !player.buff(Hot Streak!)", "target"},
	
	{"Scorch", "player.moving", "target"},

}

local inCombat = {

	{Keybinds},
	{Interrupts,  "toggle(interrupts) & {!target.pvp || target.pvp & player.pvp}"},
    {Survival, "player.health <= 100"},
	{Cooldowns, "toggle(cooldowns)"},
    {Combat, "target.alive & target.enemy & {!target.pvp || target.pvp & player.pvp}"},
	
	
}

local outCombat = {	

	{Keybinds},
	{PreCombat},

}

NeP.CR:Add(63, {
	name = '[|c0000BFFFKleei|r]|c0000BFFF Mage - Fire',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})