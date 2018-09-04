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

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\outlaw.blp", width = 250, height = 250, offset = 105, y = -50, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "8", key = "list3", list = keybind_list_3, width = 100},
    {type = "text", text = "Grappling Hook:|c0000FA9A on cursor ground"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "none", key = "list4", list = keybind_list_4, width = 100},
	{type = "text", text = "Cannonball Barrage:|c0000FA9A on cursor ground"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "1", key = "list1", list = keybind_list_1, width = 100},
	{type = "text", text = "Between the Eyes, Blind, Cheap Shot:|c0000FA9A"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun:|c0000FA9A auto [Cheap Shot] or [BTE] PVP Target.|r", align = 'left', key = 'stun', default = true},
    {type = 'checkbox',	text = "Sap:|c0000FA9A auto [Sap] PVP Target.", align = 'left', key = 'sap_key', default = true},
	--{type = 'checkbox',	text = "Blind:|c0000FA9A target not stuned and [Vanish] is on CD", align = 'left', key = 'blind_no_van', default = false},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Feint:|c0000FA9A [Will of Valeera]", key = "fnt", check = true, spin = 30, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Vanish:", key = "van", check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Crimson Vial:", key = 'cv', check = true, spin = 75, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Riposte:", key = 'ripo', check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Cooldowns Toggle", align = 'center'},
	{type = 'checkbox', text = "Adrenaline Rush:", key = "adr_key", default = true},
	{type = 'checkbox', text = "Curse of the Dreadblades:|c0000FA9A when combo points <= 3", key = "cotd_key", default = true},
	{type = 'checkbox', text = "Thistle Tea:|c0000FA9A when energy < 40 and target boss or PVP enemy", key = "tea_key", default = true},
	{type = 'checkbox', text = "Sprint:|c0000FA9A if equipped [Thraxi's Tricksy Treads]", key = "sprint_key", default = true},
	{type = 'checkbox', text = "Marked for Death:|c0000FA9A when < 2 combo points", key = "mfd_key", default = true},
	{type = 'checkbox', text = "Killing Spree:", key = "ks_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Other', align = 'center'},
	{type = 'checkbox', text = "Auto Stealth:|c0000FA9A when you have enemy target", key = "stealth_key", default = true},
	{type = 'checkbox', text = "Use Tricks of the Trade:|c0000FA9A in party on tank", key = "tott", default = true},
	{type = 'checkbox', text = "Pick Pocket:|c0000FA9A < 10 yards when you stand and don't move", 	key = 'pp',   default = false},
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

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r|cffffff00ROGUE - Outlaw|r|c00FF0000 for Advanced Unlocker|r")	
	print("|c0000FA9A ------------------------PVP-------------------------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/1 - 4/2 - 5/3 - 6/2 - 7/3")
    print("|c0000FA9A")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/1 - 4/x - 5/x - 6/2 - 7/2")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

end

local BtE = {

    {"%pause", "player.energy <= 34", "target"},
	{"Between the Eyes", nil, "target"},

}

local Cannonball = {

	{"Cannonball Barrage", "talent(6,1) & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}", "cursor.ground"},

}

local Grappling_Hook = {

    {"Grappling Hook", "talent(2,1) & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "cursor.ground"},

}

local pvp = {

    {"!Dismantle", "inRange.spell & honortalent(6,2) & !player.buff(Stealth) & !player.buff(Vanish) & player & canAttack & !state(stun) & disarmclass", "target"},
    {"!Every Man for Himself", "UI(medal) & state(stun) & !buff(Stealth) & !buff(Vanish)", "player"},
    {"!Gladiator's Medallion", "UI(medal) & !buff(Stealth) & !buff(Vanish) & target.player & target.canAttack & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Keybinds = {

	{"Cheap Shot", "inRange.spell & canAttack & infront & player.buff(Stealth) & !player.buff(Vanish) & !target.immune_stun & !target.state(stun) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & target.player}", "target"},
	{BtE, "target.inRange(Between the Eyes).spell & target.canAttack & target.infront & !player.lastcast(Cheap Shot) & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & !target.immune_stun & {!target.state(disarm) || !disarmclass} & !target.state(stun) & !target.state(disorient) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & target.player}"},
	{"Sap", "inRange.spell & canAttack & infront & UI(sap_key) & !player.buff(Vanish) & !target.immune_stun & !target.state(stun) & !target.state(disorient) & !target.state(incapacitate) & !target.combat & target.player", "target"},
	--{"Gouge", "target.inRange(Gouge).spell  & target.canAttack & player.infront.of.target & !player.buff(Stealth) & !player.buff(Vanish) & !target.immune_stun & !target.state(stun) & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Blind", "inRange.spell & canAttack & infront & {!target.inRange(Kidney Shot).spell || spell(Kidney Shot).cooldown > 1} & !target.immune_stun & !target.state(stun) & !target.state(disorient) & !target.state(incapacitate) & !player.buff(Vanish) & {target.buff(Touch of Karma) || keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},

}

local PreCombat = {

	--Leveling
    {"Sinister Strike", "inRange.spell & canAttack & {player.level < 8 || player.level >= 8 & player.level <= 11 || !keybind(alt) & !keybind(shift) & !keybind(control) & player.level >= 8 & player.level <= 11}", "target"},
	--End Leveling

	{"Pick Pocket", "inRange.spell & canAttack & UI(pp) & !player.moving & player.buff(Stealth) & !player.lastcast(Pick Pocket) & creatureType(Humanoid) & !target.player & !isdummy", "target"},	

	{"Ambush", "inRange.spell & canAttack & player.buff(Stealth) & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},
	{"Saber Slash", "inRange.spell & canAttack & {player.level < 22 || !player.buff(Stealth) & !player.buff(Vanish)} & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},
	
	{"Death from Above", "talent(7,3) & inRange.spell & canAttack & !player.buff(Stealth) & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},
	{"Run Through", "inRange.spell & canAttack & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6} & {!target.player || target.player & target.state(stun)}", "target"},

}

local Survival ={

	{"#neck", "{equipped(Eternal Will of the Martyr) || equipped(Eternal Woven Ivy Necklace)} & !player.buff(Stealth) & !player.buff(Vanish) & player.health <= 40", "player"},
    {"Vanish", "!player.buff(Stealth) & target.player & player.health < target.health & player.health <= UI(van_spin) & UI(van_check)", "player"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check) & !isdummy", "player"},
	{"Riposte", "player.health <= UI(ripo_spin) & UI(ripo_check) & !player.buff(Stealth) & !player.buff(Vanish) & player.incdmg.phys(5) >= player.health.max*0.02", "player"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)", "player"}, --Health Stone
    {"Feint", "!player.buff(Will of Valeera) & equipped(Will of Valeera) & player.health <= UI(fnt_spin) & UI(fnt_check) & !pvp.area", "player"},

}

local Interrupts = {

	{"!Kick", "interruptAt(60) & inRange.spell & alive & infront & canAttack & {player.level < 100 || !indungeon}", "target"},
	{"!Kick", "interruptAt(1) & inRange.spell & alive & infront & canAttack & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent", "interruptAt(1) & inRange(Kick).spell & alive & canAttack & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent",	"interruptAt(60) & inRange(Kick).spell & alive & canAttack & {player.level < 100 || !indungeon}", "target"},

}

local Cooldowns = {

    {"#7676", "target.inRange(Saber Slash).spell & UI(tea_key) & item(7676).count > 0 & player.energy < 40 & {target.boss || target.player}", "player"},
	{"Sprint", "target.inRange(Run Through).spell & UI(sprint_key) & target.deathin > 5 & equipped(Thraxi's Tricksy Treads) & !player.buff(Killing Spree) & {!talent(3,1) & player.combopoints >= 4 || talent(3,1) & player.combopoints >= 5}", "player"},
	{"Killing Spree", "inRange.spell & canAttack & talent(6,3) & UI(ks_key) & !player.debuff(Curse of the Dreadblades) & !player.lastcast(Curse of the Dreadblades)", "target"}, --Curse of the Dreadblades fara CD
	{"Marked for Death", "inRange(Saber Slash).spell & canAttack & UI(mfd_key) & talent(7,2) & player.combopoints < 2 & !player.debuff(Curse of the Dreadblades) & !player.lastcast(Curse of the Dreadblades) & !player.buff(Killing Spree)", "target"},
	{"Curse of the Dreadblades", "target.inRange(Saber Slash).spell & target.canAttack & UI(cotd_key) & player.combopoints <= 3 & !player.lastcast(Marked for Death) & !player.buff(Killing Spree) & !player.lastcast(Killing Spree)", "player"},
	{"Adrenaline Rush", "target.inRange(Saber Slash).spell & target.canAttack & !player.buff(Killing Spree) & !player.lastcast(Killing Spree) & UI(adr_key)", "player"},

	{"#trinket1", "UI(trk1) & target.inRange(Saber Slash).spell & target.canAttack"},
	{"#trinket2", "UI(trk2) & target.inRange(Saber Slash).spell & target.canAttack"},

}

local Combat = {

	{"Ambush", "inRange.spell & canAttack & player.buff(Stealth) & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},
    {"/startattack", "!isattacking & inRange(Saber Slash).spell & canAttack & !player.buff(Stealth)", "target"},
    {"Tricks of the Trade", "inRange.spell & indungeon & UI(tott) & !player.buff(Stealth)", "tank"},

	{"Blade Flurry", "toggle(AoE) & player.area(8).enemies >= 2 & !player.buff(Blade Flurry) || !toggle(AoE) & player.buff(Blade Flurry) || player.area(8).enemies <= 1 & player.buff(Blade Flurry)", "player"},

	{"Death from Above", "talent(7,3) & inRange.spell & canAttack & !player.buff(Stealth) & {!player.debuff(Curse of the Dreadblades) || target.player} & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},
    {"Run Through", "inRange.spell & canAttack & equipped(Thraxi's Tricksy Treads) & player.buff(Sprint) & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},
	
	{"Roll the Bones", "!talent(7,1) & {target.deathin > 7 || target.isdummy} & !buff_of_the_bones & player.combopoints > 2 & {talent(7,3) & spell(Death from Above).cooldown > 1 || player.debuff(Curse of the Dreadblades) || !talent(7,3)}", "player"},
	{"Slice and Dice", "talent(7,1) & player.buff(Slice and Dice).duration < 3 & {target.deathin > 10 & player.combopoints > 4 || target.deathin <= 10 & player.combopoints > 1}", "player"},
	{"Run Through", "inRange.spell & canAttack & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},

    {"Ghostly Strike", "inRange.spell & canAttack & talent(1,1) & buff(Ghostly Strike).duration < 2 & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},
	{"Blunderbuss", "inRange.spell & canAttack & !player.buff(Stealth) & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6} & {!target.state(disorient) || !target.state(incapacitate) || !target.player}", "target"},
	{"Pistol Shot", "inRange.spell & canAttack & !player.buff(Stealth) & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6} & {!target.state(disorient) || !target.state(incapacitate) || !target.player} & player.buff(Opportunity) & talent(1,3)", "target"},
	{"Saber Slash", "inRange.spell & canAttack & !player.buff(Stealth) & {!target.state(disorient) || !target.player}", "target"},
	{"Pistol Shot", "inRange.spell & canAttack & !player.buff(Stealth) & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6} & {!target.state(disorient) || !target.state(incapacitate) || !target.player} & player.buff(Opportunity)", "target"},
	
}

local inCombat = {

    {pvp},
	{Cannonball},
    {Grappling_Hook},
    {Keybinds, "target.canAttack & target.alive & !target.immune_all"},
    {Interrupts, "toggle(interrupts) & !target.immune_all & !player.buff(Stealth) & !player.buff(Vanish)"},
	{Survival, "player.health < 100"},
	{"!/stopattack", "player.buff(Vanish) || target.immune_all", "player"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack & target.alive & target.infront & !target.immune_all & !player.buff(Stealth)"},
	{Combat, "target.canAttack & target.alive & target.infront"},

}

local outCombat = {

    {pvp},
	{Cannonball},
    {Grappling_Hook},
	{"Blade Flurry", "player.area(8).enemies <= 1 & player.buff(Blade Flurry)", "player"},
	{"Stealth", "UI(stealth_key) & !player.state(dot) & !IsStealthed & target.canAttack & target.alive", "player"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)", "player"},
    {Keybinds, "target.canAttack & target.alive & !target.immune_all"},
	{"!/stopattack", "player.buff(Vanish) || target.immune_all", "player"},
	{PreCombat, "target.canAttack & target.alive & target.infront"},

}

NeP.CR:Add(260, {
	name = "[|cffffff00Kleei|r]|cffffff00 ROGUE - Outlaw [7.1.5]",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})
