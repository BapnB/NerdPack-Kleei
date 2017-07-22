local GUI = {

	--------------------------------
	-- Coming Soon
	--------------------------------
    --Alt Keybinds = Pause
	--Shift Keybinds will use Leg Sweep if target is in range <=5
	--Shift Keybinds will use Paralysis if target are in 10 or more yards
	--Control Keybinds = Exploding Keg on cursor ground
	--In out of combat if your target is friendly and dead will use Resuscitate to ress him
} 

local exeOnLoad = function()

	print('|cffADFF2F ----------------------------------------------------------------------|r')
 	print('|cffADFF2F --- |r|cffADFF2FMonk - Brewmaster|r')
 	print('|cffADFF2F ---  |rRecommended Talents: 1/3 - 2/1 - 3/2 - 4/3 - 5/1 - 6/1 - 7/1')
 	print('|cffADFF2F ----------------------------------------------------------------------|r')
	
end

local Keybinds = {

    {"%pause", "keybind(alt)", "player"},
	{"Leg Sweep", "keybind(shift) & talent(4,3) & target.range <= 5 & target.enemy & target.alive"},
	{"Paralysis", "keybind(shift) & target.range >= 10 & target.enemy & target.alive"},
	{"Exploding Keg", "keybind(control) & target.enemy & target.alive", "cursor.ground"},
	
}

local Interrupts ={

    {"Spear Hand Strike", "target.range <= 5"},
	{"Paralysis", "target.range >= 6 || player.spell(Spear Hand Strike).cooldown > gcd"},

}

local Survival = {

	{"Fortifying Brew", "player.health <= 35"},	
	{"#Healthstone", "player.health <= 60"},
	{"Healing Elixir", "talent(5,1) & player.health <= 75 & !lastcast(Healing Elixir)"},
    {"Black Ox Brew", "!player.buff(Ironskin Brew) & player.spell(Ironskin Brew).charges < 1"},
	{"Expel Harm", "player.health <= 80"},
	{"Chi Wave", "talent(1,3) & player.health <= 90", "player"},
	{"Ironskin Brew", "player.buff(Ironskin Brew).duration <= 1 & player.spell(Ironskin Brew).charges >= 2 & !lastcast(Ironskin Brew)"},

}

local Cooldowns = {

   {"Rushing Jade Wind", "!player.buff(Rushing Jade Wind)"},

}

local Action = {

	{"/startattack", "!isattacking & target.range < 10"},
	
	-- AoE
	{"Breath of Fire", "toggle(AoE) & equipped(Sal'salabim's Lost Tunic) & target.range <= 8"},         -- legendary chest (Sal'salabim's Lost Tunic) are equipped
	{"Keg Smash", "toggle(AoE) & player.area(8).enemies >= 2"},
	{"Rushing Jade Wind", "toggle(AoE) & player.area(8).enemies >= 2 & target.range <= 8"},
	{"Chi burst", "toggle(AoE) & talent(1,1) & player.area(8).enemies >= 2"},
	{"Breath of Fire", "toggle(AoE) & player.area(8).enemies >= 2"},
	--Solo
	{"Blackout Strike", "target.range <= 5"},
	{"Breath of Fire", "equipped(Sal'salabim's Lost Tunic) & target.range <= 8"},         -- legendary chest (Sal'salabim's Lost Tunic) are equipped
	{"Keg Smash"},										
	{"Tiger Palm", "player.energy >= 65"},
	{"Breath of Fire"},									          
	{"Rushing Jade Wind"},								              

}

local inCombat = {

	{Keybinds},
	
	{"%taunt(Provoke)"},
	
	{Interrupts, "target.interruptAt(15) & target.enemy & target.alive"},
	{Survival, "player.health < 100 & target.enemy & target.alive"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive"},
	{Action, "target.range <= 10 & target.enemy & target.alive"},

}

local outCombat = {

    --{'%ressdead(Resuscitate)'},
	{"%dispelall"},
    {"Resuscitate", "!target.enemy & target.dead", "target"},
	{Keybinds},
	
}

NeP.CR:Add(268, {
  name = '[|cffADFF2FKleei|r]|cffADFF2F Monk - Brewmaster',
  ic = inCombat,
  ooc = outCombat,
  gui = GUI,
  load = exeOnLoad
})