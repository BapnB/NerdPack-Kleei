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

local keybind_list_3 = {

	{key = '7', text = 'Shift Keybind'},
	{key = '8', text = 'Control Keybind'},
	{key = '9', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},	

}

local keybind_list_4 = {

	{key = '10', text = 'Shift Keybind'},
	{key = '11', text = 'Control Keybind'},
	{key = '12', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},	

}

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\outlaw.blp', width = 250, height = 250, offset = 105, y = -50, align = 'center'},

}

local GUI = {

	unpack(Logo_GUI),

	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = 'combo', default = '9', key = 'list3', list = keybind_list_3, width = 100},
    {type = 'text', text = "Use Grappling Hook:|c0000FA9A on cursor ground"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = 'combo', default = 'none', key = 'list4', list = keybind_list_4, width = 100},
	{type = 'text', text = "Cannonball Barrage:|c0000FA9A on cursor ground"},
	--{type = 'text', text = "Run /TargetEnemyPlayer:|c0000FA9A target Stealthed:|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = 'combo', default = '2', key = 'list1', list = keybind_list_1, width = 100},
	--{type = 'text', text = "Use Sap:|c0000FA9A or pause if already Sapped:|r"},
	{type = 'text', text = "Use Blind:|c0000FA9A"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = 'combo', default = '4', key = 'list2', list = keybind_list_2, width = 100},
	{type = 'text', text = "Use Cheap Shot:|c0000FA9A if Stealthed"},
	--{type = 'text', text = "Use Gouge:|c0000FA9A if target are facing to you"},
	{type = 'text', text = "Use Between the Eyes:"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = 'spacer'}, {type = 'ruler'},
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun:|c0000FA9A auto [CS] or [BTE] PVP Target.|r", align = 'left', key = 'stun', default = true},
    {type = 'checkbox',	text = "Sap:|c0000FA9A auto [Sap] PVP Target.", align = 'left', key = 'sap_key', default = true},
	--{type = 'checkbox',	text = "Blind:|c0000FA9A target not stuned and [Vanish] is on CD", align = 'left', key = 'blind_no_van', default = false},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = 'spacer'}, {type = 'ruler'},
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Feint:|c0000FA9A [Will of Valeera]", key = "fnt", check = true, spin = 30, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Vanish:", key = "van", check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Crimson Vial:", key = 'cv', check = true, spin = 75, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Riposte:", key = 'ripo', check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "spacer"}, {type = "ruler"},
	
	{type = "header", size = 16, text = "Cooldowns Toggle:", align = 'center'},
	{type = 'checkbox', text = "Adrenaline Rush:", key = "adr_key", default = true},
	{type = 'checkbox', text = "Curse of the Dreadblades:|c0000FA9A when combo points <= 3", key = "cotd_key", default = true},
	{type = 'checkbox', text = "Thistle Tea:|c0000FA9A when energy < 40 and target boss or PVP enemy", key = "tea_key", default = true},
	{type = 'checkbox', text = "Sprint:|c0000FA9A if equipped [Thraxi's Tricksy Treads]", key = "sprint_key", default = true},
	{type = 'checkbox', text = "Marked for Death:|c0000FA9A when < 2 combo points", key = "mfd_key", default = true},
	{type = 'checkbox', text = "Killing Spree:", key = "ks_key", default = true},
	{type = 'spacer'}, {type = 'ruler'},

	{type = 'header', size = 16, text = 'Other', align = 'center'},
	{type = 'checkbox', text = "Auto Stealth:|c0000FA9A when you have enemy target", key = "stealth_key", default = true},
	{type = 'checkbox', text = "Use Tricks of the Trade:|c0000FA9A in party on tank", key = "tott", default = true},
	{type = 'checkbox', text = "Pick Pocket:|c0000FA9A < 10 yards when you stand and don't move", 	key = 'pp',   default = false},
	{type = 'spacer'}, {type = 'ruler'},

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = 'spacer'}, {type = 'ruler'},

}
	
