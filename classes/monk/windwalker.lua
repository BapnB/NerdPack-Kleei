local unpack = _G.unpack

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\ww.blp", width = 305, height = 305, offset = 190, y = -90, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Leg Sweep:|c0000FA9A", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "1" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Paralysis:|c0000FA9A on mouseover, target", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "6" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Effuse:|c0000FA9A on mouseover or self", key = "list3", width = 100, list = {
	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"}, 
	}, default = "8" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = "header", size = 16, text = "PVP", align = "center"},
    {type = "checkbox",	text = "Stun:|c0000FA9A PVP enemy in Melee [Leg Sweep].|r", align = "left", key = "stun", default = true},
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
	{type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Touch of Karma:", key = "tok", check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 50, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},
	{type = "checkbox", text = "Touch of Death:", key = "ToD_key", default = true},
	{type = "checkbox", text = "Blood Fury:|c0000FA9A ORC Racial", key = "bloodfury_key", default = true},
	{type = "checkbox", text = "Berserking:|c0000FA9A Troll Racial", key = "berserking_key", default = true},
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
	
	--[[{type = 'header', size = 16, text = 'TO DO:', align = 'center'},
	{type = 'text', text = "Touch of Karma: when we are target of target and he activate the CD's to you"},]]

} 

local exeOnLoad = function()
	
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r"..ColorClass.."MONK - Windwalker|r")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
 	print("|c0000FA9A --- |rSupported Talents: 1/3 - 2/1 - 3/1 - 4/3 - 5/1 - 6/3 - 7/2")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A Like my work ? buy me a beer or six|r|c00FF0000 https://www.paypal.me/thekleei|r")

end

