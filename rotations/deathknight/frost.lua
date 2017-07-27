local GUI = {

    {type = 'header', text = 'Keybinds', align = 'center'},
	{type = 'text', text = 'Alt Keybind = Pause.'},

} 

local exeOnLoad = function()

	print("|cffADFF2F ---------------------------------------------------------------------------|r")
	print("|cffADFF2F --- |r|cffff6060DEATH KNIGHT Frost|r")
	print("|cffADFF2F --- |rRecommended Talents:  1/2 - 2/1 - 3/3 - 4/3 - 5/2 - 6/2 - 7/3")
	print("|cffADFF2F ---------------------------------------------------------------------------|r")


end

local Survival = {

  	{"#5512", "item(5512).count >= 1 & player.health <= 60", "player"}, --Health Stone
	
    {"Death Strike", "player.health <= 85 & player.buff(Dark Succor)"},
	
	{"Icebound Fortitude", "player.health <= 65"},
	
}

local Cooldowns = {
 	
	{"Pillar of Frost", "target.deathin > 8 & target.range <= 8"},
 	
	--{'Obliteration'},
 	
	{"Horn of Winter", "talent(2,2) & !talent(7,2)"},
 	
	{"Empower Rune Weapon", "!talent(7,2) & target.deathin > 8 & runes < 1"},
	
	{"Sindragosa's Fury", "keybind(control) & toggle(cooldowns)"},
	
	{"#trinket2", "keybind(control) & target.deathin > 10 & target.range <= 8 & equipped(Wriggling Sinew)"},
	
}

local Combat = {
    {"/startattack", "!isattacking & target.range < 10"},

	--Mass
	{"Remorseless Winter", "toggle(aoe) & player.area(8).enemies >= 3 || target.range <= 5 & talent(6,3)"},
	{"Glacial Advance", "talent(7,3) & toggle(aoe) & player.area(8).enemies >= 3"},
	--{'Remorseless Winter', 'artifact(Frozen Soul).enabled'},
	
	--Combat
	
 	{"Frost Strike", "target.range <= 5 & {{talent(1,2) & {player.buff(Icy Talons).count < 3 || player.buff(Icy Talons).duration <=1.5}} || player.buff(Obliteration) & !player.buff(Killing Machine)}"},
	
 	{"Howling Blast", "!target.debuff(Frost Fever) || player.buff(Rime)"},
	
	{"Obliterate", "target.range <= 5 & player.buff(Killing Machine)"},
	
    --{"Frostscythe", "talent(6,1) & !talent(7,2) & {player.buff(Killing Machine) || player.area(8).enemies >= 4}"},
	
    {"Obliterate", "target.range <= 5"},
	
	{"Frost Strike", "target.range <= 5"},
	
 
 	--{"Frostscythe", "talent(6,1) & talent(2,2)"},

}

local Keybinds = {
	-- Pause
	{"%pause", "keybind(alt)"},
	
}

local Interrupts = {
	{"Mind Freeze", "target.range <= 15"},
}

local inCombat = {

	{Keybinds},
	{Interrupts, "target.interruptAt(30) & toggle(interrupts)"},
	
	--Ress 
	{"Raise Ally", "!target.enemy & target.dead", "target"},
	
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.range < 8"},
	{Combat, "target.enemy & target.alive"}
}

local outCombat = {

	{Keybinds},
	{"Path of Frost", "player.swimming & !buff"},

}
NeP.CR:Add(251, {
	name = '[|cffff6060Kleei|r]|cffff6060 Death Knight - Frost',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})
