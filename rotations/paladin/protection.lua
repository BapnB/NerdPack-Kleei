local unpack = _G.unpack

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

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\protection.blp", width = 300, height = 300, offset = 90, y = -70, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),
	{type = "spacer"},{type = "spacer"},{type = "spacer"},{type = "spacer"},
	
	{type = "header", size = 16, text = 'Keybinds', align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "1", key = "list1", list = keybind_list_1, width = 100},
	{type = "text", text = "Use Hammer of Justice:|c0000FA9A"},
	{type = "combo", default = "5", key = "list2", list = keybind_list_2, width = 100},
	{type = "text", text = "Use Divine Shield:|c0000FA9A"},
	{type = "combo", default = "9", key = "list3", list = keybind_list_3, width = 100},
    {type = "text", text = "Use Flash of Light:|c0000FA9A on self"},
	{type = "spacer"},
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = "header", size = 16, text = "PVP", align = "center"},
    {type = "checkbox",	text = "Stun:|c0000FA9A auto [Hammer of Justice] PVP Target.|r", align = "left", key = "stun", default = true},
	--{type = 'checkbox',	text = "Blind:|c0000FA9A target not stuned and [Vanish] is on CD", align = 'left', key = 'blind_no_van', default = false},
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
	{type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Lay on Hands:", key = "loh_key", check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Divine Shield:", key = "ds_key", check = true, spin = 14, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Light of the Protector:", key = "lotp_key", check = true, spin = 75, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Hand of the Protector:", key = "hotp_key", check = true, spin = 75, width = 150, step = 5, max = 95, min = 1},

	--{type = 'checkspin', text = 'Use Vanish:', key = 'van', check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
	--{type = 'checkspin', text = 'Use Crimson Vial:', key = 'cv', check = true, spin = 75, width = 150, step = 5, max = 95, min = 1},
	--{type = 'checkspin', text = 'Use Riposte:', key = 'ripo', check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	--{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Cooldowns Toggle:", align = "center"},
    {type = 'checkbox', text = "Avenging Wrath", key = "aw_key", default = true},
	--{type = 'checkbox', text = "Adrenaline Rush:", key = "adr_key", default = true},
	--{type = 'checkbox', text = "Curse of the Dreadblades:|c0000FA9A when combo points <= 3", key = "cotd_key", default = true},
	--{type = 'checkbox', text = "Thistle Tea:|c0000FA9A when energy < 40 and target boss or PVP enemy", key = "tea_key", default = true},
	--{type = 'checkbox', text = "Sprint:|c0000FA9A if equipped [Thraxi's Tricksy Treads]", key = "sprint_key", default = true},
	--{type = 'checkbox', text = "Marked for Death:|c0000FA9A when < 2 combo points", key = "mfd_key", default = true},
	--{type = 'checkbox', text = "Killing Spree:", key = "ks_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Other', align = 'center'},
    {type = "checkbox",	text = "Freedom:|c0000FA9A auto [Blessing of Freedom] when snare or root.", align = "left", key = "bof_key", default = true},
	--{type = 'checkbox', text = "Use Tricks of the Trade:|c0000FA9A in party on tank", key = "tott", default = true},
	--{type = 'checkbox', text = "Pick Pocket:|c0000FA9A < 10 yards when you stand and don't move", 	key = 'pp',   default = false},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Trinkets", align = "center"},
	{type = "text", text = "|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r", align = "center"},
	{type = "checkbox", text = "Trinket #1", 	key = "trk1",	default = false},
	{type = "checkbox", text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = "text", text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

}

local exeOnLoad = function()

    print("|c0000FA9A ----------------------------------------------------------------------|r")
    print("|c0000FA9A --- |r|cffF58CBAPALADIN - Protection |r")
    print("|c0000FA9A --- |rRecommended Talents: 1/2 - 2/2 - 3/3 - 4/1 - 5/2 - 6/2 - 7/3")
    print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")

    NeP.Interface:AddToggle({key  = "AutoTaunt", name = "Auto Taunt", text = "Automatically taunt nearby enemies.", icon = "Interface\\Icons\\spell_nature_shamanrage.png"})

end

local pvp = {

    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & {target.faction.positive || target.faction.negative & player.pvp} & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
    {"!Blessing of Freedom", "UI(bof_key) & {player.state(snare) || player.state(root)}"},
 
}

local PreCombat ={

    {"Shield of the Righteous", "inRange.spell & !player.buff(Shield of the Righteous)", "target"},

}

local Keybinds = {

    {"!Divine Shield", "player.combat & target.enemy & target.alive & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}"},
    {"!Flash of Light", "health <= 95 & !moving & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "player"},
	{"Hammer of Justice", "inRange.spell & enemy & alive & !immune_all & !immune_stun & !state(stun) & !state(disorient) & !state(incapacitate) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & {target.faction.positive || target.faction.negative & player.pvp}}", "target"},

}

local Interrupts = {

	--{"!Kick", "interruptAt(70) & target.inRange(Kick).spell & {player.level < 100 || !indungeon}", "target"},
	--{"!Kick", "interruptAt(1) & inRange(Kick).spell & dungeon.interrupts & player.level > 99", "enemies"},
    {"Rebuke"},
    --{"Hammer of Justice"},
	{"Arcane Torrent", "interruptAt(1) & target.inRange(Shield of the Righteous).spell & dungeon.interrupts & player.level > 99 & !immune_all", "enemies"},
	{"Arcane Torrent",	"interruptAt(65 ) & target.inRange(Shield of the Righteous).spell & enemy & alive & !immune_all & {!target.player || target.faction.positive || target.faction.negative & player.pvp} & {player.level < 100 || !indungeon}", "target"},

}

local Survival ={

    {"&Lay on Hands", "player.health <= UI(loh_key_spin) & UI(loh_key_check) & !player.lastcast(Divine Shield) & !player.buff(Divine Shield)"},
    {"&Divine Shield", "player.health <= UI(ds_key_spin) & UI(ds_key_check) & !player.lastcast(Lay on Hands)"},
    {"!Light of the Protector", "player.health <= UI(lotp_key_spin) & UI(lotp_key_check)"},
    {"!Hand of the Protector", "player.health <= UI(hotp_key_spin) & UI(hotp_key_check)"},
    --{"!Hand of the Protector", "lowest.health <= 40 & player.health >= 90", "lowest"},

}

local EyeofTyr = {

    {"Divine Steed", "talent(5,2)"},
    {"Eye of Tyr"},
    {"Aegis of Light", "talent(6,1)"},
    {"Guardian of Ancient Kings"},
    {"Ardent Defender"},

}

local Cooldowns = {

    {"Seraphim", "talent(7,2) & spell(Shield of the Righteous).charges > 2", "player"},
    {"Shield of the Righteous", "inmelee & !talent(7,2) & spell(Shield of the Righteous).charges > 1 & !{player.buff(Eye of Tyr) & player.buff(Aegis of Light) & player.buff(Ardent Defender) & player.buff(Guardian of Ancient Kings) & player.buff(Divine Shield)}", "target"},
    {"Bastion of Light", "talent(2,2) & spell(Shield of the Righteous).charges < 1", "player"},
    {EyeofTyr, "player.health < 40 & !{player.buff(Eye of Tyr) || player.buff(Aegis of Light) || player.buff(Ardent Defender) || player.buff(Guardian of Ancient Kings) || player.buff(Divine Shield)}"},
    {"Avenging Wrath", "UI(aw_key) & {!talent(7,2) || talent(7,2) & player.buff(Seraphim)}", "player"},

	{"Light's Judgment", "advanced & UI(LJ_check) & range < 61 & area(15).enemies >= UI(LJ_spin)", "enemies.ground"},

	{"#trinket1", "UI(trk1) & target.inRange(Shield of the Righteous).spell"},
	{"#trinket2", "UI(trk2) & target.inRange(Shield of the Righteous).spell"},

}

local Combat = {

    {"Consecration", "!player.moving & target.inRange(Shield of the Righteous).spell"}, --player.lastmoved >= 0.75
    {"Avenger's Shield", "toggle(aoe) & target.inRange.spell"},
    {"Judgment", "target.inRange.spell"},
    {"Blessed Hammer", "target.inRange(Shield of the Righteous).spell"},
    {"Hammer of the Righteous", "!talent(1,2) & target.inRange(Shield of the Righteous).spell"},
 
}

local inCombat = {

    {pvp},
    {Keybinds},
	{Interrupts, "toggle(interrupts)"},
    {Survival},
    {"Hand of Reckoning", "toggle(AutoTaunt) & enemy & combat & alive & !aggro", "target"},
    {"/startattack", "!isattacking & target.inRange(Shield of the Righteous).spell"},
    {"Shield of the Righteous", "inRange.spell & !player.buff(Shield of the Righteous) & {player.health < 60 || spell(Shield of the Righteous).charges == 3}", "target"},
	{Cooldowns, "toggle(cooldowns) & target.inRange(Shield of the Righteous).spell"},
	{Combat, "target.enemy & target.alive & !target.immune_all & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
 
}

local outCombat = {

    {pvp},
    {Keybinds},
	{PreCombat, "target.enemy & target.alive & !target.immune_all & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
    {"!Flash of Light", "player.health <= 80 & !player.moving"},

}

NeP.CR:Add(66, {
	name = "[|cffF58CBAKleei|r]|cffF58CBA Paladin - Protection",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})