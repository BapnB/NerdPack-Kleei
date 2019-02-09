local unpack = unpack

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\outlaw.blp", width = 250, height = 250, offset = 105, y = -50, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Grappling Hook:|c0000FA9A on cursor ground", key = "list3", width = 100, list = {
	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"}, 
	}, default = "8" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Cheap Shot, Between the Eyes:|c0000FA9A", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "1" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Gouge:|c0000FA9A on target|r Blind:|c0000FA9A on mouseover", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "6" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun:|c0000FA9A auto [CS] or [BTE] PVP Target.|r", align = 'left', key = 'stun', default = true},
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
	{type = "checkspin", text = "Use Vanish:|c0000FA9A PVP", key = "van", check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
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
	{type = 'checkbox', text = "Marked for Death:|c0000FA9A when < 2 combo points", key = "mfd_key", default = true},
	{type = 'checkbox', text = "Killing Spree:|c0000FA9A when half energy remains", key = "ks_key", default = true},
	{type = 'checkbox', text = "Curse of the Dreadblades:|c0000FA9A combo points <= 3", key = "cotd_key", default = true},
	{type = 'checkbox', text = "Thistle Tea:|c0000FA9A when energy < 40 and target boss or PVP enemy", key = "tea_key", default = true},
	{type = 'checkbox', text = "Sprint:|c0000FA9A if equipped [Thraxi's Tricksy Treads]", key = "sprint_key", default = true},
	{type = "checkbox", text = "Blood Fury:|c0000FA9A ORC Racial", key = "bloodfury_key", default = true},
	{type = "checkbox", text = "Berserking:|c0000FA9A Troll Racial", key = "berserking_key", default = true},
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
	{type = "ruler"},{type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "text", size = 11, text = "Between the Eyes:|c0000FA9A will be usable when:", align = "center"},
	{type = "spinner", text = "|c0000FA9Ahave combo points more or equal with", key = "combopoints_bte_key", default = 3, width = 100, step = 1, min = 1, max = 6},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Trinkets", align = "center"},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	--[[{type = "combo", default = "none", key = "list4", list = keybind_list_4, width = 100},
	{type = "text", text = "Cannonball Barrage:|c0000FA9A on cursor ground"},]]
}
	
local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r"..ColorClass.." ROGUE - Outlaw|r")	
	print("|c0000FA9A ------------------------------PVE--PVP--------------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/1 - 4/2 - 5/3 - 6/2 - 7/3")
    print("|c0000FA9A")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/1 - 4/x - 5/x - 6/2 - 7/2")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can buy me a beer|r|c00FF0000 https://www.paypal.me/thekleei|r")

	NeP.Interface:AddToggle({key = "RTB_key", icon = "Interface\\Icons\\ability_rogue_rollthebones", name = "Roll the Bones", text = "Include Roll the Bones in rotation."})

end

local BtE = {

    {"%pause", "energy <= 34", "player"},
	{"Between the Eyes", nil, {"mouseover", "target"}},

}

local Gouge = {

    {"%pause", "energy <= 25 & !talent(5,1)", "player"},
	{"Gouge", nil, {"mouseover", "target"}},

}

local Cannonball = {

	{"Cannonball Barrage", "talent(6,1) & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}", "cursor.ground"},

}

