local unpack = _G.unpack

local keybind_list_1 = {

	{key = '1', text = 'Shift Keybind'},
	{key = '2', text = 'Control Keybind'},
	{key = '3', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},	
	
}

local keybind_list_2 = {

	{key = '4', text = 'Shift Keybind'},
	{key = '5', text = 'Control Keybind'},
	{key = '6', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},	

}

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\assassin.blp', width = 128, height = 128, offset = 90, y = -50, align = 'center'},

}

local GUI = {

	unpack(Logo_GUI),

    {type = 'spacer'},
	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = 'spacer'},
	{type = 'combo', default = '2', key = 'list1', list = keybind_list_1, width = 100},	
	{type = 'text', text = "Use Sap:|c0000FA9A <= 10 yards, pause if Sapped:|r"},
	{type = 'text', text = "Use Blind:|c0000FA9A in combat:"},
	{type = 'spacer'},
	{type = 'combo', default = '4', key = 'list2', list = keybind_list_2, width = 100},	
	{type = 'text', text = "Use Cheap Shot:|c0000FA9A Stealth:"},	
	{type = 'text', text = "Use Kidney Shot:|c0000FA9A in melee not in Stealth:"},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun:|c0000FA9A Auto stun PVP Target [Kidney Shot].|r", align = 'left', key = 'stun', default = true},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = 'checkspin', text = 'Use Vanish:', key = 'van', check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Crimson Vial:', key = 'cv', check = true, spin = 75, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Evasion:', key = 'eva', check = true, spin = 80, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},	

	{type = 'header', size = 16, text = 'Other', align = 'center'},
	{type = 'checkbox', text = "Pick Pocket:|c0000FA9A < 10 yards and you don't moving", 	key = 'pp',   default = true},
	{type = 'checkbox', text = "Poisons:|c0000FA9A <= 10 min.", 	key = 'pos',   default = true},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},	
	
    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 10 sec|r", align = 'center'},	
    {type = 'text', text = "Vendetta:"},
	{type = 'spacer'},
	
} 

local exeOnLoad = function()
	
	print('|cffADFF2F ------------------------PVE-------------------------------------------|r')
 	print('|cffADFF2F --- |r|cffffff00ROGUE - Assassination|r')
 	print('|cffADFF2F --- |rRecommended Talents: 1/1 - 2/3 - 3/3 - 4/1 - 5/1 - 6/2 - 7/1')
 	print('|cffADFF2F ----------------------------------------------------------------------|r')


--		NeP.Interface:AddToggle({
--		key = 'Dotting',
--		icon = 'Interface\\Icons\\trade_brewpoison',
--		name = 'Auto Dotting',
--		text = 'ON/OFF Dotting rotation',

--})

end

local Garrote = {

    {"%pause", "player.energy <= 44"},
    {"Garrote", nil, "target"},

}

