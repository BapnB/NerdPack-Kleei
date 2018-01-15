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

local target_list = {

    {key = '7', text = 'Cursor Ground'},
	{key = '8', text = 'Target Ground'},

}

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\dh.blp', width = 200, height = 200, offset = 90, y = -60, align = 'center'},
	{type = 'spacer'}, {type = 'spacer'}, {type = 'spacer'}, {type = 'ruler'},

}

local GUI = {

	unpack(Logo_GUI),
	
    {type = 'spacer'}, {type = 'spacer'}, {type = 'spacer'},
	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = 'spacer'},
	{type = 'combo', default = '8', key = 'list3', list = target_list, width = 100},
	{type = 'text', text = "Use Metamorphosis:"},
	{type = 'combo', default = '2', key = 'list1', list = keybind_list_1, width = 100},
	{type = 'text', text = "|c0000FA9A if Cooldowns Toggle is ON|r"},
	
	{type = 'spacer'},
	{type = 'combo', default = '4', key = 'list2', list = keybind_list_2, width = 100},
    {type = 'text', text = "Use Chaos Nova:|c0000FA9A in melee >= 1 enemies:|r"},
    {type = 'text', text = "Use Imprison:|c0000FA9A ranged > 10 yards:|r"},
	{type = 'spacer'}, {type = 'ruler'},
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun:|c0000FA9A Auto stun PVP Target [Chaos Nova] or [Imprison].|r", align = 'left', key = 'stun', default = true},	
    {type = 'checkbox',	text = "Gladiator's Medallion:|c0000FA9A Remove stun/fear/disorient/charm.|r", align = 'left', key = 'medal', default = true},	
	{type = 'spacer'}, {type = 'ruler'},	

	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = 'checkspin', text = 'Use Blur:', key = 'blur', check = true, spin = 70, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Netherwalk:', key = 'nw', check = true, spin = 25, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = 'spacer'}, {type = 'ruler'},	

	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},	
    {type = "checkbox",	text = "Nemesis:|c0000FA9A if talented(5,3)", align = "left", key = "nemesis_key", default = true},
    {type = "checkbox",	text = "Chaos Blades:|c0000FA9A if talented(7,1)", align = "left", key = "chaos_key", default = true},
    {type = "checkbox",	text = "Metamorphosis:|c0000FA9A if you hold keybind", align = "left", key = "meta_key", default = true},
    {type = "checkbox",	text = "Fury of the Illidari", align = "left", key = "foti_key", default = true},
	{type = 'spacer'}, {type = 'ruler'},

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = 'spacer'}, {type = 'ruler'},

} 

local exeOnLoad = function()

	
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
 	print('|c0000FA9A --- |r|c0000FA9ADemon Hunter - Havoc|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/2 - 2/2 - 3/X - 4/3 - 5/X - 6/1 - 7/2')
 	print('|c0000FA9A ----------------------------------------------------------------------|r')
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")

		NeP.Interface:AddToggle({
		key = 'charge',
		name = 'Charge',
		text = 'ON/OFF using Felblade and Fel Rush in Rotation',
		icon = 'Interface\\Icons\\ability_demonhunter_felblade',
	})

	
end

local Precombat = {

	{"Chaos Strike", "inRange.spell & player.fury >= 40", "target"},	
	{"Throw Glaive", "inRange.spell & {target.faction.positive || target.faction.negative & player.pvp} & {!target.inRange(Felblade).spell || player.spell(Felblade).cooldown > 0} & !target.debuff(Master of the Glaive)", "target"},	
    --{"Fel Rush", "toggle(charge) & target.infront & target.range >= 6 & target.range <= 15", "target"},
	{"Felblade", "toggle(charge) & talent(1,2) & inRange.spell & target.infront & player.fury <= 100", "target"},

}

local Survival = {

	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"}, --Health Stone
	{"Blur", "player.health <= UI(blur_spin) & UI(blur_check) & player.combat"},
	{"Netherwalk", "talent(4,1) & player.health <= UI(nw_spin) & UI(nw_check) & player.combat"},

}

local Interrupts = {

	{"!Consume Magic", "inRange.spell", "target"},
	{"!Consume Magic", "inmelee", "enemies"},
	
}

