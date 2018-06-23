local GUI = {

}

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A --- |r|c00FF7F00 DRUID - Guardian |r|c00FF0000 for Advanced Unlocker|r")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/X - 2/X - 3/3 - 4/X - 5/X - 6/X - 7/X")
	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

end

local Keybinds = {

	{"Regrowth", "keybind(alt)"},
	
	{"Swipe", "keybind(control)"},
	
	{"Wild Charge", "keybind(shift) & target.range > 5 & target.range < 22", "target"},
	
	{"&Skull Bash", "keybind(shift) & target.range > 5 & target.range <= 9.5", "target"},
	
	{"&Mighty Bash", "keybind(shift) & target.inmelee & target.enemy & target.alive", "target"},
	
}

local PreCombat = {

    {"Bear Form", "!player.buff(Bear Form)"},
	
	{"Swipe", "player.area(5)enemies >= 1 || target.enemy & target.alive & target.inmelee", "target"},
    
}

local Interrupts = {

	{"&Skull Bash", "target.range <= 9.5", "target"},
	
	{"Mighty Bash", "talent(4,1) & player.spell(Skull Bash).cooldown > 0.3 & target.inmelee", "target"},
	
}

local Survival = {

    {"#5512", "item(5512).count >= 1 & player.health <= 60", "player"}, --Health Stone
	
	--{"Rejuvenation", "talent(3,3) & player.health <= 90 & !player.buff(Rejuvenation)", "player"},-- on private servers it cast being in form without quit from it
	
    {"Survival Instincts", "player.health <= 65 & !player.buff(Survival Instincts)", "player"},

	{"Barkskin", "player.health <= 65", "player"},
	
	{"Swiftmend", "talent(3,3) & player.health <= 30", "player"},-- on private servers it cast being in form without quit from it
	
	{"Ironfur", "!player.buff(Ironfur)", "player"}, -- & player.incdmg.phys(3) > player.health.max * 0.10
	
	{"Frenzied Regeneration", "!player.buff(Frenzied Regeneration) & player.incdmg(5) > player.health.max * 0.20", "player"},
	
}

local Cooldowns = {

	--{"Incarnation: Guardian of Ursoc", "talent(5,2)"},

}

local Combat = {
    
	{"Thrash", "player.area(10).enemies >= 1 || target.range <= 5"},
	
	{"Mangle", "target.inmelee", "target"},
	
	{"Moonfire", "player.buff(Galactic Guardian)", "target"},

	{"Pulverize", "talent(7,3) & player.buff(Pulverize).duration < 3.6"},

	{"&Maul", "target.inmelee & player.buff(Ironfur)", "target"},

	{"Swipe", "player.area(10).enemies >= 1 || target.range <= 5"},
	
	{"Rage of the Sleeper", "player.incdmg(4) & player.area(10)enemies >= 4"},

}

local inCombat = {

    {"Bear Form", "!player.buff(Bear Form)"},
	--{"%taunt(SPELL)"},
	
	
	{Keybinds},
	{Interrupts, "target.interruptAt(65) & toggle(Interrupts)"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(Cooldowns)"},
	{Combat, "target.enemy & target.alive"}
	
}

local outCombat = {

	{PreCombat},
	{Keybinds},
	
}

NeP.CR:Add(104, {

	name = "[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Guardian",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})
