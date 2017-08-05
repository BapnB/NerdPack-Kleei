local GUI = {

	{type = 'header', text = 'Keybinds', align = 'center'},
	{type = 'text', text = 'Alt Keybind = Pause.'},
	{type = 'text', text = 'Control Keybind = Sap if target are in 10 or less yards or pause if target are already Sapped.'},
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

local Keybinds = {
    --Pause
	
	{"%pause", "keybind(alt) || keybind(control) & target.debuff(Sap)"},
	{"Sap","keybind(control) & target.range <=10 & !target.debuff(Sap)", "target"},
	{"Cheap Shot", "keybind(shift) & !target.debuff(Cheap Shot) & player.buff(Stealth) & target.inmelee & target.enemy & target.alive"},
	{"Kidney Shot", "keybind(shift) & !target.debuff(Cheap Shot) & !player.buff(Stealth) & player.combopoints >= 3 & target.inmelee & target.enemy & target.alive"},
	{"Blind", "keybind(shift) & !player.buff(Stealth) & target.range >= 10 & target.range <= 15 & target.enemy & target.alive"},
	
}

local PreCombat = {
	
	{"Stealth", "!player.buff(Stealth)"},
	{"Shadowstrike", "!keybind(shift) & !toggle(Stun) & player.buff(Stealth) & target.range <= 7 & target.infront"},
	{"Cheap Shot", "toggle(Stun) & player.buff(Stealth) & target.inmelee & target.infront"},
	
}

local Survival ={

    {"Vanish", "!player.buff(Stealth) & player.health <= 15"},
	{"Crimson Vial", "player.health <= 75"},
	{"Evasion", "player.health <= 80"},
	{"#5512", "item(5512).count >= 1 & player.health <= 60"}, --Health Stone
	
}

local Cooldowns ={

	{"Shadow Blades", "target.inmelee & target.enemy & target.alive"},
	
}

local Interrupts = {

	{"Kick", "target.inmelee"},
	--{"Cheap Shot", "target.inmelee & {player.buff(Stealth) || player.buff(Subterfuge)}"},
	--{"Kidney Shot", "player.spell(Kick).cooldown > gcd & target.inmelee"},
	--{"Blind", "target.range >= 10 || player.spell(Kidney Shot).cooldown > gcd"},

}

local Combat = {
    --{"#trinket1", "player.buff(Congealing Goo)"},
	
    {"Goremaw's Bite", "!player.buff(Shadow Dance) & !player.buff(Subterfuge) & player.combopoints <= 2 & player.energy <= 85"},
	
	--MASS Shuriken
	{"Shuriken Storm", "toggle(aoe) & !player.buff(Stealth) & !player.buff(Vanish) & !player.combopoints >= 4 & player.area(10).enemies >= 4"},
	
    --Steath Actions
	{"Symbols of Death", "!player.buff(Shadowmeld) & target.deathin >= 4 & player.buff(Symbols of Death).duration <= player.buff(Symbols of Death).duration*0.3"},
	{"Shadowstrike", "!player.buff(Vanish) & target.range <= 15 & player.combopoints <= 4 & {player.buff(Shadow Dance) || player.buff(Subterfuge)}"},
	
	--Finishers  
	{"Nightblade", "toggle(Dotting) & target.deathin >= 10 & player.combopoints == 5 & target.debuff(Nightblade).duration <= 3.5"},
	{"Eviscerate", "!keybind(shift) & player.combopoints == 5"},
	
	--Stealth Cooldowns
    {"Shadow Dance", "!player.buff(Shadow Dance) & !player.buff(Subterfuge) & !player.combopoints >= 4 & player.energy >= 38 & target.range <= 15"},
    
	--Build Combo Point
	{"Backstab", "player.combopoints < 5 & !player.buff(Stealth) & !player.buff(Shadow Dance) & !player.buff(Vanish) & !player.buff(Subterfuge) & player.spell(Shadow Dance).charges < 1"},
	{"Gloomblade", "talent(1,3) & player.combopoints < 5 & !player.buff(Stealth) & !player.buff(Shadow Dance) & !player.buff(Vanish) & !player.buff(Subterfuge) & player.spell(Shadow Dance).charges < 1"},
	
	{"/startattack", "!isattacking & target.inmelee & target.enemy & target.alive"},
}

local inCombat = {

    {"%pause", "target.enemy & {target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence)}"},

    {"/stopattack", "player.buff(Vanish) & isattacking & target.inmelee", "target"},
    {"Cloak of Shadows", "player.buff(Vanish)"}, -- &  player.state(dot)
    {"%pause", "player.buff(Vanish) & target.inmelee", "target"},
	
	{Keybinds},
	
	{"Gladiator's Medallion", "player.state(stun) || player.state(root) & !target.inmelee || player.state(fear) || player.state(disorient) || player.state(charm)"},
	{"Every Man for Himself", "player.state(stun) || player.state(root) & !target.inmelee || player.state(fear) || player.state(disorient) || player.state(charm)"},
	
	{Cooldowns, "toggle(cooldowns)"},
	{Interrupts, "target.interruptAt(40) & toggle(interrupts)"},
	{Survival, "player.health <100"},
	{Combat, "!player.buff(Stealth) & target.enemy & target.alive"},
    
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
