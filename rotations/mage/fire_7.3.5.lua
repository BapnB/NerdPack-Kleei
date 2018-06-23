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

local target_list = {

    {key = "10", text = "Cursor Ground"},
	{key = "11", text = "Target Ground"},

}

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\fire.blp", width = 256, height = 256, offset = 90, y = -80, align = "center"},
	{type = "spacer"}, {type = "spacer"}, {type = "spacer"}, {type = "ruler"},

}

local GUI = {
    
	unpack(Logo_GUI),
	
	{type = "spacer"},{type = "spacer"},{type = "spacer"},{type = "spacer"},{type = "spacer"},
	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "combo", default = "6", key = "list2", list = keybind_list_2, width = 100},	
    {type = "text", text = "Use Ring of Frost:|c0000FA9A on cursor ground|r"},
	{type = "combo", default = "1", key = "list1", list = keybind_list_1, width = 100},	
	{type = "text", text = "Use Polymorph:|c0000FA9A "},
	{type = "text", text = "      |c0000FA9A on target or on focus if exist:"},	
    {type = "text", text = ""},
	{type = "combo", default = "10", key = "list4", list = target_list, width = 100},
    {type = "text", text = "Use Meteor:|c0000FA9A on:|r"},
	{type = "combo", default = "8", key = "list3", list = keybind_list_3, width = 100},	
	{type = "spacer"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

    {type = "header", size = 16,  text = "PVP", align = "center"},
    {type = "checkbox",	text = "Burst: |c0000FA9A Burst PVP enemy|r", align = "left", key = "burst_key", default = true},
    {type = "checkbox",	text = "Spellsteal: |c0000FA9A steal good buffs enemies around|r", align = "left", key = "st_buff", default = true},
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
	{type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkbox", text = "Use Ice Block:|c0000FA9A then you are stuned and all in CD", key = "ice_stun", default = false},
	{type = "checkbox", text = "Use Ice Block:|c0000FA9A debuff Cauterize is up", key = "cool_down", default = true},
	{type = "checkspin", text = "Use Ice Block:", key = "ice_health", check = true, spin = 10, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Temporal Shield:", key = "temp_shield", check = true, spin = 70, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 30, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Mana Pudding:", key = "pudding_key", check = true, spin = 75, width = 100, step = 5, max = 100, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "AoE Toggle", align = "center"},
	{type = "checkspin", text = "Flamestrike:|c0000FA9A target enemies nearby >=", key = "flstrike_aoe", check = true, spin = 4, width = 100, step = 1, max = 10, min = 1},
	{type = "checkspin", text = "Meteor:|c0000FA9A target enemies nearby >=", key = "mete_aoe", check = true, spin = 5, width = 100, step = 1, max = 10, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},
	{type = "text", text = "Use Time Warp|c0000FA9A if toggle is on|r"},
	{type = "checkbox", text = "Use Rune of Power|c0000FA9A you can disable|r", key = "rop", default = true},
	{type = "checkbox", text = "Use Combustion|c0000FA9A you can disable|r", key = "fire_man", default = true},
	{type = "checkbox", text = "Use Meteor|c0000FA9A you can disable|r", key = "mete", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Trinkets", align = "center"},
	{type = "text", text = "|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r", align = "center"},
	{type = "checkbox", text = "Trinket #1", key = "trk1",	default = false},
	{type = "checkbox", text = "Trinket #2", key = "trk2",   default = false},
	{type = "text", text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

}

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A --- |r|c0000BFFF Mage - Fire |r|c00FF0000 for Advanced Unlocker|r")
	print("|c0000FA9A ------------------------PVP-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/3 - 4/2 - 5/3 - 6/2 - 7/3")
	print("|c0000FA9A --- |rHonor Talents: 1/1 - 2/1 - 3/1 - 4/1 - 5/3 - 6/2")
    print("|c0000FA9A")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/2 - 4/2 - 5/3 - 6/2 - 7/3")
	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

	NeP.Interface:AddToggle({key = "tw", name = "Time Warp", text = "use Time Warp", icon = "Interface\\Icons\\ability_mage_timewarp"})
	NeP.Interface:AddToggle({key = "cr", name = "Auto Control", text = "Automatically use Frost Nova & Dragon's Breath.", icon = "Interface\\Icons\\spell_frost_frostnova"})
	NeP.Interface:AddToggle({key = "hig_en", name = "Attack Highest Health Enemies", text = "Works great in dungeons.", icon = "Interface\\Icons\\achievement_boss_guarm"})
	
end

local pvp = {
	
    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & target.player & target.canAttack & {player.state(stun) & player.spell(Every Man for Himself)cooldown > 0 & player.race = Human || player.state(stun) & !player.race = Human || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
	
	{"!Ring of Frost", "player.moving & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "cursor.ground"},
	
	{"Spellsteal", "inRange.spell & UI(st_buff) & {player.mana >= 25 || player.buff(Innervate)}", "enemystbuff"},

}

local Keybinds = {

    {"Polymorph", "inRange.spell & canAttack & alive & enemy & !player.moving & !immune_all & !immune_spell & debuff(Polymorph).duration <= 2 & !player.lastcast & !focus.exists & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
    {"Polymorph", "inRange.spell & canAttack & alive & enemy & !player.moving & !immune_all & !immune_spell & debuff(Polymorph).duration <= 2 & !player.lastcast & focus.exists & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "focus"},
	{"Meteor", "UI(list4)==11 & target.canAttack & target.alive & target.enemy & player.combat & target.range <= 38.5 & !target.immune_all & !target.immune_spell & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target.ground"},
	{"Meteor", "UI(list4)==10 & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "cursor.ground"},
	
}

local PreCombat = { 

	{"Blazing Barrier", "buff(Blazing Barrier).duration <= 5", "player"},
	{"Fireball", "inRange.spell & canAttack & alive & enemy & !immune_all & !immune_spell & infront & !player.moving", "target"},

    {"Conjure Refreshment", "item(80610).count < 1 & !player.moving"},
	{"#80610", "item(80610).count >= 1 & !player.buff(Refreshment) & !player.moving & player.health <= UI(pudding_key_spin) & UI(pudding_key_check)"},

}

local Survival = {

	{"!Ice Block", "area(40).enemies >= 1 & {player.health <= UI(ice_health_spin) & UI(ice_health_check) || player.debuff(Cauterize) & UI(cool_down) || player.state(stun) & player.spell(Every Man for Himself).cooldown > 0 & player.spell(Gladiator's Medallion).cooldown > 0 & !player.lastcast(Gladiator's Medallion) & UI(ice_stun)}", "player"},
    {"!Temporal Shield", "player.health <= UI(temp_shield_spin) & UI(temp_shield_check) & area(40).enemies >= 1 & player.incdmg(3) >= player.health.max*0.03", "player"},
	
	{"Dragon's Breath",	"toggle(cr) & canAttack & !enemy_totem & fixRange <= 8 & infront & !immune_all & !immune_spell & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & !pvp.area", "enemies"},
	{"Dragon's Breath",	"toggle(cr) & canAttack & !enemy_totem & fixRange <= 8 & infront & !immune_all & !immune_spell & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & player & pvp.area", "enemies"},
	
	{"Frost Nova", "toggle(cr) & canAttack & !enemy_totem & fixRange <= 8 & !immune_all & !immune_spell & !player.lastcast(Frost Nova) & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & !pvp.area", "enemies"},
	{"Frost Nova", "toggle(cr) & canAttack & !enemy_totem & fixRange <= 8 & !immune_all & !immune_spell & !player.lastcast(Frost Nova) & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & player & pvp.area", "enemies"},

	{"Blazing Barrier", "!buff(Ice Block) & buff(Blazing Barrier).duration < 3 & {!player.buff(Rune of Power) & !player.buff(Combustion) || target.player & target.canAttack}", "player"},
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & area(40).enemies >= 1", "player"}, --Health Stone

}

local Interrupts = {

	{"!Counterspell", "inRange.spell & canAttack & interruptAt(65)", "target"},

	{"!Dragon's Breath", "interruptAt(55) & canAttack & fixRange <= 8 & infront & player.spell(Counterspell).cooldown > 0 & !player.lastcast(Counterspell)", "target"},

}

local Cooldowns = {

	{"&Time Warp", "target.inRange(Pyroblast).spell & toggle(tw) & !player.debuff(Temporal Displacement)"},
    {"Rune of Power", "target.inRange(Pyroblast).spell & !player.moving & !buff(Combustion) & UI(rop)", "player"},
	{"&Combustion", "target.inRange(Pyroblast).spell & UI(fire_man) & {talent(3,2) & {player.buff(Rune of Power) || player.spell(Rune of Power).charges < 1} || !talent(3,2)}", "player"},
	{"Meteor", "target.inRange(Pyroblast).spell & target.canAttack & !target.moving & !target.player & {!player.spell(Rune of Power).cooldown <= 8 & talent(3,2) || !talent(3,2)}  & UI(mete)", "target.ground"},
    {"#trinket1", "target.inRange(Pyroblast).spell & UI(trk1)"},
	{"#trinket2", "target.inRange(Pyroblast).spell & UI(trk2)"},

}

local Combat = {

	{"Meteor", "toggle(AoE) & inRange(Pyroblast).spell & !player & !moving & rangebetween(target) <= 15 & area(8).enemies >= UI(mete_aoe_spin) & UI(mete_aoe_check)", "mostenemies.ground"},
	{"Meteor", "inRange(Pyroblast).spell & target.canAttack & target.player & {target.state(root) || target.state(stun) || target.state(disorient) || target.state(incapacitate)}", "target.ground"},

	{"Flamestrike", "toggle(AoE) & inRange(Pyroblast).spell & spell(Flamestrike).casttime==0 & rangebetween(target) <= 15 & area(8).enemies >= UI(flstrike_aoe_spin) & UI(flstrike_aoe_spin)", "mostenemies.ground"},
	{"!Flamestrike", "toggle(AoE) & inRange(Pyroblast).spell & spell(Flamestrike).casttime==0 & rangebetween(target) <= 15 & area(8).enemies >= UI(flstrike_aoe_spin) & UI(flstrike_aoe_spin) & player.buff(Hot Streak!).duration <= 3", "mostenemies.ground"},

	{"!Pyroblast", "{!toggle(hig_en) || target.boss || target.player} & inRange.spell & canAttack & infront & spell(Pyroblast).casttime==0 & {player.buff(Combustion) || player.buff(Rune of Power) || player.buff(Hot Streak!).duration <= 3}", "target"},
	{"!Pyroblast", "toggle(hig_en) & !target.player & inRange.spell & spell(Pyroblast).casttime==0 & {player.buff(Combustion) || player.buff(Rune of Power) || player.buff(Hot Streak!).duration <= 3}", "highestenemy"},

	{"Pyroblast", "{!toggle(hig_en) || target.boss || target.player} & inRange.spell & canAttack & infront & spell(Pyroblast).casttime==0 & !debuff(Dragon's Breath)", "target"},
	{"Pyroblast", "toggle(hig_en) & !target.player & inRange.spell & !debuff(Dragon's Breath) & spell(Pyroblast).casttime==0", "highestenemy"},

	{"!Phoenix's Flames", "{!toggle(hig_en) || target.boss || target.player} & inRange.spell & canAttack & infront & !spell(Pyroblast).casttime==0 & !debuff(Dragon's Breath) & !player.casting(Polymorph) & {player.buff(Heating up) || player.spell(Phoenix's Flames).charges >= 2 || player.spell(Fire Blast).charges >= 1}", "target"},
	{"!Phoenix's Flames", "toggle(hig_en) & !target.player & inRange.spell & !spell(Pyroblast).casttime==0 & !debuff(Dragon's Breath) & !player.casting(Polymorph) & {player.buff(Heating up) || player.spell(Phoenix's Flames).charges >= 2 || player.spell(Fire Blast).charges >= 1}", "highestenemy"},

	{"&Fire Blast", "{!toggle(hig_en) || target.boss || target.player} & inRange.spell & canAttack & infront & !spell(Pyroblast).casttime==0 & !debuff(Dragon's Breath) & !player.casting(Polymorph) & {player.buff(Heating up) || player.spell(Fire Blast).charges >= 2 || player.spell(Phoenix's Flames).charges >= 1}", "target"},
	{"&Fire Blast", "toggle(hig_en) & !target.player & inRange.spell & !spell(Pyroblast).casttime==0 & !debuff(Dragon's Breath) & !player.casting(Polymorph) & {player.buff(Heating up) || player.spell(Fire Blast).charges >= 2 || player.spell(Phoenix's Flames).charges >= 1}", "highestenemy"},

	{"Living Bomb", "inRange.spell & canAttack & talent(6,1) & !toggle(AoE)", "target"},
	{"Living Bomb", "inRange.spell & canAttack & talent(6,1) & toggle(AoE)", "lowestenemy"},

	{"Fireball", "{!toggle(hig_en) || target.boss || target.player} & inRange.spell & canAttack & infront & !player.moving & {!player.buff(Combustion) || player.buff(Time Warp)} & {!spell(Pyroblast).casttime==0 || target.debuff(Dragon's Breath) || target.debuff(Polymorph)}", "target"},
    {"Fireball", "toggle(hig_en) & !target.player & inRange.spell & !player.moving & {!player.buff(Combustion) || player.buff(Time Warp) || hashero} & {!spell(Pyroblast).casttime==0 || target.debuff(Dragon's Breath) || target.debuff(Polymorph)}", "highestenemy"},
	{"Fireball", "inRange.spell & canAttack & infront & !player.moving & {!player.buff(Combustion) || player.buff(Time Warp)} & {!spell(Pyroblast).casttime==0 || target.debuff(Dragon's Breath) || target.debuff(Polymorph)}", "target"},

	{"Scorch", "{!toggle(hig_en) || target.boss || target.player} & inRange.spell & canAttack & infront & {player.moving || player.buff(Combustion) & !player.buff(Time Warp)}", "target"},
	{"Scorch", "toggle(hig_en) & !target.player & inRange.spell & {player.moving || player.buff(Combustion) & !player.buff(Time Warp)}", "highestenemy"},

}

local inCombat = {

	{pvp, "!player.buff(Invisibility)"},
	{Keybinds},
	{"Slow Fall", "falling.duration >= 1.3 & !player.buff(Slow Fall)"},
	{Interrupts, "toggle(interrupts) & !target.casting(Vengeful Wail) & !target.casting(Runic Empowerment) & !player.buff(Invisibility) & !target.immune_spell & !target.immune_all"},
    {Survival, "player.health <= 100 & !player.buff(Invisibility)"},
	{"!/stopattack", "target.immune_all || target.immune_spell || player.buff(Invisibility) || target.debuff(Polymorph)"},
	{Cooldowns, "toggle(cooldowns) & target.alive & target.enemy & !player.casting(Rune of Power)"},
    {Combat, "target.alive & target.enemy & !player.casting(Rune of Power)"},

}

local outCombat = {

	{pvp, "!player.buff(Invisibility)"},
	{Keybinds},
	{"Slow Fall", "falling.duration >= 1.3 & !player.buff(Slow Fall)"},
	{"!/stopattack", "target.immune_all || target.immune_spell || player.buff(Invisibility) || target.debuff(Polymorph)"},
	{Combat, "UI(burst_key) & target.player & target.canAttack & target.alive & target.enemy & !player.casting(Rune of Power) & !target.immune_all & !target.immune_spell & !player.buff(Invisibility) & !target.debuff(Polymorph)"},
	{PreCombat, "!player.buff(Invisibility)"},

}

NeP.CR:Add(63, {
	name = "[|c0000BFFFKleei|r]|c0000BFFF Mage - Fire [7.3.5]",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.3.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})