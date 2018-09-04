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

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\mm.blp', width = 200, height = 175, offset = 170, y = -80, align = 'center'},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "none", key = "list1", list = keybind_list_1, width = 100},
    {type = "text", text = "Use Freezing Trap:|c0000FA9A on cursor ground"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "none", key = "list2", list = keybind_list_2, width = 100},
	{type = "text", text = "Use Binding Shot:|c0000FA9A on cursor ground"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "7", key = "list3", list = keybind_list_3, width = 100},
	{type = "text", text = "Use Barrage:|c0000FA9A enemies in front of you"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = "header", size = 16, text = "PVP", align = "center"},
	{type = "checkbox", text = "Use Bursting Shot:|c0000FA9A if enemy player in range", key = "bs_key", default = true},
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
	{type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Aspect of the Turtle:", key = "aott_key", check = true, spin = 40, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Exhilaration:", key = "exhil", check = true, spin = 70, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Feign Death:", key = "FD_key", check = false, spin = 10, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "|c0000FA9A      When not moving (better use manualy)|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Cooldowns Toggle", align = 'center'},
	{type = "checkbox", text = "Use Trueshot:|c0000FA9A", key = "trueshot_key", default = true},
	{type = "checkbox", text = "Use Windburst:|c0000FA9A", key = "windburst_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Other", align = "center"},
	{type = "checkbox", text = "Use Misdirection:|c0000FA9A on [tank] / [pet] if exists", key = "misdir_key", default = true},
	{type = "checkbox", text = "Use Concussive Shot:|c0000FA9A slow PVP target if is not controled", key = "slow_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Trinkets", align = "center"},
	{type = "text", text = "|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r", align = "center"},
	{type = "checkbox", text = "Trinket #1", 	key = "trk1",	default = false},
	{type = "checkbox", text = "Trinket #2", 	key = "trk2",   default = false},
	{type = "text", text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

}
	
local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r|cffABD473Hunter - Marksmanship|r|c00FF0000 for Advanced Unlocker|r")	
	--[[print("|c0000FA9A ------------------------PVP-------------------------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/x - 2/x - 3/x - 4/x - 5/x - 6/x - 7/x")
    print("|c0000FA9A")]]
	print("|c0000FA9A ------------------------PVE---Single Target---------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/3 - 3/1 - 4/3 - 5/x - 6/x - 7/3")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A ------------------------PVE---Multi Target----------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/3 - 3/1 - 4/1 - 5/x - 6/2 - 7/1")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

	NeP.Interface:AddToggle({key = "barrage_key", icon = "Interface\\Icons\\ability_hunter_rapidregeneration", name = "Auto Barrage", text = "ON/OFF"})

end

local pvp = {

    {"Concussive Shot", "UI(slow_key) & inRange.spell & player & canAttack & !immune_all & !immune_stun & !state(snare) & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm)", "target"},
    
	{"!Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & {target.faction.positive || target.faction.negative & player.pvp} & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Keybinds = {

	{"Binding Shot", "talent(5,1) & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "cursor.ground"},
	{"Freezing Trap", "!player.lastcast(Binding Shot) & spell(Binding Shot).cooldown > 0  & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "cursor.ground"},
	{"Tar Trap", "!player.lastcast(Freezing Trap) & spell(Freezing Trap).cooldown > 0 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "cursor.ground"},
	
	{"Barrage", "talent(6,2) & inRange(Arcane Shot).spell & canAttack & alive & infront & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8 || toggle(barrage_key)}", "target"},

}

local PreCombat = {

    {"Cobra Shot", "inRange.spell & player.level < 20", "target"},
	{"Aimed Shot", "inRange.spell & player.level < 20", "target"},
	{"Arcane Shot", "inRange.spell & player.level < 20", "target"},

	{"Sidewinders", "inRange.spell & talent(7,1)", "target"},
	{"Multi-Shot", "toggle(AoE) & inRange.spell & !talent(7,1) & {target.all.enemies(8).area > 1 || equipped(War Belt of the Sentinel Army) & !target.player}", "target"},
	{"Arcane Shot", "inRange.spell & !talent(7,1)", "target"}, --

}

local Survival ={

	{"Bursting Shot", "UI(bs_key) & canAttack & player & !enemy_totem & fixRange <= 7.5 & infront & !immune_all & !immune_stun & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm)", "enemies"},

	{"#neck", "{equipped(Eternal Will of the Martyr) || equipped(Eternal Woven Ivy Necklace)} & player.health <= 40", "player"},
	{"Aspect of the Turtle", "UI(aott_key_check) & player.health <= UI(aott_key_spin) & player.incdmg.phys(5) >= player.health.max*0.01", "player"},
	{"Exhilaration", "player.health <= UI(exhil_spin) & UI(exhil_check)", "player"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.incdmg.phys(5) >= player.health.max*0.01", "player"}, --Health Stone
	{"!Feign Death", "UI(FD_key_check) & player.health <= UI(FD_key_spin) & !player.moving & player.incdmg.phys(5) >= player.health.max*0.01", "player"},

}

local Interrupts = {

	{"!Counter Shot", "interruptAt(60) & inRange.spell & infront & !player.casting(Barrage) & {player.level < 100 || !indungeon}", "target"},
	{"!Counter Shot", "interruptAt(1) & inRange.spell & infront & !player.casting(Barrage) & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent", "interruptAt(1) & fixRange <= 7.5 & !player.casting(Barrage) & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent",	"interruptAt(60) & fixRange <= 7.5 & !player.casting(Barrage) & {player.level < 100 || !indungeon}", "target"},

}

local Cooldowns = {

    {"Trueshot", "target.inRange(Aimed Shot).spell & UI(trueshot_key)", "player"},
    {"Windburst", "target.inRange(Aimed Shot).spell & UI(windburst_key) & !player.moving", "target"},
 
	{"#trinket1", "UI(trk1) & target.inRange(Aimed Shot).spell"},
	{"#trinket2", "UI(trk2) & target.inRange(Aimed Shot).spell"},

}

local Combat = {

    {"/cast Auto Shot", "!isshooting & target.fixRange <= 43 & !player.casting(Barrage) & !player.lastcast(Barrage) & !player.buff(Feign Death) & !keybind(alt) & !keybind(shift) & !keybind(control)"},

    {"Cobra Shot", "inRange.spell & player.level < 20", "target"},
	{"Aimed Shot", "inRange.spell & player.level < 20 & !player.moving", "target"},
	{"Arcane Shot", "inRange.spell & player.level < 20", "target"},

    {"Misdirection", "inRange.spell & indungeon & UI(misdir_key)", "tank"},
    {"Misdirection", "inRange.spell & pet.exists & !indungeon & !talent(1,1) & UI(misdir_key)", "pet"},	

	{"Aimed Shot", "inRange.spell & spell(Aimed Shot).casttime == 0 & {target.debuff(Hunter's Mark) & target.debuff(Vulnerable) || !target.debuff(Hunter's Mark) & !target.debuff(Vulnerable) || target.debuff(Vulnerable)} & {target.area(8).enemies <= 3 || target.boss}", "target"},
	{"Marked Shot", "inRange(Aimed Shot).spell & talent(4,3) & debuff(Hunter's Mark) & debuff(Vulnerable).duration < spell(Aimed Shot).casttime + 0.5", "target"},
	{"Marked Shot", "inRange(Aimed Shot).spell & !talent(4,3) & debuff(Hunter's Mark)", "target"},
	{"Marked Shot", "inRange(Aimed Shot).spell & debuff(Hunter's Mark) & count.enemies.debuffs(Hunter's Mark) >= 4", "enemies"},
	{"Marked Shot", "inRange(Aimed Shot).spell & debuff(Hunter's Mark) & player.moving & count.enemies.debuffs(Hunter's Mark) >= 2", "enemies"},

	{"Aimed Shot", "inRange.spell & !player.moving & {target.debuff(Vulnerable) || !player.buff(Marking Targets)} & {target.area(8).enemies <= 3 || target.boss} & {!keybind(alt) & !keybind(shift) & !keybind(control) & !toggle(barrage_key) || spell(Barrage).cooldown > 1.5 & toggle(barrage_key)}", "target"},
	{"Sidewinders", "inRange.spell & talent(7,1)", "target"},
	{"Multi-Shot", "toggle(AoE) & inRange.spell & !talent(7,1) & {target.area(8).enemies > 1 || equipped(War Belt of the Sentinel Army) & !target.player}", "target"},
	{"Arcane Shot", "inRange.spell & !talent(7,1)", "target"},
	{"Aimed Shot", "inRange.spell & talent(7,1) & !player.moving & {!keybind(alt) & !keybind(shift) & !keybind(control) & !toggle(barrage_key) || spell(Barrage).cooldown > 1.5 & toggle(barrage_key)}", "target"},

}

local inCombat = {

    {Keybinds},
    {pvp},
    {Interrupts, "toggle(interrupts) & target.canAttack & target.alive & !target.immune_all"},
	{Survival},
	{"!/stopattack", "target.immune_all || player.buff(Feign Death) || player.buff(Camouflage)", "player"},
	{"!/stopattack", "target.fixRange <= 20 & target.canAttack & target.player & {target.state(fear) || target.state(disorient) || target.state(incapacitate) || target.state(charm)} || player.state(stun)", "player"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack & target.alive & target.infront"},
	{Combat, "target.canAttack & target.alive & target.infront"},

}

local outCombat = {

    {pvp},
    {Keybinds},
	{"Exhilaration", "player.health <= UI(exhil_spin) & UI(exhil_check)", "player"},
	{"!/stopattack", "target.immune_all || player.buff(Feign Death) || player.buff(Camouflage)", "player"},
	{PreCombat, "target.canAttack & target.alive & target.infront"},

}

NeP.CR:Add(254, {
	name = "[|cffABD473Kleei|r]|cffABD473 Hunter - Marksmanship",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})