local pvp = {

    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & target.player & {player.state(stun) & player.spell(Every Man for Himself)cooldown > 0 & player.race = Human || player.state(stun) & !player.race = Human || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

    {"Disable", "inRange.spell & player & !debuff(Disable)", "target"},
	
}

local Keybinds = {

	{"Leg Sweep", "area(5).enemies > 0 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || target.player & target.canAttack & target.inRange(Tiger Palm).spell & !target.state(stun) & !target.state(disorient) & UI(stun)}", "player"},
	{"Paralysis", "inRange.spell & canAttack & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", {"mouseover", "target"}},
	{"Effuse", "inRange.spell & !player.moving & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", {"mouseover", "player"}},

}

local Precombat = { 

    {"%dispelself", nil, "player"},
    --{"Effuse", "health < 90 & !player.moving", "player"},

}

local Interrupts = {

    {"Spear Hand Strike", "inRange.spell", "target"},
	
}

local Survival = {

    {"Gift of the Naaru", "health <= 40 & target.canAttack", "player"},
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & area(40).enemies >= 1", "player"}, --Health Stone
	{"Touch of Karma", "target.canAttack & player.health <= UI(tok_spin) & UI(tok_check)"},

}

local Cooldowns = {

	{"#trinket1", "UI(trk1) & target.inRange(Tiger Palm).spell & !lastcast(Fists of Fury).succeed"},
	{"#trinket2", "UI(trk2) & target.inRange(Tiger Palm).spell & !lastcast(Fists of Fury).succeed"},
	
	{"Touch of Death", "inRange.spell & UI(ToD_key) & !lastcast(Fists of Fury).succeed & {target.health.actual >= player.health.max * 4 || target.isdummy}", "target"},
	{"Blood Fury", "UI(bloodfury_key) & target.inRange(Tiger Palm).spell & !lastcast(Fists of Fury).succeed", "player"},
    {"Berserking", "UI(berserking_key) & target.inRange(Tiger Palm).spell & !lastcast(Fists of Fury).succeed", "player"},
	{"Energizing Elixir", "target.inRange(Tiger Palm).spell & chi <= 1 & !lastcast(Fists of Fury).succeed & player.buff(Hit Combo).count == 6 & {spell(Fists of Fury).cooldown == 0 || spell(Rising Sun Kick).cooldown == 0 || spell(Strike of the Windlord).cooldown == 0} & {toggle(AoE) & player.area(8).enemies >= 3 || target.health.actual >= player.health.max * 0.5 || target.isdummy}", "player"},
	{"Arcane Torrent", "target.inRange(Tiger Palm).spell & spell(Fists of Fury).cooldown == 0 & {player.chi == 2 || player.chi == 0} & {spell(Rising Sun Kick).cooldown >= 1 & {Strike of the Windlord).cooldown >=0 || lastcast(Storm, Earth, and Fire).succeed} || player.buff(Hit Combo).count == 6} & {toggle(AoE) & player.area(8).enemies >= 3 || target.health.actual >= player.health.max * 0.5 || target.isdummy}", "player"},
	--{"Serenity", "talent(7,3) & target.inRange(Tiger Palm).spell", "player"},
	
	{"Storm, Earth, and Fire", "target.inRange(Tiger Palm).spell & !buff & {spell(Rising Sun Kick).cooldown == 0 & spell(Fists of Fury).cooldown == 0 & player.buff(Hit Combo).count < 6 & player.chi >= 2 || player.buff(Hit Combo).count == 6 & spell(Fists of Fury).cooldown <= 10 & {spell(Fists of Fury).cooldown == 0 & player.chi >= 3 || player.chi >= 2 & spell(Rising Sun Kick).cooldown == 0 || player.chi >= 2 & spell(Strike of the Windlord).cooldown == 0}} & {target.health.actual >= player.health.max || target.isdummy}", "player"},

}

local Combat = {

	{"&/cast Storm, Earth, and Fire: Fixate", "area(10).enemies <= 2 & buff(Storm, Earth, and Fire) & !player.lastcast(Fists of Fury) & target.targettimeout(fixit, 25)", "player"},
    {"/startattack", "inRange(Tiger Palm).spell & !isattacking & !lastcast(Fists of Fury).succeed", "target"},
	{"Chi Wave", "target.distance < 10 & infront & player.buff(Hit Combo).count < 6 & talent(6,3)", "player"},
	{"Rising Sun Kick", "inRange.spell & infront & player.buff(Hit Combo).count < 6 & talent(6,3)", "target"},
	{"Fists of Fury", "inRange.spell & infront & {spell(Storm, Earth, and Fire).cooldown >= 5 || target.health.actual < player.health.max || !toggle(cooldowns) || player.buff(Storm, Earth, and Fire)} & {toggle(AoE) & player.area(8).enemies >= 3 || target.health.actual >= player.health.max * 0.3 || target.isdummy}", "target"},
	{"Whirling Dragon Punch", "area(8).enemies >= 1", "player"},
	{"Spinning Crane Kick", "toggle(AoE) & area(8).enemies >= 3 & spell(Fists of Fury).cooldown > 1 & {spell(Whirling Dragon Punch).cooldown > 1 || !talent(7,2)} & {spell(Strike of the Windlord).cooldown > 1 || !equipped(Fists of the Heavens)}", "player"},
	--{"Strike of the Windlord", "inRange.spell & infront & spell(Fists of Fury).cooldown > 1 & {spell(Whirling Dragon Punch).cooldown > 0 || !talent(7,2)}", "target"},
	{"Rising Sun Kick", "inRange.spell & infront & spell(Fists of Fury).cooldown > 1", "target"},
	{"Strike of the Windlord", "inRange.spell & infront & spell(Fists of Fury).cooldown > 1 & {target.health.actual >= player.health.max * 0.3 || target.isdummy}", "target"},
	--{"Rushing Jade Wind", "toggle(AoE) & area(8).enemies >= 3 & spell(Fists of Fury).cooldown > 1 & !buff", "player"},
	{"Tiger Palm", "inRange.spell & infront & {player.level <= 79 || !lastcast(Tiger Palm).succeed || !player.buff(Hit Combo)} & {player.buff(Hit Combo).count < 6 & spell(Fists of Fury).cooldown == 0 & race == Blood Elf || player.buff(Hit Combo).count == 6 & spell(Fists of Fury).cooldown > 1 & spell(Whirling Dragon Punch).cooldown > 0 & {spell(Strike of the Windlord).cooldown == 0 || spell(Rising Sun Kick).cooldown == 0}}", "target"},
	{"Blackout Kick", "inRange.spell & infront & !lastcast(Whirling Dragon Punch).succeed & player.buff(Blackout Kick!) & {player.level <= 79 || !lastcast(Blackout Kick).succeed || !player.buff(Hit Combo)}", "target"},
	{"Blackout Kick", "inRange.spell & infront & !lastcast(Whirling Dragon Punch).succeed & {player.level <= 79 || !lastcast(Blackout Kick).succeed || !player.buff(Hit Combo)} & {spell(Fists of Fury).cooldown > 0 || player.chi >= 2}", "target"},
	{"Tiger Palm", "inRange.spell & infront & {player.level <= 79 || !lastcast(Tiger Palm).succeed || !player.buff(Hit Combo)}", "target"},
	{"Chi Wave", "target.distance < 10", "player"},

}

local inCombat = {

    {pvp, "target.canAttack"},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & target.interruptAt(65) & target.canAttack & !player.lastcast(Fists of Fury)"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack"},
	{Combat, "target.canAttack"},
 
}

local outCombat = {

	{pvp, "target.player"},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & target.interruptAt(65) & target.canAttack"},
	{Combat, "target.canAttack"},
	{Precombat},

}

NeP.CR:Add(269, {
	name = "["..ColorClass.."Kleei|r]"..ColorClass.." MONK - Windwalker",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.2.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})