local Keybinds = {

    {"Metamorphosis", "toggle(cooldowns) & UI(meta_key) & UI(list3)==8 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target.ground"},
	{"Metamorphosis", "toggle(cooldowns) & UI(meta_key) & UI(list3)==7 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "cursor.ground"},

	{"Chaos Nova", "player.area(5).enemies >= 1 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || target.pvp & player.pvp & UI(stun)}"},

	{"Imprison", "inRange.spell & target.range >= 10 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || target.pvp & player.pvp & UI(stun)}", "target"},
	
}

local Cooldowns = {

	{"Nemesis", "talent(5,3) & UI(nemesis_key)", "target"},
	{"Chaos Blades", "talent(7,1) & UI(chaos_key)"},
	{"Fury of the Illidari", "!player.moving & !player.lastcast(Vengeful Retreat) & target.range <= 1 & UI(foti_key)"},
	
	{"#trinket1", "UI(trk1) & target.inmelee & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.inmelee & target.deathin >= 10"},
	
}

local Combat = {

    {"/startattack", "!isattacking & target.inRange(Chaos Strike).spell & enemy & alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}", "target"},	
	---Mass
	{"Fury of the Illidari", "toggle(AoE) & !player.moving & !player.lastcast(Vengeful Retreat) & player.area(2).enemies >= 5"},
	{"Eye Beam", "toggle(AoE) & !player.moving & !player.lastcast(Vengeful Retreat) & player.area(15).enemies.infront >= 5"},
	
	{"Blade Dance", "talent(3,1) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(6.5).enemies == 4 || player.spell(Eye Beam).cooldown > 0 & player.area(6.5).enemies >= 5}"},
	{"Death Sweep", "talent(3,1) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(6.5).enemies == 4 || player.spell(Eye Beam).cooldown > 0 & player.area(6.5).enemies >= 5}"},
	
	{"Blade Dance", "talent(3,2) & !player.lastcast(Vengeful Retreat) & {player.area(6.5).enemies == 1 & !toggle(AoE) || player.area(6.5).enemies >= 1 & player.area(6.5).enemies <= 4 & toggle(AoE) || player.spell(Eye Beam).cooldown > 0 & player.area(6.5).enemies >= 5 & toggle(AoE)}"},
	{"Death Sweep", "talent(3,2) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(6.5).enemies == 1 & player.fury <= 39 || player.area(6.5).enemies >= 2 & player.area(6.5).enemies <= 4 & toggle(AoE) || player.spell(Eye Beam).cooldown > 0 & player.area(6.5).enemies >= 5 & toggle(AoE)}"},
	
	---Charge
	{"Felblade", "toggle(charge) & talent(1,2) & target.infront & {player.mana <= 60 & !player.buff(Metamorphosis) & target.inRange(Felblade).spell || player.fury <= 39 & player.buff(Metamorphosis) & target.inmelee || player.furydiff >= 60 & player.buff(Metamorphosis) & !target.inmelee & target.inRange(Felblade).spell}", "target"},
	
	---Out of melee range
	{"Fel Eruption", "talent(5,2) & inRange.spell & player.fury >= 10", "target"},
	{"Fel Barrage", "talent(7,2) & !target.debuff(Imprison) & inRange.spell & player.spell(Fel Barrage).charges >= 5 & {player.buff(Metamorphosis) & player.fury <= 39 & player.spell(Death Sweep).cooldown >= 0 || player.buff(Metamorphosis) & player.fury <= 15 || !player.buff(Metamorphosis)}", "target"},
	{"Throw Glaive", "player.spell(Fel Rush).charges < 1 & player.spell(Felblade).cooldown > 0 & !target.debuff(Imprison) & !target.debuff(Master of the Glaive) & target.range >= 8 & inRange.spell", "target"},
	
	--{"Fel Rush", "toggle(charge) & target.infront & {target.range >= 6 || player.falling & target.inmelee & !player.lastcast(Fel Barrage)}", "target"}, -- & !player.casting(Fel Barrage) --  & player.fury <= 38}
	--{"/run JumpOrAscendStart()", "toggle(charge) & !isgcd & target.inmelee & target.infront & player.spell(Fel Rush).charges >= 1 & {player.spell(Felblade).cooldown >= 0 & talent(1,2) || !talent(1,2)} & !player.falling & {talent(3,2) & player.spell(Blade Dance).cooldown > 0 & player.fury <= 38 || talent(3,2) & player.fury <= 14 || !talent(3,2) & player.fury <= 38}"}, -- & !player.lastcast(Blade Dance) & !player.casting(Fel Barrage)

	{"Vengeful Retreat", "toggle(charge) & talent(2,1) & !player.buff(Metamorphosis) & player.spell(Fel Rush).charges >= 1 & target.range <= 2 & player.energy <= 39"},

	{"Chaos Strike", "inRange.spell & player.fury >= 40 & {toggle(AoE) & {player.area(8).enemies <= 5 & || player.spell(Eye Beam).cooldown > 0} || !toggle(AoE)}", "target"},
	{"Annihilation", "inRange.spell & player.fury >= 40 & {toggle(AoE) & {player.area(8).enemies <= 5 & || player.spell(Eye Beam).cooldown > 0} || !toggle(AoE)}", "target"},
	{"Demon's Bite", "!talent(2,2) & inRange.spell & player.fury < 40", "target"},

	{"Throw Glaive", "target.inRange(Chaos Strike).spell", "target"}, --!player.falling & 

}

local inCombat = {

    {"%pause", "target.enemy & target.immune_all", "player"},
	
    {"Gladiator's Medallion", "UI(medal) & target.pvp & player.pvp & {state(stun) || state(fear) || state(disorient) || state(charm)}", "player"},

    ---------------
	{Keybinds},
	{Survival, "player.health < 100"},
	{Interrupts, "interruptAt(85) & toggle(interrupts) & {!target.player || player.pvp & target.player}"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & target.range <= 2"},
	---------------
	{Combat, "target.alive & target.enemy & {!target.player || player.pvp & target.player}"},

}

local outCombat = {

    {"%pause", "target.enemy & target.immune_all", "player"},
	{Keybinds},
	{Precombat, "target.alive & target.enemy & {!target.player || player.pvp & target.player}"},
	
}

NeP.CR:Add(577, {
	name = '[|cff9400D3Kleei|r]|cff9400D3 Demon Hunter - Havoc',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="705", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})