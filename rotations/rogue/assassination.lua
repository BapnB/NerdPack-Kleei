local GUI = {

	--------------------------------
	-- Coming Soon
	--------------------------------
	--Alt Keybinds = Pause
	--Shift Keybinds = Cheap Shot in melee and Stealth
	--Shift Keybinds = Kidney Shot in melee not in Stealth
	--Shift Keybinds = Blind if target are in 10 or more yards
} 

local exeOnLoad = function()
	
	print('|cffADFF2F ----------------------------------------------------------------------|r')
 	print('|cffADFF2F --- |r|cffffff00ROGUE - Assassination |cffff0000 by KLEEI |r')
 	print('|cffADFF2F --- |rRecommended Talents: 1/2 - 2/3 - 3/3 - 4/1 - 5/1 - 6/2 - 7/1')
 	print('|cffADFF2F ----------------------------------------------------------------------|r')

	
	NeP.Interface:AddToggle({
		key = 'Stun',
		name = 'PreCombat Stun || Garrote',
		text = 'ON-Stun/OFF-Garrote',
		icon = 'Interface\\Icons\\Spell_frost_stun',
	})
	
		NeP.Interface:AddToggle({
		key = 'Dotting',
		icon = 'Interface\\Icons\\trade_brewpoison',
		name = 'Auto Dotting',
		text = 'ON/OFF Dotting rotation',
	})

	
end

local PreCombat = {

    {"/stopattack", "player.buff(Vanish) & isattacking"},
    {"Cloak of Shadows", "player.buff(Vanish)"},
    {"%pause", "player.buff(Vanish)"},

	{"Stealth", "!player.buff(Stealth)"},
	{"Cheap Shot", "toggle(Stun) & player.buff(Stealth) & target.range <= 5"},
	{"Garrote", "!toggle(Stun) & player.buff(Stealth) & target.range <= 5"},
}

local Cooldowns = {

	{"Vendetta", "target.deathin >= 6 & player.energy <= 45 & target.range <= 5"},
	
}

local Interrupts = {

	{"Kick", "target.range < 6"},
	{"Cheap Shot", "player.buff(Stealth) & target.range < 6"},
	{"Kidney Shot", "cooldown(Kick).duration > gcd & target.range < 6"},
	{"Blind", "target.range >= 10"},
	{"Blind", "cooldown(Kidney Shot).duration > gcd"},
	
}

local Survival ={

    {"Vanish", "!player.buff(Stealth) & player.health <= 15"},
    {"Cloak of Shadows", "player.buff(Vanish)"},
	{"Crimson Vial", "player.health <= 75"},
	{"Evasion", "player.health <= 80"},
	{"#5512", "item(5512).count >= 1 & player.health <= 60", "player"}, --Health Stone
	--{'Faint', 'player.health<=50'},
	
}

local Keybinds = {
    --Pause
	{"%pause", "keybind(alt)"},
	{"Cheap Shot", "keybind(shift) & !target.debuff(Cheap Shot) & !target.debuff(Kidney Shot) & player.buff(Stealth) & target.range < 6 & target.enemy & target.alive"},
	{"Kidney Shot", "keybind(shift) & !target.debuff(Cheap Shot) & player.combopoints >= 4 & target.range < 6 & target.enemy & target.alive"},
	{"Blind", "keybind(shift) & target.range >= 10 & target.enemy & target.alive"},
}

local Combat = {

    --Mass
    {"Fan of Knives", "toggle(AoE) & !player.combopoints >= 5 & player.area(10).enemies >= 3"},
	
	--{"Kidney Shot", "player.combopoints >= 4 & !target.debuff(Cheap Shot)"},
	
	--Dotting
	--{"Hemorrhage", "!target.debuff(Hemorrhage)"},
	{"KingsBane", "toggle(Dotting) & target.deathin > 8"},
	{"Rupture", "toggle(Dotting) & target.deathin > 8 & player.combopoints >= 5 & target.debuff(Rupture).duration <= 8"},
    {"Garrote", "toggle(Dotting) & target.deathin > 8 & target.debuff(Garrote).duration <= 5"},
	
	--{"Exsanguinate", "target.debuff(Rupture).duration > 20 & target.debuff(Garrote).duration > 10"},

	{"Envenom", "player.combopoints >= 5"},
	{"Mutilate", "!player.combopoints >= 5"},
	
    {"/startattack", "!isattacking & target.range < 10"},
   
}

local inCombat = {

    {"%pause", "target.immune", "target"},

    {"/stopattack", "player.buff(Vanish) & isattacking"},
    {"Cloak of Shadows", "player.buff(Vanish)"},
    {"%pause", "player.buff(Vanish)"},
	
	{"Cheap Shot", "toggle(Stun) & player.buff(Stealth) & target.range < 8 & target.enemy & target.alive", "target"},
	{"Garrote", "!toggle(Stun) & player.buff(Stealth) & target.range < 8 & target.enemy & target.alive", "target"},
	
    {Interrupts, "target.interruptAt(40) & toggle(interrupts) & target.infront"},
	{Keybinds},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive"},
	{Combat, "!player.buff(Stealth) & target.range < 8 & target.enemy & target.alive"},
	
}

local outCombat = {

    {"%pause", "target.immune", "target"},

    {Keybinds},
	{PreCombat, "target.enemy & target.alive"},
	{"Crimson Vial", "player.health <= 85"},
	
	-- Poisons
	{"Deadly Poison", "!player.moving & player.buff(Deadly Poison).duration <= 600"},
	{"Leeching Poison", "talent(4,1) & !player.moving & player.buff(Leeching Poison).duration <= 600"},
	{"Crippling Poison", "!talent(4,1) & !player.moving & player.buff(Crippling Poison).duration <= 600"},
}

NeP.CR:Add(259, {
	name = '[|cffffff00Kleei|r]|cffffff00 ROGUE - Assassination',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})
