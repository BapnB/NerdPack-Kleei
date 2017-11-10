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

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\dh.blp', width = 160, height = 160, offset = 90, y = -40, align = 'center'},
	{type = 'spacer'}, {type = 'spacer'}, {type = 'spacer'}, {type = 'ruler'},

}

local GUI = {

	unpack(Logo_GUI),

	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A In fight just hold the Key|r", align = 'center'},
	{type = 'spacer'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:"},
	{type = 'text', text = "|c0000FA9A Metamorphosis on target ground if Cooldowns Toggle is ON:|r"},
	{type = 'combo', default = '2',  key = 'list1',  list = keybind_list_1,  width = 120},
	{type = 'spacer'},	{type = 'spacer'},	
    {type = 'text', text = "|c0000FA9A [Chaos Nova] if in melee is more than 1 enemies or cast [Imprison] if target are in > 10 yards:|r"},
	{type = 'combo',	default = '1',  key = 'list2', 	list = keybind_list_2, 	width = 120},	
	{type = 'spacer'},	{type = 'spacer'},		
	{type = 'ruler'}, {type = 'spacer'},	
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun: |c0000FA9A Auto stun PVP Target [Chaos Nova] if in melee is more than 1 enemies or cast [Imprison] if target are in > 10 yards.|r", align = 'left', key = 'stun', default = true},	
    {type = 'checkbox',	text = "Freedom: |c0000FA9A Remove stun/fear/disorient/charm by [Gladiator's Medallion in PVP].|r", align = 'left', key = 'medal', default = true},	
	{type = 'spacer'},	{type = 'spacer'},	
	{type = 'ruler'}, {type = 'spacer'},	

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},

	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false, desc = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},

	{type = 'ruler'}, {type = 'spacer'},
	
	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = 'spacer'},
	{type = 'checkspin', text = 'Use Blur:', key = 'blur', check = true, spin = 70, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Netherwalk:', key = 'nw', check = true, spin = 25, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = 'spacer'},	{type = 'spacer'},		
	{type = 'ruler'}, {type = 'spacer'},	

    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'spacer'},
    {type = 'text', text = "|c0000FA9A [Nemesis] if talented(5,3) [Chaos Blades] if talented(7,1) & [Metamorphosis if you hold keybind] on target ground, all if target will die in > 10 sec|r"},

} 

local exeOnLoad = function()

	
	print('|cff9400D3 ------------------------PVE-------------------------------------------|r')
 	print('|cff9400D3 --- |r|cff9400D3Demon Hunter - Havoc|r')
 	print('|cff9400D3 --- |rRecommended Talents: 1/2 - 2/2 - 3/X - 4/3 - 5/X - 6/1 - 7/2')
 	print('|cff9400D3 ----------------------------------------------------------------------|r')
	
		NeP.Interface:AddToggle({
		key = 'charge',
		name = 'Charge',
		text = 'ON/OFF using Felblade in Rotation',
		icon = 'Interface\\Icons\\ability_demonhunter_felblade',
	})

	
end

local FelRush = {

    --{"%SendKey(SPACE)"},
	--{"Fel Rush"},

}

local Survival = {

	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"}, --Health Stone
	{"Blur", "player.health <= UI(blur_spin) & UI(blur_check) & player.combat"},
	{"Netherwalk", "talent(4,1) & player.health <= UI(nw_spin) & UI(nw_check) & player.combat"},
	
	{"#trinket1", "UI(trk1) & target.inmelee & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.inmelee & target.deathin >= 10"},
	
}

local Interrupts = {

	{"Consume Magic"},
	
	--{"Chaos Nova", "player.spell(Consume Magic).cooldown > gcd & target.range <= 5"}
	
}

local Keybinds = {

    {"Metamorphosis", "toggle(cooldowns) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target.ground"},

	{"Chaos Nova", "player.area(5).enemies >= 1 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || target.pvp & player.pvp & UI(stun)}"},

	{"Imprison", "target.range <= 20 & target.range >= 10 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || target.pvp & player.pvp & UI(stun)}", "target"},
	
}

local Cooldowns = {

	{"Nemesis", "talent(5,3) & target.deathin >= 15", "target"},
	{"Chaos Blades", "talent(7,1) & target.deathin >= 10"},
	
}

