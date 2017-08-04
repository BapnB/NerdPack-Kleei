local GUI = {

	{type = 'header', text = 'Keybinds', align = 'center'},
	{type = 'text', text = 'Alt Keybind = Pause.'},
	{type = 'text', text = 'Control Keybind = Sap if target are in 10 or less yards or pause if targe are already Sapped.'},
	{type = 'text', text = 'Shift Keybind = Cheap Shot in melee and Stealth.'},
	{type = 'text', text = 'Shift Keybind = Kidney Shot in melee not in Stealth.'},
	{type = 'text', text = 'Shift Keybind = Blind if target are in 10 or more yards.'},
	
} 

local exeOnLoad = function()

	print('|cffADFF2F ----------------------------------------------------------------------|r')
 	print('|cffADFF2F --- |r|cffffff00ROGUE - Subtlety |cffff0000 by KLEEI |r')
 	print('|cffADFF2F --- |rRecommended Talents: 1/2 - 2/2 - 3/3 - 4/1 - 5/2 - 6/1 - 7/1')
 	print('|cffADFF2F ----------------------------------------------------------------------|r')
	
		NeP.Interface:AddToggle({
		key = 'Stun',
		name = 'PreCombat Stun/Shadowstrike',
		text = 'ON-Stun/OFF-Shadowstrike',
		icon = 'Interface\\Icons\\Spell_frost_stun',
	})
	
		NeP.Interface:AddToggle({
		key = 'Dotting',
		icon = 'Interface\\Icons\\ability_rogue_nightblade',
		name = 'Auto Dotting',
		text = 'ON/OFF Dotting rotation',
	})

end

local PreCombat = {
	
	{"Stealth", "!player.buff(Stealth)"},
	{"Shadowstrike", "!toggle(Stun) & player.buff(Stealth) & target.range <= 8 & target.infront"},
	{"Cheap Shot", "toggle(Stun) & player.buff(Stealth) & target.range <= 5 & target.infront"},
	
}

local Cooldowns ={

	{"Shadow Blades", "target.range <= 5 & target.enemy & target.alive"},
	
}

local Combat = {
    --{"#trinket1", "player.buff(Congealing Goo)"},
	
    {"Goremaw's Bite", "!player.buff(Shadow Dance) & !player.buff(Subterfuge) & player.combopoints <= 2 & player.energy <= 85"},
	
	--MASS Shuriken
	{"Shuriken Storm", "toggle(aoe) & !player.buff(Stealth) & !player.buff(Vanish) & !player.combopoints >= 4 & player.area(10).enemies >= 4"},
	
    --Steath Actions
	{"Symbols of Death", "!player.buff(Shadowmeld) & target.deathin >= 4 & player.buff(Symbols of Death).duration <= player.buff(Symbols of Death).duration*0.3"},
	{"Shadowstrike", "!player.buff(Vanish) & target.range <= 8 & player.combopoints <= 4 & {player.buff(Shadow Dance) || player.buff(Subterfuge)"},
	
	--Finishers  
	{"Nightblade", "toggle(Dotting) & target.deathin >= 10 & player.combopoints == 5 & target.debuff(Nightblade).duration <= 2"},
	{"Eviscerate", "!keybind(shift) & player.combopoints >= 5"},
	
	--Stealth Cooldowns
    {"Shadow Dance", "!player.buff(Shadow Dance) & !player.buff(Subterfuge) & !player.combopoints >= 5 & player.energy >= 38 & target.range <= 8"},
    
	--Build Combo Point
	{"Backstab", "!player.buff(Shadow Dance) & !player.buff(Vanish) & !player.buff(Subterfuge) & player.spell(Shadow Dance).charges < 1"},
	
}

local Keybinds = {
    --Pause
	
	{"%pause", "keybind(alt) || keybind(control) & target.debuff(Sap)"},
	{"Sap","keybind(control) & target.range <=10 & !target.debuff(Sap)", "target"},

	{"Cheap Shot", "keybind(shift) & !target.debuff(Cheap Shot) & !target.debuff(Kidney Shot) & target.range < 6 & target.enemy & target.alive & {player.buff(Stealth) || player.buff(Subterfuge)}"},
	{"Kidney Shot", "keybind(shift) & !target.debuff(Cheap Shot) & player.combopoints >= 4 & target.range < 6 & target.enemy & target.alive"},
	{"Blind", "keybind(shift) & target.range >= 10 & target.enemy & target.alive"},
	
}

local Interrupts = {

	{"Kick", "target.range < 6"},
	{"Cheap Shot", "target.range < 6 & {player.buff(Stealth) || player.buff(Subterfuge)}"},
	{"Kidney Shot", "player.spell(Kick).cooldown > gcd & target.range < 6"},
	{"Blind", "target.range >= 10 || player.spell(Kidney Shot).cooldown > gcd"},

}

local Survival ={

    {"Cloak of Shadows", "player.health <= 15"},
    {"Vanish", "!player.buff(Stealth) & lastcast(Cloak of Shadows)"},
	{"Crimson Vial", "player.health <= 75"},
	{"Evasion", "player.health <= 80"},
	{"#5512", "item(5512).count >= 1 & player.health <= 60", "player"}, --Health Stone
	
}

local inCombat = {

    {"%pause", "player.buff(Vanish)"},
	
    {"/startattack", "!isattacking & target.range < 10 & target.enemy & target.alive"},
	
	{Keybinds},
	{Cooldowns, "toggle(cooldowns)"},
	{Interrupts, "target.interruptAt(40) & toggle(interrupts)"},
	{Survival, "player.health <100"},
	{Combat, "target.enemy & target.alive"},
}

local outCombat = {
    {Keybinds},
	{PreCombat, "target.enemy & target.alive"},
	{"Crimson Vial", "player.health <= 84"},
}

NeP.CR:Add(261, {
	name = '[|cffffff00Kleei|r]|cffffff00 ROGUE - Subtlety',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})
