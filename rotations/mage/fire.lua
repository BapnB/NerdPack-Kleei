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
	
	NeP.Interface:AddToggle({
		key = 'tw',
		name = 'Time Warp',
		text = 'Automatically use Time Warp.',
		icon = 'Interface\\Icons\\ability_mage_timewarp',
	})
	
	NeP.Interface:AddToggle({
		key = "cr",
		name = "Auto Control",
		text = "Automatically use Frost Nova & Dragon's Breath.",
		icon = "Interface\\Icons\\spell_frost_frostnova",
	})
	
end

local Keybinds = {

    {"Polymorph", "keybind(control) & !target.debuff(Polymorph) & !player.moving & range < 27", "target"},
	
	{"Spellsteal", "target.alive & target.enemy & keybind(alt) & !player.moving & range < 27", "target"},
	
	{"Meteor", "player.combat & keybind(shift) & target.range <=35", "target.ground"},	

}

local PreCombat = { 

	{"Blazing Barrier", "!player.buff(Blazing Barrier) & {player.area(40).enemies >= 1 || target.enemy & target.alive}", "player"},

}

local Survival = {

	{"Gladiator's Medallion", "target.pvp & player.pvp & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

	{"!Ice Block", "{player.health <= 20 || player.debuff(Cauterize) || player.state(stun)}", "player"},
	
    {"Dragon's Breath",	"toggle(cr) & player.area(8).enemies.infront >= 1 & !target.debuff(Frost Nova) & !target.debuff(Dragon's Breath)", "enemies"},
	
	{"Frost Nova", "toggle(cr) & player.area(8).enemies >= 1 & !player.lastcast(Frost Nova) & !target.debuff(Frost Nova) & !target.debuff(Dragon's Breath)"},
	
	--{"!Blink", "player.area(8).enemies >= 1 & !player.lastcast(Blink)"},
	
	{"Blazing Barrier", "player.buff(Blazing Barrier).duration < gcd & {!target.pvp & target.range <= 8 || target.pvp & player.pvp}", "player"},
	
	{"#5512", "item(5512).count >= 1 & player.health <= 60", "player"},	

}

local Interrupts = {

	{"!Counterspell", "interruptAt(55)", "target"},
	
	{"!Dragon's Breath", "interruptAt(55) & player.spell(Counterspell).cooldown > gcd & !player.lastcast(Counterspell) & player.area(10).enemies.infront >= 1", "enemies"},
	
	{"!Ring of Frost", "interruptAt(5) & !player.moving & player.spell(Counterspell).cooldown > gcd & !player.lastcast(Counterspell)  &range < 31", "target.ground"},

}

local Cooldowns = {

	{"Time Warp", "toggle(tw) & target.range <= 35 & target.deathin >= 25"},
	
	{"Combustion", "player.spell(Phoenix's Flames).charges < 1 & player.spell(Fire Blast).charges < 1 & target.range <= 35 & target.deathin >= 10", "player"},
	
	{"Meteor", "!player.buff(Heating up) & target.range <=35 & target.deathin >= 5", "target.ground"},

    {"#trinket1", "UI(trk1) & target.range <= 35 & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.range <= 35 & target.deathin >= 10"},

}

local Combat = {

    {"Flamestrike", "toggle(AoE) & !target.debuff(Dragon's Breath) & player.buff(Hot Streak!) & target.area(10).enemies >= 4", "target.ground"},
	
	{"Meteor", "target.range <= 35 & !player.buff(Heating up) & {toggle(AoE) & target.area(8).enemies >= 3 || target.debuff(Dragon's Breath) & target.deathin >= 4 || target.debuff(Frost Nova) & target.deathin >= 3}", "target.ground"},	
	
	{"Pyroblast", "target.range <=35 & !target.debuff(Dragon's Breath) & player.buff(Hot Streak!)", "target"},
	
	{"!Phoenix's Flames",  "!player.buff(Hot Streak!) & !target.debuff(Dragon's Breath) & {player.buff(Heating up) || player.spell(Phoenix's Flames).charges >= 2 || player.spell(Fire Blast).charges >= 1}", "target"},
	
	{"!Fire Blast", "!player.buff(Hot Streak!) & !target.debuff(Dragon's Breath) & {player.buff(Heating up) || player.spell(Fire Blast).charges >= 2 || player.spell(Phoenix's Flames).charges >= 1}", "target"},
	
	{"Fireball", "target.infront & {!player.buff(Hot Streak!) || target.debuff(Dragon's Breath) || target.debuff(Polymorph)}", "target"}, --!player.moving & 
	
	--{"Scorch", "player.moving & !player.buff(Hot Streak!) & !target.debuff(Dragon's Breath)", "target"},

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