local unpack = unpack

local keybind_list_1 = {

	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	
}

local keybind_list_2 = {

	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	

}

local keybind_list_3 = {

	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	

}

local keybind_list_4 = {

	{key = "10", text = "Shift Keybind"},
	{key = "11", text = "Control Keybind"},
	{key = "12", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	

}

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\frost_dk.blp", width = 250, height = 250, offset = 130, y = -67, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	--[[{type = "combo", default = "8", key = "list3", list = keybind_list_3, width = 100},
    {type = "text", text = "Grappling Hook:|c0000FA9A on cursor ground"},
	{type = "text", text = "", align = "center"}, --------------------------------------]]
	{type = "combo", default = "4", key = "list2", list = keybind_list_2, width = 100},
	{type = "text", text = "Use Death Grip:|c0000FA9A on target"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "1", key = "list1", list = keybind_list_1, width = 100},
	{type = "text", text = "Use Chains of Ice:|c0000FA9A on target"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = "header", size = 16, text = "PVP", align = "center"},
    --[[{type = "checkbox",	text = "Stun:|c0000FA9A auto [CS] or [BTE] PVP Target.|r", align = "left", key = "stun", default = true},
    {type = "checkbox",	text = "Sap:|c0000FA9A auto [Sap] PVP Target.", align = "left", key = "sap_key", default = true},
	{type = "checkbox",	text = "Blind:|c0000FA9A target not stuned and [Vanish] is on CD", align = "left", key = "blind_no_van", default = false},]]
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
	{type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	--[[{type = "checkspin", text = "Use Feint:|c0000FA9A [Will of Valeera]", key = "fnt", check = true, spin = 30, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Vanish:", key = "van", check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},]]
	{type = "checkspin", text = "Use Death Strike:", key = "death_strike_key", check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Icebound Fortitude:", key = "ice_fort_key", check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},
	{type = "checkbox", text = "Obliteration:|c0000FA9A", key = "obliteration_key", default = true},
	{type = "checkbox", text = "Hungering Rune Weapon:|c0000FA9A when runes <= 3", key = "hungering_key_key", default = true},
	{type = "checkbox", text = "Horn of Winter:|c0000FA9A when runes <= 1", key = "horn_key", default = true},
	{type = "checkbox", text = "Empower Rune Weapon:|c0000FA9A when no runes available", key = "empower_key", default = true},
	{type = "checkbox", text = "Pillar of Frost:|c0000FA9A ", key = "pillar_key", default = true},
	{type = "checkbox", text = "Sindragosa's Fury:|c0000FA9A", key = "sindra_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Other', align = 'center'},
	--[[{type = 'checkbox', text = "Auto Stealth:|c0000FA9A when you have enemy target", key = "stealth_key", default = true},
	{type = 'checkbox', text = "Use Tricks of the Trade:|c0000FA9A in party on tank", key = "tott", default = true},
	{type = 'checkbox', text = "Pick Pocket:|c0000FA9A < 10 yards when you stand and don't move", 	key = 'pp',   default = false},]]
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

 	print("|c0000FA9A ------------------------------------------------------------------------------|r")
	print("|c0000FA9A --- |r|cffff6060DEATH KNIGHT Frost|r|c00FF0000 for Advanced Unlocker|r")
	print('|c0000FA9A ------------------------PVE-------------------------------------------------|r')
	print("|c0000FA9A --- |rRecommended Talents:  1/2 - 2/1 - 3/3 - 4/3 - 5/2 - 6/2 - 7/3")
	print("|c0000FA9A ------------------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

end

local pvp = {

    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},
    {"!Gladiator's Medallion", "UI(medal) & canAttack & target.player & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Keybinds = {
	
    {"Death Grip", "inRange.spell & canAttack & infront & fixRange > 8 & !immune_stun & !immune_all & !state(stun) & !state(disorient) & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
    {"Chains of Ice", "inRange.spell & !debuff.any & canAttack & infront & !immune_stun & !immune_all & !state(stun) & !state(disorient) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
	
}

local PreCombat = {

	{"Frost Strike", "inRange.spell", "target"},
    {"Obliterate", "inRange.spell", "target"},
	{"Remorseless Winter", "toggle(aoe) & player.area(8).enemies >= 3 || target.inmelee & talent(6,3)", "player"},

}

local Survival = {

    {"Death Strike", "inRange.spell & infront & player.health <= UI(death_strike_key_spin) & UI(death_strike_key_check)", "enemies"},
    {"Death Strike", "inRange.spell & infront & player.health <= 85 & player.buff(Dark Succor)", "enemies"},
	{"Icebound Fortitude", "player.health <= UI(ice_fort_key) & UI(ice_fort_key) & player.incdmg.phys(5) >= player.health.max*0.02", "player"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)", "player"}, --Health Stone
	
}

local Interrupts = {

	{"!Mind Freeze", "interruptAt(60) & inRange.spell & infront & {player.level < 100 || !indungeon}", "target"},
	{"!Mind Freeze", "interruptAt(1) & inRange.spell & infront & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent", "interruptAt(1) & inRange(Frost Strike).spell & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent",	"interruptAt(60) & inRange(Frost Strike).spell & {player.level < 100 || !indungeon}", "target"},

}

local Cooldowns = {
 	
	{"Sindragosa's Fury", "inRange(Frost Strike).spell & keybind(control) & infront & UI(sindra_key)", "target"},
	{"Pillar of Frost", "target.inRange(Frost Strike).spell & target.infront & UI(pillar_key)", "player"},
	{"Obliteration", "target.inRange(Frost Strike).spell & target.infront & UI(obliteration_key)", "player"},
	{"Hungering Rune Weapon", "target.inRange(Frost Strike).spell & talent(3,2) & player.runes <= 3 & UI(hungering_key)", "player"},
	{"Empower Rune Weapon", "target.inRange(Frost Strike).spell & player.runes <= 1 & UI(empower_key)", "player"},
	{"Horn of Winter", "target.inRange(Frost Strike).spell & talent(2,3) & player.runes <= 1 & UI(horn_key)", "player"},
	
	{"#trinket1", "UI(trk1) & target.inRange(Frost Strike).spell"},
	{"#trinket2", "UI(trk2) & target.inRange(Frost Strike).spell"},

}

local Combat = {

    {"/startattack", "!isattacking & inRange(Frost Strike).spell & canAttack", "target"},
    --AoE--
	{"Remorseless Winter", "toggle(aoe) & player.area(8).enemies >= 3 || target.range <= 5 & talent(6,3)", "player"},
	{"Glacial Advance", "toggle(aoe) & talent(7,3) & area(8).enemies.infront >= 3", "player"},

	
	--Single--
	{"Remorseless Winter", "target.inRange(Frost Strike).spell & target.deathin > 8", "player"}, --, "artifact(Frozen Soul).enabled"
 	{"Frost Strike", "inRange.spell & {{talent(1,2) & {player.buff(Icy Talons).count < 3 || player.buff(Icy Talons).duration <= 2.2}} || player.buff(Obliteration) & !player.buff(Killing Machine)}", "target"},
 	{"Howling Blast", "inRange.spell & {!target.debuff(Frost Fever) || player.buff(Rime)}", "target"},
	{"Obliterate", "inRange.spell & player.buff(Killing Machine)", "target"},
    --{"Frostscythe", "talent(6,1) & !talent(7,2) & {player.buff(Killing Machine) || player.area(8).enemies >= 4}"},
    {"Obliterate", "inRange.spell", "target"},
	{"Frost Strike", "inRange.spell", "target"},
 	--{"Frostscythe", "talent(6,1) & talent(2,2)"},

}

local inCombat = {

	{"%ressdead(Raise Ally)", "!player.lastcast(Raise Ally)"},

    {pvp},
	{Keybinds},
    {Interrupts, "toggle(interrupts) & target.canAttack & target.alive & !target.immune_all"},
	{Survival, "player.health < 100"},
	{"!/stopattack", "target.immune_all", "player"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack & target.alive & target.infront"},
	{Combat, "target.canAttack & target.alive & target.infront"},

}

local outCombat = {

    {pvp},
	{Keybinds},
	{"Path of Frost", "swimming & !buff(Path of Frost)", "player"},
	{"!/stopattack", "target.immune_all", "player"},
	{PreCombat, "target.canAttack & target.alive & target.infront"},

}

NeP.CR:Add(251, {
	name = "[|cffff6060Kleei|r]|cffff6060 Death Knight - Frost",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="765", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})
