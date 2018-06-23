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
    {type = "checkbox",	text = "Use Mind Bomb: |c0000FA9A |r", align = "left", key = "mbomb", default = true},
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
	{type = "checkbox", text = "Power Word: Shield|c0000FA9A (talent 2/2) for moving speed", key = "pws_mov", default = true},
	{type = "checkspin", text = "Power Word: Shield|c0000FA9A PVE when HP <=", key = "pws", check = true, spin = 40, width = 100, step = 5, max = 95, min = 1},
	--{type = "text", text = "|c0000FA9A allways when you are flagged PVP in combat, never now when you'll be attacked by other players|r"},
	{type = "checkbox", text = "Dispersion:|c0000FA9A when no escape", key = "disp_stun", default = false},
	{type = "checkspin", text = "Dispersion:|c0000FA9A when HP <=", key = "disp_health", check = true, spin = 20, width = 100, step = 5, max = 95, min = 1},
	--{type = "checkspin", text = "Temporal Shield:", key = "temp_shield", check = true, spin = 70, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 30, width = 100, step = 5, max = 95, min = 1},
	{type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16, text = "AoE", align = "center"},
	{type = "spinner", text = "Use Shadow Word: Pain|c0000FA9A on enemies", key = "swp", default = 5, width = 100, step = 1, max = 15, min = 1},
	{type = "spinner", text = "Use Vampiric Touch|c0000FA9A on enemies", key = "vamp", default = 5, width = 100, step = 1, max = 15, min = 1},
	{type = "spinner", text = "Use Void Eruption:|c0000FA9A", key = "ve", default = 5, width = 100, step = 1, max = 15, min = 1},
	{type = "text", text = "|c0000FA9A On enemies afected [Shadow Word: Pain]|r"},
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
	print("|c0000FA9A --- |r|c0000BFFF Priest - Shadow |r|c00FF0000 for Advanced Unlocker|r")
	print("|c0000FA9A ------------------------PVP-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: Coming soon")
    print("|c0000FA9A")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/2 - 3/1 - 4/2 - 5/1 - 6/2 - 7/1")
	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

	NeP.Interface:AddToggle({key = "hig_en", name = "Attack Highest Health Enemies", text = "Works great in dungeons.", icon = "Interface\\Icons\\achievement_boss_guarm"})

end

local shadowform = {

    {"Shadowform", "!buff(Voidform) & !buff(Shadowform)", "player"},
	
}

