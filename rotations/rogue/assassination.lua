local GUI = {

	{type = 'header', text = 'Keybinds', align = 'center'},
	{type = 'text', text = 'Alt Keybind = Pause.'},
	{type = 'text', text = 'Shift Keybind = Cheap Shot in melee and Stealth.'},
	{type = 'text', text = 'Shift Keybind = Kidney Shot in melee not in Stealth.'},
	{type = 'text', text = 'Shift Keybind = Blind if target are in 10 or more yards.'},
	
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

local Keybinds = {
    --Pause
	{"%pause", "keybind(alt)"},
	{"Cheap Shot", "keybind(shift) & !target.debuff(Cheap Shot) & player.buff(Stealth) & target.range < 6 & target.enemy & target.alive"},
	{"Kidney Shot", "keybind(shift) & !target.debuff(Cheap Shot) & !player.buff(Stealth) & player.combopoints >= 3 & target.range < 6 & target.enemy & target.alive"},
	{"Blind", "keybind(shift) & !player.buff(Stealth) & target.range >= 10 & target.enemy & target.alive"},
}

local PreCombat = {

    {"%pause", "target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence)"},

    {"/stopattack", "player.buff(Vanish) & isattacking"},
    {"Cloak of Shadows", "player.buff(Vanish) &  player.state(dot)"},
    {"%pause", "player.buff(Vanish)"},

	{"Stealth", "!player.buff(Stealth)"},
	{"Cheap Shot", "toggle(Stun) & player.buff(Stealth) & target.range < 5"},
	{"Garrote", "!toggle(Stun) & player.buff(Stealth) & target.range < 5"},
}

local Survival ={

    {"Vanish", "!player.buff(Stealth) & player.health <= 15"},
	{"Crimson Vial", "player.health <= 75"},
	{"Evasion", "player.health <= 80"},
	{"#5512", "item(5512).count >= 1 & player.health <= 60"}, --Health Stone
	--{'Faint', 'player.health<=50'},
	
}

local Cooldowns = {

	{"Vendetta", "target.deathin >= 6 & target.range < 5 & {artifact.enabled(Urge to Kill) & player.energy <= 45 || !artifact.enabled(Urge to Kill)}"},
	
}

local Interrupts = {

	{"Kick", "target.range < 6"},
	--{"Cheap Shot", "player.buff(Stealth) & target.range < 6"},
	--{"Kidney Shot", "cooldown(Kick).duration > gcd & target.range < 6"},
	--{"Blind", "target.range >= 10"},
	--{"Blind", "cooldown(Kidney Shot).duration > gcd"},
	
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

	{"Envenom", "player.combopoints >= 4"},
	{"Mutilate", "!player.combopoints >= 4"},
	
    {"/startattack", "!isattacking"},
   
}

local inCombat = {

    {"%pause", "target.enemy & {target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence)}"},

    {"/stopattack", "player.buff(Vanish) & isattacking"},
    {"Cloak of Shadows", "player.buff(Vanish) &  player.state(dot)"},
    {"%pause", "player.buff(Vanish)"},
	
	{Keybinds},	
	
	{"Gladiator's Medallion", "player.state(stun) || player.state(root) & target.range > 4 || player.state(fear) || player.state(disorient) || player.state(charm)"},
	
	{"Cheap Shot", "target.range < 5 & toggle(Stun) & player.buff(Stealth) & target.enemy & target.alive"},
	{"Garrote", "target.range < 5 & !toggle(Stun) & player.buff(Stealth) & target.enemy & target.alive"},
	
    {Interrupts, "target.interruptAt(40) & toggle(interrupts) & target.infront"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive"},
	{Combat, "!player.buff(Stealth) & target.range < 8 & target.enemy & target.alive"},
	
}

local outCombat = {

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
