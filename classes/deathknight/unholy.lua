local unpack = _G.unpack

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\frost_dk.blp", width = 300, height = 300, offset = 160, y = -75, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Chains of Ice:|c0000FA9A on mouseover, target", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "1" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Death and Decay & Clawing Shadows:|c0000FA9A AOE", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "5" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Asphyxiate:|c0000FA9A on mouseover, target", key = "list3", width = 100, list = {
	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"}, 
	}, default = "9" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = "header", size = 16, text = "PVP", align = "center"},
    --{type = "checkbox",	text = "Stun:|c0000FA9A auto [CS] or [BTE] PVP Target.|r", align = "left", key = "stun", default = true},
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
	{type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Death Strike:", key = "death_strike", check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Icebound Fortitude:", key = "ice_fort", check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},
	--[[{type = "checkbox", text = "Obliteration:|c0000FA9A", key = "obliteration_key", default = true},
	{type = "checkbox", text = "Hungering Rune Weapon:|c0000FA9A when runes <= 3", key = "hungering_key_key", default = true},
	{type = "checkbox", text = "Horn of Winter:|c0000FA9A when runes <= 1", key = "horn_key", default = true},
	{type = "checkbox", text = "Empower Rune Weapon:|c0000FA9A when no runes available", key = "empower_key", default = true},
	{type = "checkbox", text = "Pillar of Frost:|c0000FA9A ", key = "pillar_key", default = true},
	{type = "checkbox", text = "Sindragosa's Fury:|c0000FA9A", key = "sindra_key", default = true},]]
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Other", align = "center"},
	--{type = "checkbox", text = "Auto Stealth:|c0000FA9A when you have enemy target", key = "stealth_key", default = true},
	--{type = "checkbox", text = "Use Tricks of the Trade:|c0000FA9A in party on tank", key = "tott", default = false},
	--{type = "checkbox", text = "Pick Pocket:|c0000FA9A < 10 yards when you stand and don't move", 	key = "pp",   default = false},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"},{type = "ruler"},
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

 	print("|c0000FA9A ------------------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r"..ColorClass.."DEATH KNIGHT - Unholy|r")
	print("|c0000FA9A ------------------------PVE-------------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents:  1/3 - 2/2 - 3/3 - 4/2 - 5/1 - 6/3 - 7/3")
	print("|c0000FA9A ------------------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A Like my work ? buy me a beer or six|r|c00FF0000 https://www.paypal.me/thekleei|r")

end

local pvp = {

    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},
    {"!Gladiator's Medallion", "UI(medal) & canAttack & target.player & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Keybinds = {

    {"Chains of Ice", "inRange.spell & canAttack & infront & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", {"mouseover", "target"}},
	{"Death and Decay", "{keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "player.ground"},
	{"Defile", "{keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "player.ground"},
	{"Asphyxiate", "inRange.spell & canAttack & infront & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", {"mouseover", "target"}},
	
}

local PreCombat = {

    {"Outbreak", "inRange(Festering Strike).spell & debuff(Virulent Plague).duration <= 3", "target"},

}

local Survival = {

    {"Death Strike", "inRange.spell & infront & player.health <= UI(death_strike_spin) & UI(death_strike_check)", "enemies"},
	{"Icebound Fortitude", "health <= UI(ice_fort_spin) & UI(ice_fort_check) & incdmg(5) >= health.max * 0.1 & target.canAttack", "player"},
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check)", "player"}, --Health Stone
	
}

local Interrupts = {

	{"!Mind Freeze", "interruptAt(60) & inRange.spell & infront", "target"},
	{"!Arcane Torrent",	"interruptAt(60) & inRange(Frost Strike).spell", "target"},

}

local Cooldowns = {
 	
	{"Clawing Shadows", "inRange.spell & debuff(Festering Wound).count >= 1 & debuff(Soul Reaper)", "target"},
	{"Dark transformation", "target.inRange(Festering Strike).spell & pet.exists & target.canAttack", "player"},
	{"Summon Gargoyle", "inRange.spell & canAttack", "target"},
	{"Blighted Rune Weapon", "inRange(Festering Strike).spell & canAttack & debuff(Festering Wound).count <= 5", "target"},
	{"Apocalypse", "inRange.spell & canAttack & debuff(Festering Wound).count >= 5", "target"},
	{"Festering Strike", "inRange.spell & debuff(Festering Wound).count <= 5 & spell(Apocalypse).cooldown <= 3", "target"},
	
	{"#trinket1", "UI(trk1) & target.inRange(Festering Strike).spell"},
	{"#trinket2", "UI(trk2) & target.inRange(Festering Strike).spell"},

}

local Combat = {

    {"/startattack", "!isattacking & inRange(Festering Strike).spell", "target"},
	{"Clawing Shadows", "inRange.spell & debuff(Festering Wound).count >= 1 & debuff(Soul Reaper)", "target"},
    {"Outbreak", "inRange.spell & debuff(Virulent Plague).duration <= 3", "target"},
	
	{"Soul Reaper", "inRange.spell & debuff(Festering Wound).count > 2 & runes >= 2.6", "target"},
	
    {"Death and Decay", "toggle(aoe) & player.area(8).enemies >= 3 & player.lastmoved > 0.25 & player.buff(Death and Decay).duration < 5", "player.ground"},
	
	{"Chains of Ice", "inRange.spell & player.buff(Cold Heart).count == 20 & spell(Soul Reaper).cooldown >= 2", "target"},
	
	{"Clawing Shadows", "inRange.spell & canAttack & infront & player.area(10).enemies > 2 & spell(Death and Decay).cooldown >= 20", "target"},
	
	{"Death Coil", "inRange.spell & player.runicpower >= 90", "target"},
	
	{"Clawing Shadows", "inRange.spell & {target.debuff(Scourge of Worlds) & spell(Soul Reaper).cooldown >= 3 || target.debuff(Festering Wound).count >= 3} & {spell(Apocalypse).cooldown > 4 || !toggle(cooldown)}", "target"},
	
	{"Festering Strike", "inRange.spell & debuff(Festering Wound).count < 3", "target"}, -- & {target.health.actual >= player.health.max * 0.6 || target.isdummy || target.player}
	
	{"Death Coil", "inRange.spell", "target"},
	
	--{"Clawing Shadows", "toggle(AoE) & inRange.spell & debuff(Festering Wound).count >= 1 & player.area(8).enemies >= 2", "target"},
	
	{"Death Strike", "inRange.spell & player.buff(Dark Succor)", "target"},
	
}

local inCombat = {

	--{"%ressdead(Raise Ally)"},
	{"Raise Ally", "inRange.spell & !enemy & dead & player & player.area(40).enemies >= 1", "mouseover"},
	{"Raise Dead", "!pet.exists & !lastcast.succeed & moving", "player"},

    {pvp},
	{Keybinds},
    {Interrupts, "toggle(interrupts) & target.canAttack & !target.immune_all"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack & target.infront"},
	{Combat, "target.canAttack & target.infront"},

}

local outCombat = {

	{"Raise Dead", "!pet.exists & !lastcast.succeed & moving", "player"},
    {pvp},
	{Keybinds},
	{"Path of Frost", "swimming & !buff(Path of Frost)", "player"},
	{PreCombat, "target.canAttack & target.infront"},

}

NeP.CR:Add(252, {
	name = "["..ColorClass.."Kleei|r]"..ColorClass.." DEATH KNIGHT - Unholy",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.2.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})