local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r|cffffff00ROGUE - Outlaw|r")	
	print("|c0000FA9A ------------------------PVP-------------------------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/1 - 4/2 - 5/3 - 6/2 - 7/3")
    print("|c0000FA9A")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/1 - 4/x - 5/x - 6/2 - 7/2")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")

    NeP.Interface:AddToggle({
		key = "target_key",
		name = "Auto Target PVE Enemies",
		text = "Automatically target the nearest enemy. Better works with advanced unlocker",
		icon = "Interface\\Icons\\ability_hunter_snipershot",
})

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

    {"!/run TargetNearestEnemy()", "toggle(target_key) & player.area(15).enemies.infront > 0 & player.combat & player.alive & {!target.exists || target.dead}"},

    {"!Every Man for Himself", "UI(medal) & state(stun) & !buff(Stealth) & !buff(Vanish)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & !buff(Stealth) & !buff(Vanish) & {target.faction.positive || target.faction.negative & player.pvp} & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Keybinds = {

	{"Cheap Shot", "inRange.spell & player.buff(Stealth) & !player.buff(Vanish) & !target.immune_stun & !target.state(stun) & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || UI(stun) & {target.faction.positive || target.faction.negative & player.pvp}}", "target"},
	{BtE, "target.inRange(Between the Eyes).spell & !player.lastcast(Cheap Shot) & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & !target.immune_stun & !target.state(stun) & !target.state(disorient) & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5 || UI(stun) & {target.faction.positive || target.faction.negative & player.pvp}}"},
	{"Sap", "inRange.spell & !player.buff(Vanish) & !target.immune_stun & !target.state(stun) & !target.state(disorient) & !target.state(incapacitate) & !target.combat & {UI(sap_key) & {target.faction.positive || target.faction.negative & player.pvp}}", "target"}, --keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || 
	--{"Gouge", "target.inRange(Gouge).spell & player.infront.of.target & !player.buff(Stealth) & !player.buff(Vanish) & !target.immune_stun & !target.state(stun) & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Blind", "inRange.spell & !target.immune_stun & !target.state(stun) & !target.state(disorient) & !target.state(incapacitate) & !player.buff(Vanish) & {target.buff(Touch of Karma) || keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},

}

local PreCombat = {

	--Leveling
    {"Sinister Strike", "inRange.spell & {player.level < 8 || player.level >= 8 & player.level <= 11 || !keybind(alt) & !keybind(shift) & !keybind(control) & player.level >= 8 & player.level <= 11} & {target.player & player.pvp || !target.player}", "target"},
	--End Leveling

	{"Pick Pocket", "inRange.spell & UI(pp) & !player.moving & player.buff(Stealth) & !player.lastcast(Pick Pocket) & creatureType(Humanoid) & !target.player & !isdummy", "target"},	
	
	--{"%pause", "{target.debuff(Sap) || target.combat} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & {!target.player || target.player & player.pvp}"},	

	{"Ambush", "inRange.spell & player.buff(Stealth) & {!target.player || target.faction.positive || target.faction.negative & player.pvp} & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},
	{"Saber Slash", "inRange.spell & {player.level < 22 || !player.buff(Stealth) & !player.buff(Vanish)} & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6} & {!target.player || target.faction.positive || target.faction.negative & player.pvp}", "target"},
	
	{"Death from Above", "talent(7,3) & inRange.spell & !player.buff(Stealth) & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6} & {!target.player || target.faction.positive || target.faction.negative & player.pvp}", "target"},
	{"Run Through", "inRange.spell & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6} & {!target.player || target.faction.positive & target.state(stun) || target.faction.negative & player.pvp & target.state(stun)}", "target"},

}

local Survival ={

	{"#neck", "{equipped(Eternal Will of the Martyr) || equipped(Eternal Woven Ivy Necklace)} & !player.buff(Stealth) & !player.buff(Vanish) & player.health <= 40"},
    --{"Blind", "target.buff(Touch of Karma) & !player.buff(Stealth) & !player.buff(Vanish)", "target"}, -- || many more target CD's
    {"Vanish", "!player.buff(Stealth) & target.player & player.health < target.health & player.health <= UI(van_spin) & UI(van_check)"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check) & !isdummy"},
	{"Riposte", "player.health <= UI(ripo_spin) & UI(ripo_check) & !player.buff(Stealth) & !player.buff(Vanish) & player.incdmg.phys(5) >= player.health.max*0.02"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)"}, --Health Stone
    {"Feint", "!player.buff(Will of Valeera) & equipped(Will of Valeera) & player.health <= UI(fnt_spin) & UI(fnt_check) & !instanceType == pvp & !instanceType == arena"},

}

local Interrupts = {

	{"!Kick", "interruptAt(60) & target.inRange(Kick).spell & {player.level < 100 || !indungeon}", "target"},
	{"!Kick", "interruptAt(1) & inRange(Kick).spell & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent", "interruptAt(1) & inRange(Kick).spell & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent",	"interruptAt(60) & inRange(Kick).spell & {player.level < 100 || !indungeon}", "target"},

}

local Cooldowns = {

    {"#7676", "target.inRange(Saber Slash).spell & UI(tea_key) & item(7676).count > 0 & player.energy < 40 & {target.boss || target.faction.positive || target.faction.negative & player.pvp}"},
	{"Sprint", "target.inRange(Run Through).spell & UI(sprint_key) & target.deathin > 5 & equipped(Thraxi's Tricksy Treads) & !player.buff(Killing Spree) & {!talent(3,1) & player.combopoints >= 4 || talent(3,1) & player.combopoints >= 5}"},
	{"Killing Spree", "inRange.spell & talent(6,3) & UI(ks_key) & !player.debuff(Curse of the Dreadblades) & !player.lastcast(Curse of the Dreadblades)", "target"}, --Curse of the Dreadblades fara CD
	{"Marked for Death", "target.inRange(Saber Slash).spell & UI(mfd_key) & talent(7,2) & player.combopoints < 2 & !player.debuff(Curse of the Dreadblades) & !player.lastcast(Curse of the Dreadblades) & !player.buff(Killing Spree)"},
	{"Curse of the Dreadblades", "target.inRange(Saber Slash).spell & UI(cotd_key) & player.combopoints <= 3 & !player.lastcast(Marked for Death) & !player.buff(Killing Spree) & !player.lastcast(Killing Spree)"}, --
	{"Adrenaline Rush", "target.inRange(Saber Slash).spell & !player.buff(Killing Spree) & !player.lastcast(Killing Spree) & UI(adr_key)"},

	{"#trinket1", "UI(trk1) & target.inRange(Saber Slash).spell"},
	{"#trinket2", "UI(trk2) & target.inRange(Saber Slash).spell"},

}

local Combat = {

	{"Ambush", "inRange.spell & player.buff(Stealth) & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},
    {"/startattack", "!isattacking & target.inRange(Saber Slash).spell & !player.buff(Stealth)"},
    {"Tricks of the Trade", "inRange.spell & player.aggro & indungeon & UI(tott) & player.los(tank) & !player.buff(Stealth)", "tank"},

	{"Blade Flurry", "toggle(AoE) & player.area(8).enemies >= 2 & !player.buff(Blade Flurry) || !toggle(AoE) & player.buff(Blade Flurry) || player.area(8).enemies <= 1 & player.buff(Blade Flurry)"},

	{"Death from Above", "talent(7,3) & inRange.spell & !player.buff(Stealth) & {!player.debuff(Curse of the Dreadblades) || target.player} & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},
    {"Run Through", "inRange.spell & equipped(Thraxi's Tricksy Treads) & player.buff(Sprint) & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},
	
	{"Roll the Bones", "!talent(7,1) & target.deathin > 7 & !buff_of_the_bones & player.combopoints >= 3 & {talent(7,3) & spell(Death from Above).cooldown > 1 || player.debuff(Curse of the Dreadblades) || !talent(7,3)}", "player"},
	{"Slice and Dice", "talent(7,1) & player.buff(Slice and Dice).duration < 3 & {target.deathin > 10 & player.combopoints > 4 || target.deathin <= 10 & player.combopoints > 1}"},
	{"Run Through", "inRange.spell & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},

    {"Ghostly Strike", "inRange.spell & talent(1,1) & buff(Ghostly Strike).duration < 2 & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},
	{"Blunderbuss", "inRange.spell & !player.buff(Stealth) & !state(disorient) & !player.debuff(Curse of the Dreadblades)", "target"},
	{"Pistol Shot", "inRange.spell & !player.buff(Stealth) & !state(disorient) & player.buff(Opportunity) & {talent(1,3) & !player.debuff(Curse of the Dreadblades) || player.debuff(Curse of the Dreadblades) & player.energy < 56}", "target"},
	{"Saber Slash", "inRange.spell & !player.buff(Stealth) & !state(disorient) & {!talent(3,1) & player.combopoints < 5 || talent(3,1) & player.combopoints < 6}", "target"},
	{"Blunderbuss", "inRange.spell & !player.buff(Stealth) & !state(disorient)", "target"},
	{"Pistol Shot", "inRange.spell & !player.buff(Stealth) & !state(disorient) & player.buff(Opportunity)", "target"},

}

local inCombat = {

    {pvp},
	{Cannonball},
    {Grappling_Hook},
    {Keybinds, "target.enemy & target.alive & !target.immune_all & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
    {Interrupts, "toggle(interrupts) & target.enemy & target.alive & !target.immune_all & !player.buff(Stealth) & !player.buff(Vanish) & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	{Survival, "player.health < 100"},
	{"/stopattack", "{!target.player || target.faction.positive || target.faction.negative & player.pvp} & {player.buff(Vanish) || target.immune_all}"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & !target.immune_all & !player.buff(Stealth) & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	{Combat, "target.enemy & target.alive & !target.immune_all & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},

}

local outCombat = {

    {pvp},
	{Cannonball},
    {Grappling_Hook},
	{"Blade Flurry", "player.area(8).enemies <= 1 & player.buff(Blade Flurry)"},
    --{"/targetenemyplayer", "!target.exists & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}"},
	{"Stealth", "UI(stealth_key) & !player.buff(Stealth) & !player.buff(Vanish) & target.enemy & target.alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"/stopattack", "{!target.player || target.faction.positive || target.faction.negative & player.pvp} & {player.buff(Vanish) || target.immune_all}"},
    {Keybinds, "target.enemy & target.alive & !target.immune_all & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	{PreCombat, "target.enemy & target.alive & !target.immune_all"},

}

NeP.CR:Add(260, {
	name = '[|cffffff00Kleei|r]|cffffff00 ROGUE - Outlaw',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
