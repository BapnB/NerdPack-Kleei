local GUI = {

	{type = 'header', text = 'Keybinds', align = 'center'},
	{type = 'text', text = 'Shift keybind will use Infernal Strike on cursor ground.'},
	{type = 'text', text = 'Control keybind will use Sigil of Flame on cursor ground.'},
	{type = 'text', text = 'Alt keybind = Pause.'},
	
} 

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A --- |r|cffDA70D6Demon Hunter - Vengeance|r|c00FF0000 for Advanced Unlocker|r")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/2 - 2/3 - 3/2 - 4/3 - 5/3 - 6/1 - 7/3")
	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

end

local Keybinds = {

	{"Sigil of Flame", "keybind(control)", "cursor.ground"},
	
	{"%pause", "keybind(alt)"},
	
	{"Infernal Strike", "keybind(shift)", "cursor.ground"},
}

local Interrupts = {

	{"Arcane Torrent", "target.range <= 8 & spell(Consume Magic).cooldown > gcd & !prev_gcd(Consume Magic)"},
	{"Consume Magic"},
	
}

local Survival = {

	{"Soul Barrier", "talent(7,3) & player.health <= 70"},
	
	{"Fel Devastation", "talent(6,1) & player.health <= 60 & !player.moving"},
	
	{"#trinket1", "player.health <= 65"},
	
	{"#trinket2", "player.health <= 60"},
	
 	{"#5512", "item(5512).count >= 1 & player.health <= 60", "player"}, --Health Stone
	
	{"Metamorphosis", "player.health <= 40"},
}	

local Combat = {
	
	{"Fiery Brand", "!player.buff(Demon Spikes) & !player.buff(Metamorphosis)"},
	{"Demon Spikes", "!player.buff(Demon Spikes)"},
	{"!Empower Wards", "target.casting.percent > 70"},
	{"Spirit Bomb", "!target.debuff(Frailty) & player.buff(Soul Fragments).count >= 1"},
	{"Soul Carver", "target.debuff(Fiery Brand)"},
	{"Immolation Aura", "player.pain <= 80"},
	{"Felblade", "talent(3,1) & player.pain <= 70"},
	{"Soul Cleave", "player.buff(Soul Fragments).count == 5 || player.incdmg(5) >= player.health.max*0.70 || player.pain >= 80"},
	{"Shear", "player.buff(Blade Turning)"},
	{"Fracture", "talent(4,2) & player.pain >= 60"},
	{"Shear"}
	
}

local Ranged = {

	{"Throw Glaive"},
	
}

local inCombat = {
    {"/startattack", "!isattacking & target.range < 10 & target.enemy & target.alive"},
	
	{Keybinds},
	
	{"%taunt(Torment"},
	
	{Survival, "player.health < 100 & target.enemy & target.alive"},
	
	{Interrupts, "target.interruptAt(40) & toggle(interrupts) & target.infront & target.range <= 8 & target.enemy & target.alive"},
	
	{Ranged, "target.range > 8 & target.range <= 30 & target.enemy & target.alive"},
	
	{Combat, "target.range <= 8 & target.enemy & target.alive"},
}

local outCombat = {
	{Keybinds},
}

NeP.CR:Add(581, {
	name = "[|cffDA70D6Kleei|r]|cffDA70D6 Demon Hunter - Vengeance",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	wow_ver = "7.1.5",
 	nep_ver = '1.8',
	load = exeOnLoad
})
