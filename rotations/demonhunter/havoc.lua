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
	{type = 'combo', default = '7', key = 'list3', list = target_list, width = 100},
	{type = 'text', text = "Use Metamorphosis:"},
	{type = 'combo', default = '2', key = 'list1', list = keybind_list_1, width = 100},
	{type = 'text', text = "|c0000FA9A if Cooldowns Toggle is ON|r"},
	{type = 'spacer'},
	{type = 'combo', default = '4', key = 'list2', list = keybind_list_2, width = 100},
    {type = 'text', text = "Use Chaos Nova:|c0000FA9A in melee >= 1 enemies:|r"},
    {type = 'text', text = "Use Imprison:|c0000FA9A ranged > 6 yards:|r"},
	{type = 'spacer'},
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun:|c0000FA9A Auto stun PVP Target [Chaos Nova] or [Imprison].|r", align = 'left', key = 'stun', default = true},	
    {type = 'checkbox',	text = "Gladiator's Medallion:|c0000FA9A Remove stun/fear/disorient/charm.|r", align = 'left', key = 'medal', default = true},	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = 'checkspin', text = 'Use Blur:', key = 'blur', check = true, spin = 70, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Netherwalk:', key = 'nw', check = true, spin = 25, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------	

	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},	
    {type = "checkbox",	text = "Nemesis:|c0000FA9A if talented(5,3)", align = "left", key = "nemesis_key", default = true},
    {type = "checkbox",	text = "Chaos Blades:|c0000FA9A if talented(7,1)", align = "left", key = "chaos_key", default = true},
    {type = "checkbox",	text = "Metamorphosis:|c0000FA9A if you hold keybind", align = "left", key = "meta_key", default = true},
    {type = "checkbox",	text = "Fury of the Illidari", align = "left", key = "foti_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

} 

local exeOnLoad = function()

	
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
 	print('|c0000FA9A --- |r|c0000FA9ADemon Hunter - Havoc|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/2 - 2/2 - 3/X - 4/3 - 5/X - 6/1 - 7/2')
 	print('|c0000FA9A ----------------------------------------------------------------------|r')
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")

	NeP.Interface:AddToggle({key = "charge", name = "Charge", text = "ON/OFF using Felblade and Fel Rush in Rotation", icon = "Interface\\Icons\\ability_demonhunter_felblade"})

end

local Precombat = {

	{"Chaos Strike", "inRange.spell", "target"},
	{"Annihilation", "inRange.spell", "target"},
	{"Felblade", "toggle(charge) & fixRange <= 15 & infront & talent(1,2)", "target"},
	{"Demon's Bite", "inRange.spell & !talent(2,2)", "target"},

}

local Survival = {

	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"}, --Health Stone
	{"Blur", "player.health <= UI(blur_spin) & UI(blur_check) & player.combat"},
	{"Netherwalk", "talent(4,1) & player.health <= UI(nw_spin) & UI(nw_check) & player.combat"},

}

local Interrupts = {

	{"!Consume Magic", "inRange.spell & interruptAt(60) & {player.level < 100 || !indungeon}", "target"},
	{"!Consume Magic", "inRange.spell & interruptAt(1) & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent", "interruptAt(1) & {!player.buff(Metamorphosis) & target.inRange(Chaos Strike).spell || player.buff(Metamorphosis) & target.inRange(Annihilation).spell} & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent",	"interruptAt(60) & {!player.buff(Metamorphosis) & target.inRange(Chaos Strike).spell || player.buff(Metamorphosis) & target.inRange(Annihilation).spell} & {player.level < 100 || !indungeon}", "target"},

}