local Grappling_Hook = {

    {"Grappling Hook", "talent(2,1) & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "cursor.ground"},

}

local pvp = {

    {"!Dismantle", "inRange.spell & honortalent(6,2) & !IsStealthed & player & canAttack & !state(stun) & disarmclass", "target"},
    {"!Every Man for Himself", "UI(medal) & state(stun) & !IsStealthed", "player"},
    {"!Gladiator's Medallion", "UI(medal) & !IsStealthed & target.player & target.canAttack & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Keybinds = {

	{"Cheap Shot", "inRange.spell & canAttack & infront & player.buff(Stealth) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & target.player & !player.buff(Vanish) & !target.state(stun)}", "target"},
	{BtE, "target.inRange(Between the Eyes).spell & target.canAttack & !IsStealthed & target.infront & !player.lastcast(Cheap Shot) & player.combopoints >= UI(combopoints_bte_key) & !target.state(disarm) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & !target.state(stun) & target.player}"},
	{"Sap", "inRange.spell & canAttack & infront & UI(sap_key) & !player.buff(Vanish) & !state(stun) & !state(disorient) & !state(incapacitate) & !combat & player", {"mouseover", "target"}},
	{Gouge, "target.inRange(Gouge).spell & target.canAttack & !IsStealthed & {target.buff(Touch of Karma) || keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}"},
	{"Blind", "inRange.spell & canAttack & !player.buff(Vanish) & {target.buff(Touch of Karma) || keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "mouseover"},

}

local PreCombat = {

	{"Pick Pocket", "inRange.spell & UI(pp) & !player.moving & creatureType(Humanoid) & !islooting & !player & !isdummy & targettimeout(pocket, 2)", "target"},	

	{"Ambush", "inRange.spell & combopoints.deficit > 0", "target"},
	{"Saber Slash", "inRange.spell & combopoints.deficit > 0 & {player.level < 22 || !IsStealthed}", "target"},
	
	{"Death from Above", "talent(7,3) & inRange.spell & !IsStealthed & combopoints.deficit == 0", "target"},
	{"Run Through", "inRange.spell & combopoints.deficit == 0", "target"},

}

local Survival ={

	{"#neck", "!IsStealthed & health <= 40 & {equipped(Eternal Will of the Martyr) || equipped(Eternal Woven Ivy Necklace)}", "player"},
    {"Vanish", "!IsStealthed & target.player & target.canAttack & health < target.health & health <= UI(van_spin) & UI(van_check)", "player"},
	{"Crimson Vial", "health <= UI(cv_spin) & UI(cv_check) & !target.isdummy", "player"},
	{"Riposte", "!IsStealthed & target.canAttack & incdmg.phys(5) >= health.max*0.02 & health <= UI(ripo_spin) & UI(ripo_check)", "player"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)", "player"}, --Health Stone
    {"Feint", "!buff(Will of Valeera) & equipped(Will of Valeera) & health <= UI(fnt_spin) & UI(fnt_check) & !pvp.area", "player"},

}

local Interrupts = {

	{"!Kick", "interruptAt(60) & inRange.spell & infront & canAttack & {player.level < 100 || !indungeon}", "target"},
	{"!Kick", "interruptAt(1) & inRange.spell & infront & canAttack & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent", "interruptAt(1) & inRange(Kick).spell & canAttack & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent",	"interruptAt(60) & inRange(Kick).spell & canAttack & {player.level < 100 || !indungeon}", "target"},

}

local Cooldowns = {

    {"#7676", "target.inRange(Saber Slash).spell & UI(tea_key) & item(7676).count > 0 & energy < 40 & {target.boss || target.player}", "player"},
	{"Sprint", "target.inRange(Run Through).spell & UI(sprint_key) & equipped(Thraxi's Tricksy Treads) & !buff(Killing Spree) & combopoints.deficit < 2", "player"},
	{"Killing Spree", "inRange.spell & canAttack & talent(6,3) & UI(ks_key) & !player.debuff(Curse of the Dreadblades) & !player.lastcast(Curse of the Dreadblades)", "target"}, --Curse of the Dreadblades fara CD
	{"Marked for Death", "inRange(Saber Slash).spell & canAttack & UI(mfd_key) & talent(7,2) & player.combopoints < 2 & !player.debuff(Curse of the Dreadblades) & !player.lastcast(Curse of the Dreadblades) & !player.buff(Killing Spree)", "target"},
	{"Curse of the Dreadblades", "target.inRange(Saber Slash).spell & target.canAttack & UI(cotd_key) & combopoints <= 3 & !lastcast(Marked for Death) & !buff(Killing Spree) & !lastcast(Killing Spree)", "player"},
	{"Adrenaline Rush", "target.inRange(Saber Slash).spell & target.canAttack & !buff(Killing Spree) & !lastcast(Killing Spree) & UI(adr_key)", "player"},
	{"Blood Fury", "UI(bloodfury_key) & target.inRange(Sinister Strike).spell", "player"},
    {"Berserking", "UI(berserking_key) & target.inRange(Sinister Strike).spell", "player"},

	{"#trinket1", "UI(trk1) & target.inRange(Saber Slash).spell & target.canAttack"},
	{"#trinket2", "UI(trk2) & target.inRange(Saber Slash).spell & target.canAttack"},

}

local Combat = {

	{"*%target", "canAttack & !IsStealthed & {!target.exists || target.dead}", "mouseover"},
	
	{"Ambush", "inRange.spell & combopoints.deficit > 0", "target"},
    {"/startattack", "!isattacking & inRange(Saber Slash).spell & !IsStealthed", "target"},
    {"Tricks of the Trade", "inRange.spell & indungeon & UI(tott) & !IsStealthed", "tank"},

	{"Blade Flurry", "toggle(AoE) & player.area(8).enemies >= 2 & !player.buff(Blade Flurry) || !toggle(AoE) & player.buff(Blade Flurry) || player.area(8).enemies <= 1 & player.buff(Blade Flurry)", "player"},

	{"Death from Above", "talent(7,3) & inRange.spell & !IsStealthed & combopoints.deficit == 0 & {!player.debuff(Curse of the Dreadblades) || target.player}", "target"},
    {"Run Through", "inRange.spell & equipped(Thraxi's Tricksy Treads) & player.buff(Sprint) & combopoints.deficit == 0", "target"},
	
	{"Roll the Bones", "!talent(7,1) & toggle(RTB_key) & {target.deathin > 7 & target.combat.time > 1 || target.isdummy} & !buff_of_the_bones & player.combopoints > 2 & {talent(7,3) & spell(Death from Above).cooldown > 1 || player.debuff(Curse of the Dreadblades) || !talent(7,3)}", "player"},
	{"Slice and Dice", "talent(7,1) & buff(Slice and Dice).duration < 3 & combopoints > 1", "player"},
	{"Run Through", "inRange.spell & combopoints.deficit == 0", "target"},

    {"Ghostly Strike", "inRange.spell & buff(Ghostly Strike).duration < 2 & combopoints.deficit > 0", "target"},
	{"Blunderbuss", "inRange.spell & !IsStealthed & combopoints.deficit > 0 & {!target.state(disorient) || !target.state(incapacitate) || !target.player}", "target"},
	{"Pistol Shot", "inRange.spell & !IsStealthed & combopoints.deficit > 0 & {!target.state(disorient) || !target.state(incapacitate) || !target.player} & player.buff(Opportunity) & talent(1,3)", "target"},
	{"Saber Slash", "inRange.spell & !IsStealthed & {!target.state(disorient) || !target.player}", "target"},
	{"Pistol Shot", "inRange.spell & !IsStealthed & combopoints.deficit > 0 & {!target.state(disorient) || !target.state(incapacitate) || !target.player} & player.buff(Opportunity)", "target"},
	
}

local inCombat = {

    {pvp},
	{Cannonball},
    {Grappling_Hook},
    {Keybinds},
	{Survival, "player.health < 100"},
	{"!/stopattack", "canAttack & infront & debuff(Gouge)", "target"},
	{"!/stopattack", "player.buff(Vanish)", "player"},
    {Interrupts, "toggle(interrupts) & !IsStealthed"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack & target.infront & !IsStealthed"},
	{Combat, "target.canAttack & target.infront"},

}

local outCombat = {

    {pvp},
	{Cannonball},
    {Grappling_Hook},
	{"Blade Flurry", "area(8).enemies <= 1 & buff(Blade Flurry)", "player"},
	{"Stealth", "UI(stealth_key) & !state(dot) & !IsStealthed & target.canAttack", "player"},
	{"Crimson Vial", "health <= UI(cv_spin) & UI(cv_check) & !buff(Food & Drink) & {!equipped(Will of Valeera) || pvp.area}", "player"},
    {"Feint", "health <= 80 & !buff(Food & Drink) & !buff(Will of Valeera) & equipped(Will of Valeera) & !pvp.area", "player"},
    {Keybinds},
	{"!/stopattack", "player.buff(Vanish)", "player"},
	{PreCombat, "target.canAttack & target.infront"},

}

NeP.CR:Add(260, {
	name = "["..ColorClass.."Kleei|r]"..ColorClass.." ROGUE - Outlaw",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.2.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})
