local GUI = {

	{type = 'header', text = 'Keybinds', align = 'center'},
	{type = 'text', text = 'Shift keybind + Cooldowns Toggle = Metamorphosis on cursor ground.'},
	{type = 'text', text = 'Control keybind = Chaos Nova (if in player area(5) is more than 1 enemies).'},
	{type = 'text', text = 'Control keybind in range will use Imprison (if target are in 10 or more yards).'},
	{type = 'text', text = 'Alt keybind = Pause.'},
	
} 

local exeOnLoad = function()

	
	print('|cffADFF2F ------------------------PVE-------------------------------------------|r')
 	print('|cffADFF2F --- |r|cffDA70D6Demon Hunter - Havoc|r')
 	print('|cffADFF2F --- |rRecommended Talents: 1/2 - 2/2 - 3/X - 4/3 - 5/X - 6/1 - 7/2')
 	print('|cffADFF2F ----------------------------------------------------------------------|r')
	
		NeP.Interface:AddToggle({
		key = 'charge',
		name = 'Charge',
		text = 'ON/OFF using Felblade in Rotation',
		icon = 'Interface\\Icons\\ability_demonhunter_felblade',
	})

	
end

local FelRush = {

    --{"%SendKey(SPACE)"},
	--{"Fel Rush"},

}

local Survival = {

	{"#5512", "item(5512).count >= 1 & player.health <= 60", "player"}, --Health Stone
	{"Blur", "player.health <= 70"}

}

local Interrupts = {

	{"Consume Magic"},
	
	--{"Chaos Nova", "player.spell(Consume Magic).cooldown > gcd & target.range <= 5"}
}

local Keybinds = {

    {"Metamorphosis", "toggle(cooldowns) & keybind(shift)", "cursor.ground"},
	{"%pause", "keybind(alt)"},
	{"Chaos Nova", "keybind(control) & player.area(5).enemies >= 1"},
	{"Imprison", "keybind(control) & target.range <= 20 & target.range >= 10"},
	
}

local Cooldowns = {

	{"Nemesis", "talent(5,3) & target.deathin >= 15"},
	{"Chaos Blades", "talent(7,1) & target.deathin >= 15"},
}

local Melee = {

	{"Chaos Strike", "player.fury >= 40 & {player.area(8).enemies <= 5 || player.spell(Eye Beam).cooldown > gcd}"},
	{"Annihilation", "player.fury >= 40 & {player.area(8).enemies <= 5 || player.spell(Eye Beam).cooldown > gcd}"},
	{"Demon's Bite", "!talent(2,2) & player.fury <= 39"},
}

local inCombat = {

    {"%pause", "target.enemy & {target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence)}", "player"},
	
	{"Gladiator's Medallion", "player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)", "player"},

    ---------------
	{Keybinds},
	{Survival, "player.health < 100"},
	{Interrupts, "target.interruptAt(40) & toggle(interrupts)"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & target.range <= 2"},
	---------------
	
	{"/startattack", "!isattacking & target.range < 10 & target.enemy & target.alive", "target"},
	
	---Mass
	{"Fury of the Illidari", "!player.moving & target.deathin > 5 & target.enemy & target.alive & !player.lastcast(Vengeful Retreat) & target.range <= 1"},
	{"Eye Beam", "toggle(AoE) & !player.moving & target.enemy & target.alive & !player.lastcast(Vengeful Retreat) & target.range <= 15 & target.infront & player.area(8).enemies >= 5"},
	
	{"Blade Dance", "talent(3,1) & toggle(AoE) & {player.area(5).enemies == 4 || player.spell(Eye Beam).cooldown > gcd & player.area(5).enemies >= 5}"},
	{"Death Sweep", "talent(3,1) & toggle(AoE) & {player.area(5).enemies == 4 || player.spell(Eye Beam).cooldown > gcd & player.area(5).enemies >= 5}"},
	
	{"Blade Dance", "talent(3,2) & toggle(AoE) & {player.area(5).enemies >= 1 & player.area(5).enemies <= 4 || player.spell(Eye Beam).cooldown > gcd & player.area(5).enemies >= 5}"},
	{"Death Sweep", "talent(3,2) & toggle(AoE) & {player.area(5).enemies == 1 & player.fury <= 39 || player.area(5).enemies >= 2 & player.area(5).enemies <= 4 || player.spell(Eye Beam).cooldown > gcd & player.area(5).enemies >= 5}"},
	
	---Charge
	{"Felblade", "toggle(charge) & talent(1,2) & target.enemy & target.alive & target.range <= 15 & {player.fury <= 39 || target.range >= 8 & player.fury <= 100}"},
	--{FelRush, "player.spell(Fel Rush).charges >= 1 & target.enemy & target.alive & target.range <= 5 & player.fury <= 39"},
	--{"Fel Rush", "toggle(charge) & player.spell(Felblade).cooldown < gcd & target.enemy & target.alive & target.range <= 5 & player.energy <= 39"},
	
	---Out of melee range
	{"Fel Eruption", "talent(5,2) & target.range <= 20 & player.fury >= 10"},
	{"Fel Barrage", "talent(7,2) & !target.debuff(Imprison) & target.enemy & target.alive & target.range <= 30 & player.spell(Fel Barrage).charges >= 5 & {player.buff(Metamorphosis) & player.fury <= 39 & player.spell(Death Sweep).cooldown >= gcd || player.buff(Metamorphosis) & player.fury <= 15 || !player.buff(Metamorphosis)}"},
	{"Throw Glaive", "player.spell(Fel Rush).charges < 1 & player.spell(Felblade).cooldown > gcd & !target.debuff(Imprison) & target.enemy & target.alive & target.range >= 8 & target.range <= 30"},
	{"Fel Rush", "toggle(charge) & target.enemy & target.alive & target.infront & target.range > 5"},
	{"Throw Glaive", "player.fury <= 38 & target.alive & target.enemy", "target"},
	
	---Acrobat (old thing, for now is dissabled) 
	--{"Vengeful Retreat", "toggle(charge) & !player.buff(Metamorphosis) & player.spell(Fel Rush).charges >= 1 & target.range <= 3 & target.enemy & target.alive & player.energy <= 39"},
	
	{Melee, "target.enemy & target.alive & target.inmelee"},
}

local outCombat = {
	{Keybinds},
	{FelRush},
}

NeP.CR:Add(577, {
	name = '[|cffDA70D6Kleei|r]|cffDA70D6 Demon Hunter - Havoc',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	wow_ver = '7.1.5',
 	nep_ver = '1.8',
	load = exeOnLoad
})