local Combat = {

	{"/startattack", "!isattacking & target.range < 10", "target"},
	
	---Mass
	{"Fury of the Illidari", "!player.moving & target.deathin > 5 & !player.lastcast(Vengeful Retreat) & target.range <= 1"},
	{"Eye Beam", "toggle(AoE) & !player.moving & !player.lastcast(Vengeful Retreat) & target.range <= 15 & target.infront & player.area(8).enemies >= 5"},
	
	{"Blade Dance", "talent(3,1) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies == 4 || player.spell(Eye Beam).cooldown > gcd & player.area(5).enemies >= 5}"},
	{"Death Sweep", "talent(3,1) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies == 4 || player.spell(Eye Beam).cooldown > gcd & player.area(5).enemies >= 5}"},
	
	{"Blade Dance", "talent(3,2) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies >= 1 & player.area(5).enemies <= 4 || player.spell(Eye Beam).cooldown > gcd & player.area(5).enemies >= 5}"},
	{"Death Sweep", "talent(3,2) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies == 1 & player.fury <= 39 || player.area(5).enemies >= 2 & player.area(5).enemies <= 4 || player.spell(Eye Beam).cooldown > gcd & player.area(5).enemies >= 5}"},
	
	---Charge
	{"Felblade", "toggle(charge) & talent(1,2) & target.range <= 15 & {player.fury <= 39 || target.range >= 8 & player.fury <= 100}"},
	--{FelRush, "player.spell(Fel Rush).charges >= 1 & target.range <= 5 & player.fury <= 39"},
	--{"Fel Rush", "toggle(charge) & player.spell(Felblade).cooldown < gcd & target.range <= 5 & player.energy <= 39"},
	
	---Out of melee range
	{"Fel Eruption", "talent(5,2) & target.range <= 20 & player.fury >= 10"},
	{"Fel Barrage", "talent(7,2) & !target.debuff(Imprison) & target.range <= 30 & player.spell(Fel Barrage).charges >= 5 & {player.buff(Metamorphosis) & player.fury <= 39 & player.spell(Death Sweep).cooldown >= gcd || player.buff(Metamorphosis) & player.fury <= 15 || !player.buff(Metamorphosis)}"},
	{"Throw Glaive", "player.spell(Fel Rush).charges < 1 & player.spell(Felblade).cooldown > gcd & !target.debuff(Imprison) & target.range >= 8 & target.range <= 30"},
	{"Fel Rush", "toggle(charge) & target.infront & target.range > 5"},
	{"Throw Glaive", "player.fury <= 38", "target"},
	
	---Acrobat (old thing, for now is dissabled) 
	{"Vengeful Retreat", "toggle(charge) & talent(2,1) & !player.buff(Metamorphosis) & player.spell(Fel Rush).charges >= 1 & target.range <= 3 & player.energy <= 39"},

	{"Chaos Strike", "target.inmelee & player.fury >= 40 & {player.area(8).enemies <= 5 || player.spell(Eye Beam).cooldown > gcd}", "target"},
	{"Annihilation", "target.inmelee & player.fury >= 40 & {player.area(8).enemies <= 5 || player.spell(Eye Beam).cooldown > gcd}", "target"},
	{"Demon's Bite", "!talent(2,2) & target.inmelee & player.fury <= 39", "target"},
	
}

local inCombat = {

    {"%pause", "target.enemy & {target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence)}", "player"},
	
	{"Gladiator's Medallion", "target.pvp & player.pvp & {player.state(stun) || player.state(root) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

    ---------------
	{Keybinds},
	{Survival, "player.health < 100"},
	{Interrupts, "target.interruptAt(40) & toggle(interrupts) & {!target.pvp || target.pvp & player.pvp}"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & target.range <= 2"},
	---------------
	{Combat, "target.alive & target.enemy & {!target.pvp || target.pvp & player.pvp}"},

}

local outCombat = {
	{Keybinds},
	{FelRush},
}

NeP.CR:Add(577, {
	name = '[|cff9400D3Kleei|r]|cff9400D3 Demon Hunter - Havoc',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="694", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})