local pvp = {

    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & target.pvp & player.pvp & {player.state(stun) & player.spell(Every Man for Himself)cooldown >= gcd & player.race = Human || player.state(stun) & !player.race = Human || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Keybinds = {

    {"Mind Bomb", "!immune_all & !immune_spell & alive & enemy & range <= 27.5 & {!target.pvp || target.pvp & player.pvp} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"}, -- & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm)
	
	{"Shadow Mend", "health <= 90 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "player"},

}

local PreCombat = { 

	{"Power Word: Shield", "{!player.buff(Power Word: Shield) & target.enemy & target.alive || !player.buff(Body and Soul) & player.movingfor >= 0.5 & talent(2,2) & UI(pws_mov) || !player.buff(Power Word: Shield) & player.area(20).enemies >= 1}", "player"},
	{"Mind Bomb", "talent(3,1) & !target.boss & !target.isdummy & range <= 27.5 & UI(mbomb) & enemy & alive & {!target.pvp || target.pvp & player.pvp}", "target"},
	{"Mind Blast", "range <= 38.5 & alive & enemy & !immune_all & !immune_spell & {!target.pvp || target.pvp & player.pvp} & {UI(allfacing) || !UI(allfacing) & infront} & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	{"Vampiric Touch", "range <= 38.5 & alive & enemy & !immune_all & !immune_spell & !player.lastcast & !buff & player.spell(Mind Blast).cooldown > 0 & {!target.pvp || target.pvp & player.pvp} & {UI(mc) || !UI(mc) & !player.moving}", "target"},

}

local Survival = {

	{"!Dispersion", "area(45).enemies >= 1 & {player.health <= UI(disp_health_spin) & UI(disp_health_check) || player.state(stun) & player.spell(Every Man for Himself).cooldown >= gcd & player.spell(Gladiator's Medallion).cooldown >= gcd & !player.lastcast(Gladiator's Medallion) & UI(disp_stun)}", "player"},

	{"Power Word: Shield", "buff.duration < gcd & player.health <= UI(pws_spin) & UI(pws_check)", "player"}, --to do or not : to not cast when cooldowns toggle are on or you are solo
	{"Power Word: Shield", "range <= 38.5 & !buff & tank.health <= 30 & player.ingroup", "tank"},
	
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & area(40).enemies >= 1", "player"}, --Health Stone

}

local Interrupts = {

	{"!Silence", "range <= 38.5 & !player.casting(Void Torrent) & interruptAt(55)", "target"},

}

local Cooldowns = {

    {"Power Infusion", "target.range <= 38.5 & target.debuff(Shadow Word: Pain)"},
	{"Shadowfiend", "target.range <= 38.5 & target.debuff(Shadow Word: Pain) & target.debuff(Vampiric Touch)", "target"},
    {"Void Torrent", "target.range <= 38.5 & player.buff(Voidform) & target.debuff(Shadow Word: Pain) & target.debuff(Vampiric Touch) & {UI(mc) || !UI(mc) & !player.moving}", "target"},

    {"#trinket1", "target.range <= 38 & UI(trk1)"},
	{"#trinket2", "target.range <= 38 & UI(trk2)"},

}

local Combat = {

	{"!Mind Bomb", "talent(3,1) & player.casting(Mind Flay) & !target.boss & !target.isdummy & range <= 27.5 & UI(mbomb) & enemy & alive & {!target.pvp || target.pvp & player.pvp}", "target"},
	{"Mind Bomb", "talent(3,1) & !target.boss & !target.isdummy & range <= 27.5 & UI(mbomb) & enemy & alive & {!target.pvp || target.pvp & player.pvp}", "target"},

    {"!Void Eruption", "!toggle(AoE) & deathin >= 10 & player.casting(Mind Flay) & !target.immune_spell & !target.immune_all & !player.buff(Voidform) & target.debuff(Shadow Word: Pain) & target.debuff(Vampiric Touch) & {talent(7,1) & player.insanity >= 65 || !talent(7,1) & player.insanity == 100}", "player"},
    {"!Void Eruption", "toggle(AoE) & deathin >= 10 & player.casting(Mind Flay) & !immune_spell & !immune_all & !player.buff(Voidform) & {count.enemies.debuffs(Shadow Word: Pain) >= UI(ve) || count.enemies.debuffs(Shadow Word: Pain) == count.enemies.combat} & {talent(7,1) & player.insanity >= 65 || !talent(7,1) & player.insanity == 100}", "player"},
    {"Void Eruption", "!toggle(AoE) & deathin >= 10 & !target.immune_spell & !target.immune_all & !player.buff(Voidform) & target.debuff(Shadow Word: Pain) & target.debuff(Vampiric Touch) & {talent(7,1) & player.insanity >= 65 || !talent(7,1) & player.insanity == 100}", "player"},
    {"Void Eruption", "toggle(AoE) & deathin >= 10 & !immune_spell & !immune_all & !player.buff(Voidform) & {count.enemies.debuffs(Shadow Word: Pain) >= UI(ve) || count.enemies.debuffs(Shadow Word: Pain) == count.enemies.combat} & {talent(7,1) & player.insanity >= 65 || !talent(7,1) & player.insanity == 100}", "player"},
	
	{"!Void Bolt", "range <= 38.5 & player.buff(Voidform) & player.casting(Mind Flay) & area(15).enemies <= 5 & !immune_spell & !immune_all & {UI(allfacing) || !UI(allfacing) & infront}", "target"},
	{"Void Bolt", "range <= 38.5 & player.buff(Voidform) & area(15).enemies <= 5 & !immune_spell & !immune_all & {UI(allfacing) || !UI(allfacing) & infront}", "target"},
	
	{"Mind Blast", "range <= 38.5 & !immune_spell & !immune_all & area(10).enemies <= 2 & {UI(allfacing) || !UI(allfacing) & infront} & {UI(mc) || !UI(mc) & !player.moving}", "target"},

    {"!Shadow Word: Death", "range <= 38.5 & player.casting(Mind Flay) & !immune_spell & !immune_all & health <= 34", "target"},
    {"!Shadow Word: Death", "range <= 38.5 & player.casting(Mind Flay) & !immune_spell & !immune_all & toggle(AoE) & health <= 34 & combat & player.spell.charges > 1", "enemies"},  --& player.insanity <= 60
    {"Shadow Word: Death", "range <= 38.5 & !immune_spell & !immune_all & health <= 34", "target"},
    {"Shadow Word: Death", "range <= 38.5 & !immune_spell & !immune_all & toggle(AoE) & health <= 34 & combat & player.spell.charges > 1", "enemies"},  --& player.insanity <= 60

	{"Vampiric Touch", "{!toggle(hig_en) || target.boss || pvp & player.pvp} & deathin >= 3 & !immune_spell & !immune_all & range <= 38.5 & !player.lastcast(Vampiric Touch) & !target.debuff(Vampiric Touch) & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	{"Vampiric Touch", "toggle(hig_en) & !target.boss & !pvp & deathin >= 3 & !immune_spell & !immune_all & range <= 38.5 & !player.lastcast(Vampiric Touch) & !player.casting(Vampiric Touch) & !debuff(Vampiric Touch) & {UI(mc) || !UI(mc) & !player.moving}", "highestenemy"},
	{"Vampiric Touch", "toggle(AoE) & deathin >= 3 & !immune_spell & !immune_all & range <= 38.5 & !player.lastcast(Vampiric Touch) & !debuff(Vampiric Touch) & count.enemies.debuffs(Vampiric Touch) < UI(vamp) & combat & !pvp & {UI(mc) || !UI(mc) & !player.moving}", "enemies"},
	{"Vampiric Touch", "toggle(AoE) & deathin >= 3 & !immune_spell & !immune_all & range <= 38.5 & !player.lastcast(Vampiric Touch) & !debuff(Vampiric Touch) & count.enemies.debuffs(Vampiric Touch) < UI(vamp) & player.pvp & pvp & {UI(mc) || !UI(mc) & !player.moving}", "enemies"},
	
	{"Shadow Word: Pain", "!immune_spell & !immune_all & {!toggle(hig_en) || target.boss || pvp & player.pvp} & range <= 38.5 & !debuff(Shadow Word: Pain)", "target"},
	{"Shadow Word: Pain", "!immune_spell & !immune_all & toggle(hig_en) & !target.boss & !pvp & range <= 38.5 & !debuff(Shadow Word: Pain) & combat", "highestenemy"},
	{"Shadow Word: Pain", "toggle(AoE) & !immune_spell & !immune_all & range <= 38.5 & !debuff(Shadow Word: Pain) & count.enemies.debuffs(Shadow Word: Pain) < UI(swp) & combat & !pvp", "enemies"},
	{"Shadow Word: Pain", "toggle(AoE) & !immune_spell & !immune_all & range <= 38.5 & !debuff(Shadow Word: Pain) & count.enemies.debuffs(Shadow Word: Pain) < UI(swp) & player.pvp & pvp", "enemies"},
	
	{"Mind Flay", "range <= 38.5 & !immune_spell & !immune_all & infront", "target"},

}

local inCombat = {

    {"!/stopcasting", "casting(Unnerving Howl) & interruptAt(75)", "enemies"},
    {shadowform},
	{pvp},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & !target.immune_all & !target.immune_spell & {!target.pvp || target.pvp & player.pvp}"},
    {Survival, "player.health <= 100"},
	{Cooldowns, "toggle(cooldowns) & target.alive & target.enemy & !target.immune_all & !target.immune_spell & {!target.pvp || target.pvp & player.pvp}"},
    {Combat, "target.alive & target.enemy & {!target.pvp || target.pvp & player.pvp}"},

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