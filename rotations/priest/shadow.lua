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

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\fire.blp', width = 256, height = 256, offset = 90, y = -80, align = 'center'},
	{type = 'spacer'}, {type = 'spacer'}, {type = 'spacer'}, {type = 'ruler'},

}

local GUI = {
    
	unpack(Logo_GUI),
	
	{type = "spacer"},{type = "spacer"},{type = "spacer"},{type = "spacer"},{type = "spacer"},
	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "spacer"},
	{type = "combo", default = "1", key = "list1", list = keybind_list_1, width = 100},	
	{type = "text", text = "Use Mind Bomb:|c0000FA9A on target"},
	{type = "combo", default = "5", key = "list2", list = keybind_list_2, width = 100},	
    {type = "text", text = "Use Shadow Mend:|c0000FA9A on self|r"},
	--[[{type = "combo", default = "8", key = "list3", list = keybind_list_3, width = 100},		
    {type = "text", text = "Use Meteor:|c0000FA9A on target ground|r"},
]]
	{type = "spacer"}, {type = "ruler"},
	
    {type = "header", size = 16,  text = "PVP", align = "center"},
    --{type = "checkbox",	text = "Polymorph: |c0000FA9A when player area enemies up to 3 (test)|r", align = "left", key = "poly", default = false},
    --{type = "checkbox",	text = "Spellsteal: |c0000FA9A steal good buffs enemies around|r", align = "left", key = "st_buff", default = true},
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
	{type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "spacer"}, {type = "ruler"},
 
	{type = "header", size = 16, text = "Trinkets", align = "center"},
	{type = "text", text = "|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r", align = "center"},
	{type = "checkbox", text = "Trinket #1", key = "trk1",	default = false},
	{type = "checkbox", text = "Trinket #2", key = "trk2",   default = false},
	{type = "text", text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "spacer"}, {type = "ruler"},
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Power Word: Shield", key = "pws", check = true, spin = 80, width = 100, step = 5, max = 95, min = 1},
	--{type = "text", text = "|c0000FA9A allways when you are flagged PVP in combat, never now when you'll be attacked by other players|r"},
	--[[{type = "checkbox", text = "Use Ice Block:|c0000FA9A debuff Cauterize is up", key = "cool_down", default = true},
	{type = "checkspin", text = "Use Ice Block:", key = "ice_health", check = true, spin = 10, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Temporal Shield:", key = "temp_shield", check = true, spin = 70, width = 100, step = 5, max = 95, min = 1},]]
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 30, width = 100, step = 5, max = 95, min = 1},
	{type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16, text = "AOE", align = "center"},
	{type = "spinner", text = "Use Shadow Word: Pain|c0000FA9A on enemies", key = "swp", default = 5, width = 100, step = 1, max = 15, min = 1},
	{type = "spinner", text = "Use Vampiric Touch|c0000FA9A on enemies", key = "vamp", default = 5, width = 100, step = 1, max = 15, min = 1},
	{type = "spinner", text = "Use Void Eruption:|c0000FA9A", key = "ve", default = 5, width = 100, step = 1, max = 15, min = 1},
	{type = "text", text = "|c0000FA9A On enemies afected [Shadow Word: Pain] or [Vampiric Touch]|r"},
	{type = "spacer"}, {type = "ruler"},

	{type = 'header', size = 16, text = 'EWT cheat', align = 'center'},
    {type = 'checkbox',	text = "Always-Facing:|c0000FA9A if you use it check the box|r", align = 'left', key = 'allfacing', default = false},
    {type = 'checkbox',	text = "Moving-Cast:|c0000FA9A if you use it check the box and it will cast when moving|r", align = 'left', key = 'mc', default = false},
	{type = "spacer"}, {type = "ruler"},
	
    {type = "text", text = "Cooldowns Toggle:", align = "center"},
	--[[{type = "text", text = "Use Time Warp|c0000FA9A if toggle is on|r"},
	{type = "checkbox", text = "Use Rune of Power|c0000FA9A you can disable|r", key = "rop", default = true},
	{type = "checkbox", text = "Use Combustion|c0000FA9A you can disable|r", key = "fire_man", default = true},
	{type = "checkbox", text = "Use Meteor|c0000FA9A you can disable|r", key = "mete", default = false},]]
    {type = "spacer"}, {type = "ruler"},

}

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A --- |r|c0000BFFF Priest - Shadow |r")
	print("|c0000FA9A ------------------------PVP-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: Coming soon")
	--print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/3 - 4/2 - 5/3 - 6/1 - 7/3")
	--print("|c0000FA9A --- |rHonor Talents: 1/1 - 2/1 - 3/1 - 4/1 - 5/3 - 6/2")
    print("|c0000FA9A")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/2 - 3/1 - 4/2 - 5/1 - 6/2 - 7/1")
	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")

	NeP.Interface:AddToggle({
		key = "autopvp",
		name = "Auto Target PVP enemies",
		text = "Automatically Target PVP enemies for BG to avoid burst on enemy pets or totems.",
		icon = "Interface\\Icons\\spell_shadow_charm",
	})

	NeP.Interface:AddToggle({
		key = "hig_en",
		name = "Attack Highest Health Enemies",
		text = "Works great in dungeons. Disable it in PVP.",
		icon = "Interface\\Icons\\achievement_boss_guarm",
	})
	
end

local shadowform = {

    {"Shadowform", "!buff(Voidform) & !buff(Shadowform)", "player"},
	
}

local pvp = {

    {"!/cleartarget", "toggle(autopvp) & player.pvp & target.exists & !target.player & target.enemy", "target"},
    {"!/targetenemyplayer", "toggle(autopvp) & player.pvp & !target.exists & range <= 40 & infront", "enemies"},
    {"Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"Gladiator's Medallion", "UI(medal) & target.pvp & player.pvp & {state(stun) & spell(Every Man for Himself)cooldown >= gcd & race = Human || state(stun) & !race = Human || state(fear) || state(disorient) || state(charm)}", "player"},
	--{"Polymorph", "!immune_all & alive & enemy & combat & !count.enemies.debuffs(Polymorph) >= 1 & !player.lastcast(Polymorph) & pvp & !is(target) & player.area(28).enemies <= 3 & player.area(28).enemies >= 1 & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & UI(poly) & {UI(mc) || !UI(mc) & !player.moving}", "enemies"},
	{"!Spellsteal", "!immune_all & !immune_spell & alive & enemy & range <= 38.5 & buff(Cauterizing Blink) & UI(st_buff) & {player.mana >= 25 || player.buff(Innervate)} & {!pvp || pvp & player.pvp}", "target"},
	{"Spellsteal", "!immune_all & !immune_spell & alive & enemy & range <= 38.5 & steal_buff & UI(st_buff) & {player.mana >= 25 || player.buff(Innervate)} & {!pvp || pvp & player.pvp}", "enemies"},

}

local Keybinds = {

    {"Mind Bomb", "!immune_all & !immune_spell & alive & enemy & range <= 27 & {!target.pvp || target.pvp & player.pvp} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"}, -- & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm)
	
	{"Shadow Mend", "health <= 90 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "player"},
	
	{"Meteor", "target.alive & target.enemy & player.combat & target.range <= 38.5 & !target.immune_all & !target.immune_spell & {!target.pvp || target.pvp & player.pvp} & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target.ground"},	

}

local PreCombat = { 

	{"Power Word: Shield", "{!buff & target.enemy & target.alive || !buff(Body and Soul) & player.movingfor >= 0.5 & talent(2,2) || !buff & player.area(15).enemies >= 1}", "player"},
	{"Mind Blast", "range <= 38.5 & alive & enemy & !immune_all & !immune_spell & {!target.pvp || target.pvp & player.pvp} & {UI(allfacing) || !UI(allfacing) & infront} & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	{"Vampiric Touch", "range <= 38.5 & alive & enemy & !immune_all & !immune_spell & !player.lastcast & !buff & player.spell(Mind Blast).cooldown > 0 & {!target.pvp || target.pvp & player.pvp} & {UI(mc) || !UI(mc) & !player.moving}", "target"},

}

local Survival = {

    {"!Every Man for Himself", "UI(medal) & state(stun) & race = Human", "player"},
    {"!Gladiator's Medallion", "UI(medal) & {state(stun) & spell(Every Man for Himself)cooldown >= gcd & race = Human || state(stun) & !race = Human || state(fear) || state(disorient) || state(charm)}", "player"},
	
	{"!Ice Block", "area(40).enemies >= 1 & {player.health <= UI(ice_health_spin) & UI(ice_health_check) || debuff(Cauterize) & UI(cool_down) || state(stun) & spell(Every Man for Himself).cooldown >= gcd & spell(Gladiator's Medallion).cooldown >= gcd & !lastcast(Gladiator's Medallion) & UI(ice_stun)}", "player"},
    {"!Temporal Shield", "player.health <= UI(temp_shield_spin) & UI(temp_shield_check) & area(40).enemies >= 1", "player"},
	{"Dragon's Breath",	"toggle(cr) & !enemy_totem & range <= 8 & infront & !immune_all & !immune_spel & {!player.pvp || player.pvp & pvp & player} & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm)", "enemies"},
	{"Frost Nova", "toggle(cr) & !enemy_totem & range <= 8 & !immune_all & !immune_spell & {!player.pvp || player.pvp & pvp & player} & !player.lastcast(Frost Nova) & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm)", "enemies"},
	
	{"Power Word: Shield", "buff.duration < gcd & player.health <= UI(pws_spin) & UI(pws_check)", "player"}, --to do or not : to not cast when cooldowns toggle are on or you are solo
	{"Power Word: Shield", "range <= 38.5 & !buff & tank.health <= 30 & player.ingroup", "tank"},
	
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & area(40).enemies >= 1", "player"}, --Health Stone

}

local Interrupts = {

	{"!Counterspell", "range <= 38.5 & interruptAt(55)", "target"},
	{"!Dragon's Breath", "interruptAt(55) & player.spell(Counterspell).cooldown > gcd & !player.lastcast(Counterspell) & range <= 7 & infront & !immune_spell & {!player.pvp || player.pvp & pvp & player}", "enemies"},
	{"!Ring of Frost", "target.interruptAt(5) & player.spell(Counterspell).cooldown > gcd & !player.lastcast(Counterspell) & target.range < 30 & {!player.pvp || player.pvp & pvp & player} & {UI(mc) || !UI(mc) & !player.moving}", "target.ground"},

}

local Cooldowns = {

	{"Shadowfiend", "target.range <= 38.5 & target.debuff(Shadow Word: Pain) & target.debuff(Vampiric Touch)", "target"},
    {"Void Torrent", "target.range <= 38.5 & player.buff(Voidform) & target.debuff(Shadow Word: Pain) & target.debuff(Vampiric Touch) & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	
    {"Rune of Power", "target.range <= 38.5 & !player.moving & !buff(Combustion) & UI(rop)", "player"},
	{"&Combustion", "target.range <= 38.5 & UI(fire_man) & {talent(3,2) & {buff(Rune of Power) || spell(Rune of Power).charges < 1} & !player.moving || !talent(3,2)}", "player"},
	{"Meteor", "target.range <= 38.5 {!spell(Rune of Power).cooldown <= 8 || spell(Rune of Power).cooldown <= 1} & UI(mete)", "target.ground"},
    {"#trinket1", "target.range <= 38 & UI(trk1)"},
	{"#trinket2", "target.range <= 38 & UI(trk2)"},

}

local Combat = {

    {"Void Eruption", "!toggle(AoE) & !target.immune_spell & !target.immune_all & !buff(Voidform) & target.debuff(Shadow Word: Pain) & target.debuff(Vampiric Touch) & {talent(7,1) & player.insanity >= 65 || !talent(7,1) & player.insanity == 100}", "player"},
    {"Void Eruption", "toggle(AoE) & !immune_spell & !immune_all & !buff(Voidform) & {count.enemies.debuffs(Vampiric Touch) == UI(ve) || count.enemies.debuffs(Shadow Word: Pain) == UI(ve) || count.enemies.debuffs(Vampiric Touch) == count.enemies.combat || count.enemies.debuffs(Shadow Word: Pain) == count.enemies.combat} & {talent(7,1) & player.insanity >= 65 || !talent(7,1) & player.insanity == 100}", "player"},
	
	{"!Void Bolt", "range <= 38.5 & player.buff(Voidform) & player.casting(Mind Flay) & area(15).enemies <= 2 & !immune_spell & !immune_all", "target"},
	{"Void Bolt", "range <= 38.5 & player.buff(Voidform) & area(15).enemies <= 2 & !immune_spell & !immune_all", "target"},
	
	{"Mind Blast", "range <= 38.5 & !immune_spell & !immune_all & area(10).enemies <= 2 & {UI(allfacing) || !UI(allfacing) & infront} & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	
    {"Shadow Word: Death", "range <= 38.5 & !immune_spell & !immune_all & player.insanity <= 60 & health <= 35", "target"},
    {"Shadow Word: Death", "range <= 38.5 & !immune_spell & !immune_all & player.insanity <= 60 & toggle(AoE) & health <= 35 & player.spell.charges > 1", "enemies"},

	{"Vampiric Touch", "{!toggle(hig_en) || target.boss || pvp & player.pvp} & !immune_spell & !immune_all & range <= 38.5 & {!target.debuff || !target.debuff(Shadow Word: Pain)} & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	{"Vampiric Touch", "toggle(hig_en) & !target.boss & !pvp & !immune_spell & !immune_all & range <= 38.5 & !debuff & {UI(mc) || !UI(mc) & !player.moving}", "highestenemy"},
	{"Vampiric Touch", "toggle(hig_en) & !target.boss & !pvp & !immune_spell & !immune_all & range <= 38.5 & talent(6,2) & !debuff(Shadow Word: Pain) & {UI(mc) || !UI(mc) & !player.moving}", "highestenemy"},
	{"Vampiric Touch", "toggle(AoE) & !immune_spell & !immune_all & range <= 38.5 & !debuff & count.enemies.debuffs < UI(vamp) & combat & !pvp & {UI(mc) || !UI(mc) & !player.moving}", "enemies"},
	{"Vampiric Touch", "toggle(AoE) & !immune_spell & !immune_all & range <= 38.5 & !debuff & count.enemies.debuffs < UI(vamp) & player.pvp & pvp & {UI(mc) || !UI(mc) & !player.moving}", "enemies"},
	{"Vampiric Touch", "toggle(AoE) & !immune_spell & !immune_all & range <= 38.5 & talent(6,2) & !debuff(Shadow Word: Pain) & count.enemies.debuffs < UI(swp) & combat & !pvp & {UI(mc) || !UI(mc) & !player.moving}", "enemies"},
	{"Vampiric Touch", "toggle(AoE) & !immune_spell & !immune_all & range <= 38.5 & talent(6,2) & !debuff(Shadow Word: Pain) & count.enemies.debuffs < UI(swp) & player.pvp & pvp & {UI(mc) || !UI(mc) & !player.moving}", "enemies"},
	
	{"Shadow Word: Pain", "{!talent(6,2) || player.moving || debuff(Vampiric Touch)} & !immune_spell & !immune_all & {!toggle(hig_en) || target.boss || pvp & player.pvp} & range <= 38.5 & !debuff & {UI(allfacing) || !UI(allfacing) & infront}", "target"},
	{"Shadow Word: Pain", "{!talent(6,2) || player.moving || debuff(Vampiric Touch)} & !immune_spell & !immune_all & toggle(hig_en) & !target.boss & !pvp & range <= 38.5 & !debuff & combat", "highestenemy"},
	{"Shadow Word: Pain", "{!talent(6,2) || player.moving} & !immune_spell & !immune_all & toggle(AoE) & range <= 38.5 & !debuff & count.enemies.debuffs < UI(swp) & combat & !pvp", "enemies"},
	{"Shadow Word: Pain", "{!talent(6,2) || player.moving} & !immune_spell & !immune_all & toggle(AoE) & range <= 38.5 & !debuff & count.enemies.debuffs < UI(swp) & player.pvp & pvp", "enemies"},
	
	{"Mind Flay", "range <= 38.5 & !immune_spell & !immune_all", "target"},
	
	{"Flamestrike", "toggle(AoE) & !target.debuff(Dragon's Breath) & player.buff(Hot Streak!) & target.area(10).enemies >= 4 & {UI(mc) || !UI(mc) & !player.moving}", "target.ground"},
	{"Pyroblast", "{!toggle(hig_en) || target.boss || pvp & player.pvp} & range <= 38.5 & !debuff(Dragon's Breath) & player.buff(Hot Streak!) & {UI(allfacing) || !UI(allfacing) & infront}", "target"},
	{"Pyroblast", "toggle(hig_en) & !target.boss & !pvp & range <= 38.5 & !debuff(Dragon's Breath) & player.buff(Hot Streak!) & {UI(allfacing) || !UI(allfacing) & infront}", "highestenemy"},
	{"!Phoenix's Flames", "{!toggle(hig_en) || target.boss || pvp & player.pvp} & range <= 38.5 & !player.buff(Hot Streak!) & !debuff(Dragon's Breath) & !player.casting(Polymorph) & {player.buff(Heating up) || player.spell(Phoenix's Flames).charges >= 2 || player.spell(Fire Blast).charges >= 1} & {UI(allfacing) || !UI(allfacing) & infront}", "target"},
	{"!Phoenix's Flames", "toggle(hig_en) & !target.boss & !pvp & range <= 38.5 & !player.buff(Hot Streak!) & !debuff(Dragon's Breath) & !player.casting(Polymorph) & {player.buff(Heating up) || player.spell(Phoenix's Flames).charges >= 2 || player.spell(Fire Blast).charges >= 1} & {UI(allfacing) || !UI(allfacing) & infront}", "highestenemy"},
	{"&Fire Blast", "{!toggle(hig_en) || target.boss || pvp & player.pvp} & range <= 38.5 & !player.buff(Hot Streak!) & !debuff(Dragon's Breath) & !player.casting(Polymorph) & {player.buff(Heating up) || player.spell(Fire Blast).charges >= 2 || player.spell(Phoenix's Flames).charges >= 1} & {UI(allfacing) || !UI(allfacing) & infront}", "target"},
	{"&Fire Blast", "toggle(hig_en) & !target.boss & !pvp & range <= 38.5 & !player.buff(Hot Streak!) & !debuff(Dragon's Breath) & !player.casting(Polymorph) & {player.buff(Heating up) || player.spell(Fire Blast).charges >= 2 || player.spell(Phoenix's Flames).charges >= 1} & {UI(allfacing) || !UI(allfacing) & infront}", "highestenemy"},
	{"Living Bomb", "range <= 38.5 & talent(6,1) & !toggle(AoE)", "target"},
	{"Living Bomb", "range <= 38.5 & talent(6,1) & toggle(AoE)", "lowestenemy"},
	{"Fireball", "{!toggle(hig_en) || target.boss || pvp & player.pvp} & range <= 38.5 & {!player.buff(Combustion) || player.buff(Time Warp)} & {!player.buff(Hot Streak!) || target.debuff(Dragon's Breath) || target.debuff(Polymorph)} & {UI(mc) || !UI(mc) & !player.moving} & {UI(allfacing) || !UI(allfacing) & infront}", "target"},
    {"Fireball", "toggle(hig_en) & !target.boss & !pvp & range <= 38.5 & {!player.buff(Combustion) || player.buff(Time Warp)} & {!player.buff(Hot Streak!) || target.debuff(Dragon's Breath) || target.debuff(Polymorph)} & {UI(mc) || !UI(mc) & !player.moving} & {UI(allfacing) || !UI(allfacing) & infront}", "highestenemy"},
	{"Scorch", "{!toggle(hig_en) || target.boss || pvp & player.pvp} & range <= 38.5 & {!player.buff(Hot Streak!) || target.debuff(Dragon's Breath) || target.debuff(Polymorph)} & {player.moving || player.buff(Combustion) & !player.buff(Time Warp)}", "target"},
	{"Scorch", "toggle(hig_en) & !target.boss & !pvp & range <= 38.5 & {!player.buff(Hot Streak!) || target.debuff(Dragon's Breath) || target.debuff(Polymorph)} & {player.moving || player.buff(Combustion) & !player.buff(Time Warp)}", "highestenemy"},

}

local inCombat = {

    {"!/stopcasting", "casting(Unnerving Howl) & interruptAt(75)", "enemies"},
    {shadowform},
	{pvp},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & !target.immune_all & !target.immune_spell & {!target.pvp || target.pvp & player.pvp}"},
    {Survival, "player.health <= 100"},
	{Cooldowns, "toggle(cooldowns) & target.alive & target.enemy & !target.immune_all & !target.immune_spell & !target.debuff(Polymorph) & {!target.pvp || target.pvp & player.pvp}"},
    {Combat, "target.alive & target.enemy & !target.debuff(Polymorph) & {!target.pvp || target.pvp & player.pvp}"},

}

local outCombat = {	

    {shadowform},
	{pvp},
	{Keybinds},
	{PreCombat},

}

NeP.CR:Add(258, {
	name = "[|c0000BFFFKleei|r]|c0000BFFF Priest - Shadow",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})