local Keybinds = {

	{"Sap","range <= 10 & infront & !debuff(Sap) & !target.state(stun) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
	{"Cheap Shot", "inmelee & infront & player.buff(Stealth) & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Kidney Shot", "inmelee & infront & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || target.pvp & player.pvp & UI(stun) & !target.state(stun)}", "target"},
	{"Blind", "!player.buff(Stealth) & !player.buff(Vanish) & player.combat & range <= 15 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
	
}

local PreCombat = {

    --Leveling
    {"Sinister Strike", "target.inmelee & {player.level < 8 || player.level >= 8 & player.level <= 11 || !keybind(alt) & !keybind(shift) & !keybind(control) & player.level >= 8 & player.level <= 11}", "target"},
	--{"Sinister Strike", " & target.range < 6"},
	--End Leveling

	{"Pick Pocket", "UI(pp) & !player.moving & player.buff(Stealth) & !player.lastcast(Pick Pocket) & !pvp & enemy & alive & range < 10 & !isdummy", "target"},	
	{"%pause", "target.debuff(Sap) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}"},	
	
    {"/stopattack", "player.buff(Vanish) & isattacking"},
    {"Cloak of Shadows", "player.state(dot) & {player.buff(Vanish) || player.buff(Stealth)}"},
    {"%pause", "player.buff(Vanish)"},

	{"Stealth", "!player.buff(Stealth)"},
	{"Cheap Shot", "player.buff(Stealth) & inmelee & player.spell(Garrote).cooldown > gcd", "target"},
	{"Garrote", "inmelee & player.buff(Stealth) & !keybind(alt) & !keybind(shift) & !keybind(control)", "target"},
	
}

local Survival ={

    {"Vanish", "!player.buff(Stealth) & player.health <= UI(van_spin) & UI(van_check)"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"Evasion", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)"}, --Health Stone
	
}

local Interrupts = {

	{"Kick", "target.inmelee", "target"},
	{"Cloak of Shadows", "target.pvp & player.spell(Kick).cooldown > 0.1 & targettarget.is(player)", "target"},
	--{"Cheap Shot", "player.buff(Stealth) & target.inmelee"},
	--{"Kidney Shot", "cooldown(Kick).duration > gcd & target.inmelee"},
	--{"Blind", "!target.inmelee"},
	--{"Blind", "cooldown(Kidney Shot).duration > gcd"},
	
}

local Cooldowns = {

	{"Vendetta", "target.deathin >= 10 & target.inmelee & {artifact.enabled(Urge to Kill) & player.energy <= 45 || !artifact.enabled(Urge to Kill)}"},

	{"#trinket1", "UI(trk1) & target.inmelee & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.inmelee & target.deathin >= 10"},

}

local Combat = {

    {"/startattack", "!isattacking & target.inmelee"},
    {"Tricks of the Trade", "player.aggro & {group.type == 3 || group.type == 2}", "tank"},
    --Mass
    {"Fan of Knives", "toggle(AoE) & player.combopoints < 5 & player.area(8).enemies >= 2 & count.enemies(Deadly Poison).debuffs < player.area(10).enemies"},
	
	--Dotting
	{"Hemorrhage", "talent(1,3) & player.combopoints < 5 & !target.debuff(Hemorrhage)", "target"},
	{"KingsBane", "target.deathin > 8 & target.debuff(Deadly Poison)", "target"},
	{"Rupture", "target.deathin > 12 & player.combopoints >= 5 & target.debuff(Rupture).duration <= 9", "target"},
    {Garrote, "target.deathin > 5 & target.debuff(Garrote).duration <= 4", "target"},
	
	{"Exsanguinate", "talent(6,3) & target.deathin > 12 & target.debuff(Rupture).duration > 20 & debuff(Garrote).duration > 10", "target"},

	{"Envenom", "player.combopoints >= 4 & {target.debuff(Rupture).duration > 9 || target.deathin < 12}", "target"},
	{"Mutilate", "!player.combopoints >= 5"},
	
	{"Eviscerate", "player.level < 36 & player.combopoints == 5"},
    {"Sinister Strike", "player.level < 3 || player.combopoints <= 4 & player.level < 40"},
   
}

local inCombat = {

    {"%pause", "target.enemy & {target.state(disorient) & !player.buff(Stealth) || target.state(fear) & target.pvp & !player.buff(Stealth) || target.debuff(Polymorph) & target.pvp & !player.buff(Stealth) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},
    {"/stopattack", "player.buff(Vanish)"},
    {"Cloak of Shadows", "player.state(dot) & {player.buff(Vanish) || player.buff(Stealth)}"},
	
	{"Every Man for Himself", "target.pvp & player.pvp & UI(medal) & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},	
	{"Gladiator's Medallion", "target.pvp & player.pvp & UI(medal) & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},	
	
    {Keybinds, "target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
    {Interrupts, "target.interruptAt(80) & toggle(interrupts) & infront & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
	{Combat, "!player.buff(Stealth) & target.inmelee & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
	
}

local outCombat = {

   {"%pause", "target.enemy & {player.buff(Vanish) || target.state(disorient) & !player.buff(Stealth)|| target.state(fear) & target.pvp & !player.buff(Stealth) || target.debuff(Polymorph) & target.pvp & !player.buff(Stealth) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},

    {Keybinds, "target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
	{PreCombat, "target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
	
	-- Poisons
	{"Deadly Poison", "UI(pos) & !player.moving & player.buff(Deadly Poison).duration <= 600"},
	{"Leeching Poison", "talent(4,1) & UI(pos) & !player.moving & player.buff(Leeching Poison).duration <= 600"},
	{"Crippling Poison", "!talent(4,1) & UI(pos) & !player.moving & player.buff(Crippling Poison).duration <= 600"},
}

NeP.CR:Add(259, {
	name = '[|cffffff00Kleei|r]|cffffff00 ROGUE - Assassination',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="707", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
