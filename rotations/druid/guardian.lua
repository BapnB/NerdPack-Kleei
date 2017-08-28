local GUI = {

}

local exeOnLoad = function()

	print('|cffADFF2F ------------------------PVE-------------------------------------------|r')
	print('|cffADFF2F --- |r|c00FF7F00 DRUID - Guardian |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/X - 2/X - 3/X - 4/X - 5/X - 6/X - 7/X')
	print('|cffADFF2F ----------------------------------------------------------------------|r')

end

local Keybinds = {

	{"%pause", "keybind(alt)"},
	
	{"Swipe", "keybind(control)"},
	
	{"Wild Charge", "keybind(shift) & target.range > 5 & target.range < 22", "target"},
	
	{"&Skull Bash", "target.range <= 9.5", "target"},
	
	{"&Mighty Bash", "keybind(shift) & target.inmelee & target.enemy & target.alive", "target"},
	
}

local PreCombat = {

    {"Bear Form", "!player.buff(Bear Form)"},
	
	{"Swipe", "player.area(8)enemies >= 1", "target"},
    
}

local Interrupts = {

	{"&Skull Bash", "target.range <= 9.5", "target"},
	
	{"Mighty Bash", "talent(4,1) & player.spell(Skull Bash).cooldown > 0.3 & target.inmelee", "target"},
	
}

local Survival = {

    {"#5512", "item(5512).count >= 1 & player.health <= 60", "player"}, --Health Stone
	
    {"Survival Instincts", "player.health <= 75 & !player.buff(Survival Instincts)", "player"},

	{"Barkskin", "player.health <= 65", "player"},
	
	{'Bristling Fur', 'player.buff(Ironfur).duration < 2 & player.rage < 40'},
	
	{"Mark of Ursol", "!player.buff(Mark of Ursol) & player.incdmg_magic(5) > 1", "player"},
	
	{"Ironfur", "!player.buff(Ironfur) & player.rage > 44 & player.incdmg.phys(5)", "player"},
	
	{"Frenzied Regeneration", "!player.buff(Frenzied Regeneration) & player.incdmg(5)"},
	
}

local Cooldowns = {

	{'Incarnation: Guardian of Ursoc'},
	{'Bloodfury'},
	{'Berserking'},
	
}

local Combat = {
    
	{"Thrash", "player.area(8)enemies >= 1", "target"},
	
	{"Mangle", "target.inmelee", "target"},
	
	{"Moonfire", "player.buff(Galactic Guardian)", "target"},

	{"Pulverize", "talent(7,3) & player.buff(Pulverize).duration < 3.6"},

	{"&Maul"},

	{"Swipe"},

}

local inCombat = {

    {"Bear Form", "!player.buff(Bear Form)"},
	
	{Keybinds},
	{Interrupts, "target.interruptAt(65) & toggle(Interrupts)"},
	{Survival, 'player.health < 100'},
	{Cooldowns, 'toggle(Cooldowns)'},
	{Combat, "target.enemy & target.alive"}
	
}

local outCombat = {

	{PreCombat},
	{Keybinds},
	
}

NeP.CR:Add(104, {

	name = '[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Guardian',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	wow_ver = '7.1.5',
 	nep_ver = '1.8',
	load = exeOnLoad
	
})