local Keybinds = {

    {"Metamorphosis", "toggle(cooldowns) & UI(meta_key) & UI(list3)==8 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target.ground"},
	{"Metamorphosis", "toggle(cooldowns) & UI(meta_key) & UI(list3)==7 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "cursor.ground"},

	{"Chaos Nova", "player.area(5).enemies >= 1 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || {target.faction.positive || target.faction.negative & player.pvp} & UI(stun)}"},

	{"Imprison", "inRange.spell & target.fixRange >= 6 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || {target.faction.positive || target.faction.negative & player.pvp} & UI(stun)}", "target"},
	
}

local Cooldowns = {

	{"Nemesis", "talent(5,3) & UI(nemesis_key)", "target"},
	{"Chaos Blades", "talent(7,1) & UI(chaos_key)"},
	{"Fury of the Illidari", "UI(foti_key) & !player.moving & !player.lastcast(Vengeful Retreat) & player.area(5).enemies >= 1"},
	
	{"#trinket1", "UI(trk1) & target.inmelee & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.inmelee & target.deathin >= 10"},
	
}

local Combat = {

    {"/startattack", "!isattacking & {!player.buff(Metamorphosis) & target.inRange(Chaos Strike).spell || player.buff(Metamorphosis) & target.inRange(Annihilation).spell}", "target"},	
	---Mass
	{"Fury of the Illidari", "toggle(AoE) & !player.moving & !player.lastcast(Vengeful Retreat) & player.area(5).enemies >= 5"},
	{"Eye Beam", "toggle(AoE) & !player.moving & !player.lastcast(Vengeful Retreat) & player.area(15).enemies.infront >= 4"},
	
	{"Blade Dance", "!talent(3,2) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies == 4 || player.spell(Eye Beam).cooldown > 0 & player.area(5).enemies >= 5}"},
	{"Death Sweep", "!talent(3,2) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies == 4 || player.spell(Eye Beam).cooldown > 0 & player.area(5).enemies >= 5}"},
	
	{"Blade Dance", "talent(3,2) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies == 1 & !toggle(AoE) || player.area(5).enemies >= 1 & player.area(5).enemies <= 4 & toggle(AoE) || player.spell(Eye Beam).cooldown > 0 & player.area(5).enemies >= 5 & toggle(AoE)}"},
	{"Death Sweep", "talent(3,2) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies == 1 & player.fury <= 39 || player.area(5).enemies >= 2 & player.area(5).enemies <= 4 & toggle(AoE) || player.spell(Eye Beam).cooldown > 0 & player.area(5).enemies >= 5 & toggle(AoE)}"},
	
	---Charge
	{"Felblade", "toggle(charge) & talent(1,2) & target.infront & {player.mana <= 60 & !player.buff(Metamorphosis) & target.inRange(Felblade).spell || player.fury <= 39 & player.buff(Metamorphosis) & target.inmelee || player.furydiff >= 60 & player.buff(Metamorphosis) & !target.inmelee & target.inRange(Felblade).spell}", "target"},
	
	---Out of melee range
	{"Fel Eruption", "talent(5,2) & inRange.spell & player.fury >= 10", "target"},
	{"Fel Barrage", "talent(7,2) & inRange.spell & !target.debuff(Imprison) & player.spell(Fel Barrage).charges >= 5 & {player.buff(Metamorphosis) & player.fury <= 39 & player.spell(Death Sweep).cooldown >= 0 || player.buff(Metamorphosis) & player.fury <= 15 || !player.buff(Metamorphosis)}", "target"},

	--{"Vengeful Retreat", "toggle(charge) & talent(2,1) & !player.buff(Metamorphosis) & player.spell(Fel Rush).charges >= 1 & target.range <= 2 & player.fury <= 39"},

	{"Chaos Strike", "inRange.spell & {toggle(AoE) & {player.area(8).enemies <= 5 & || player.spell(Eye Beam).cooldown > 0} || !toggle(AoE)}", "target"},
	{"Annihilation", "inRange.spell & {toggle(AoE) & {player.area(8).enemies <= 5 & || player.spell(Eye Beam).cooldown > 0} || !toggle(AoE)}", "target"},

	{"Demon's Bite", "!talent(2,2) & inRange.spell", "target"},

	{"Throw Glaive", "inRange.spell & !target.debuff(Imprison) & !target.debuff(Master of the Glaive) & {target.faction.positive || target.faction.negative & player.pvp}", "target"},

}

local inCombat = {

    --{(function() print("|c0000FA9A Falling Time :", NeP.DSL:Get("falling.duration")("player")) end), "falling.duration > 0"},
	{"Glide", "!player.buff(Glide) & falling.duration > 1"},
    {"%pause", "target.enemy & target.immune_all", "player"},
	
    {"&/run TargetNearestEnemy()", "toggle(target_key) & player.area(15).enemies.infront > 0 & player.combat & player.alive & {!target.exists || target.dead}"},
	
    {"!Gladiator's Medallion", "UI(medal) & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

    ---------------
	{Keybinds},
	{Survival, "player.health < 100"},
	{Interrupts, "interruptAt(85) & toggle(interrupts) & {!target.player || player.pvp & target.player}"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive"},
	---------------
	{Combat, "target.alive & target.enemy & {!target.player || player.pvp & target.player}"},

}

local outCombat = {

    --{(function() print("|c0000FA9A Falling Time :", NeP.DSL:Get("falling.duration")("player")) end), "falling.duration > 0"},
	{"Glide", "!player.buff(Glide) & falling.duration >= 0.50"},
	{Keybinds},
    {"%pause", "target.enemy & target.immune_all", "player"},
	{Precombat, "target.alive & target.enemy & {!target.player || player.pvp & target.player}"},
	
}

NeP.CR:Add(577, {
	name = "[|cff9400D3Kleei|r]|cff9400D3 Demon Hunter - Havoc",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="705", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})