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

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\fire.blp', width = 256, height = 256, offset = 90, y = -75, align = 'center'},
	{type = 'spacer'}, {type = 'spacer'}, {type = 'spacer'}, {type = 'ruler'},

}

local GUI = {
    
	unpack(Logo_GUI),
	
	{type = "spacer"},{type = "spacer"},{type = "spacer"},{type = "spacer"},{type = "spacer"},{type = "spacer"},{type = "spacer"},
	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "spacer"},
	{type = "combo", default = "3", key = "list1", list = keybind_list_1, width = 100},	
	{type = "text", text = "Use Polymorph:|c0000FA9A "},
	{type = "text", text = "      |c0000FA9A on target or on focus if exist:"},	
	{type = "combo", default = "5", key = "list2", list = keybind_list_2, width = 100},	
    {type = "text", text = "Use Spellsteal:|c0000FA9A on target|r"},
	{type = "combo", default = "7", key = "list3", list = keybind_list_3, width = 100},		
    {type = "text", text = "Use Meteor:|c0000FA9A on target ground|r"},
	{type = "spacer"}, {type = "ruler"},
	
    {type = "header", size = 16,  text = "PVP", align = "center"},
    --{type = "checkbox",	text = "Polymorph: |c0000FA9A when player area enemies up to 3 (test)|r", align = "left", key = "poly", default = false},
    --{type = "checkbox",	text = "Spellsteal: |c0000FA9A Spellsteal good buffs enemies around (test)|r", align = "left", key = "st_buff", default = false},
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
	{type = "checkbox", text = "Use Ice Block:|c0000FA9A then you are stuned and all in CD", key = "ice_stun", default = true},
	{type = "checkbox", text = "Use Ice Block:|c0000FA9A debuff Cauterize is up", key = "cool_down", default = true},
	{type = "checkspin", text = "Use Ice Block:", key = "ice_health", check = true, spin = 20, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Temporal Shield:", key = "temp_shield", check = true, spin = 50, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 100, step = 5, max = 95, min = 1},
	{type = "spacer"}, {type = "ruler"},

	{type = 'header', size = 16, text = 'EWT cheat', align = 'center'},
    {type = 'checkbox',	text = "Always-Facing:|c0000FA9A if you use it check the box|r", align = 'left', key = 'allfacing', default = false},
    {type = 'checkbox',	text = "Moving-Cast:|c0000FA9A if you use it check the box and it will cast when moving|r", align = 'left', key = 'mc', default = false},
	{type = "spacer"}, {type = "ruler"},

    {type = "text", text = "Cooldowns Toggle:"},
	{type = "text", text = "|c0087CEFA All if target will die in more than 10 sec|r", align = "center"}, 
    {type = "text", text = "Time Warp|c0000FA9A |r"},
    {type = "text", text = "Combustion|c0000FA9A |r"},
    {type = "text", text = "Meteor|c0000FA9A |r"},	
    {type = "spacer"}, {type = "ruler"},

}

local exeOnLoad = function()

	print('|c0000BFFF --- |r|c0000BFFF Mage - Fire |r')

	print('|c0000BFFF ------------------------PVE-------------------------------------------|r')
	print('|c0000BFFF --- |rRecommended Talents: Coming Soon')
	print('|c0000BFFF ----------------------------------------------------------------------|r')
	
	NeP.Interface:AddToggle({
		key = 'tw',
		name = 'Time Warp',
		text = 'Automatically use Time Warp.',
		icon = 'Interface\\Icons\\ability_mage_timewarp',
	})
	
	NeP.Interface:AddToggle({
		key = "cr",
		name = "Auto Control",
		text = "Automatically use Frost Nova & Dragon's Breath.",
		icon = "Interface\\Icons\\spell_frost_frostnova",
	})
	
	NeP.Interface:AddToggle({
		key = "steal_tog",
		name = "Auto Spellsteal",
		text = "Auto use Spellsteal when Must Have buffs comes up on enemies around.",
		icon = "Interface\\Icons\\spell_arcane_arcane02",
	})

end

local pvp = {

	--{"Polymorph", "!immune_all & alive & enemy & combat & !count.enemies.debuffs(Polymorph) >= 1 & !player.lastcast(Polymorph) & pvp & !is(target) & player.area(28).enemies <= 3 & player.area(28).enemies >= 1 & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & UI(poly) & {UI(mc) || !UI(mc) & !player.moving}", "enemies"},
	{"Spellsteal", "!immune_all & alive & enemy & range <= 38 & steal_buff & toggle(steal_tog) & {player.mana >= 25 || player.buff(Innervate)}", "enemies"},  --& !player.the_steal & UI(st_buff) 

}

local Keybinds = {

    {"Polymorph", "!immune_all & alive & enemy & debuff(Polymorph).duration <= 2 & !player.lastcast & range <= 27 & !focus.exists & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & {UI(mc) || !UI(mc) & !player.moving}", "target"},
    {"Polymorph", "!immune_all & alive & enemy & debuff(Polymorph).duration <= 2 & !player.lastcast & range <= 27 & focus.exists & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & {UI(mc) || !UI(mc) & !player.moving}", "focus"},
	{"Spellsteal", "!immune_all & alive & enemy & range <= 38 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Meteor", "target.alive & target.enemy & player.combat & target.range <= 35 & !target.immune_all & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target.ground"},	

}

local PreCombat = { 

	{"Blazing Barrier", "!buff(Blazing Barrier)", "player"},
	{"Fireball", "range <= 38.5 & alive & enemy & !immune_all & {!target.pvp || target.pvp & player.pvp} & {UI(allfacing) || !UI(allfacing) & infront} & {UI(mc) || !UI(mc) & !player.moving}", "target"},

}

local Survival = {

    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},
	{"!Gladiator's Medallion", "UI(medal) & target.pvp & player.pvp & {state(stun) & spell(Every Man for Himself).cooldown >= gcd || state(fear) || state(disorient) || state(charm)}", "player"},
	{"!Ice Block", "player.health <= UI(ice_health_spin) & UI(ice_health_check) || debuff(Cauterize) & UI(cool_down) || state(stun) & !lastcast(Blink) & !lastcast(Gladiator's Medallion) & UI(ice_stun)", "player"},
    {"!Temporal Shield", "player.health <= UI(temp_shield_spin) & UI(temp_shield_check) & combat & area(40).enemies >= 1", "player"},
	{"Dragon's Breath",	"toggle(cr) & range <= 8 & infront & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm)", "enemies"},
	{"Frost Nova", "toggle(cr) & range <= 8 & !player.lastcast(Frost Nova) & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm)", "enemies"},
	{"Blazing Barrier", "buff(Blazing Barrier).duration < gcd", "player"},
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & combat", "player"}, --Health Stone

}

local Interrupts = {

	{"!Counterspell", "range <= 38.5 & interruptAt(55)", "target"},
	{"!Dragon's Breath", "interruptAt(55) & player.spell(Counterspell).cooldown > gcd & !player.lastcast(Counterspell) & range <= 7 & infront", "enemies"},
	{"!Ring of Frost", "target.interruptAt(5) & player.spell(Counterspell).cooldown > gcd & !player.lastcast(Counterspell) & range < 30 & {UI(mc) || !UI(mc) & !player.moving}", "target.ground"},

}

local Cooldowns = {

	{"Time Warp", "toggle(tw) & target.range <= 38 & target.deathin >= 10"},
	{"Combustion", "spell(Phoenix's Flames).charges < 1 & spell(Fire Blast).charges < 1 & target.range <= 35 & target.deathin >= 10", "player"},
	{"Meteor", "!player.buff(Heating up) & target.range <= 38 & target.deathin >= 10", "target.ground"},
    {"#trinket1", "UI(trk1) & target.range <= 38 & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.range <= 38 & target.deathin >= 10"},

}

local Combat = {

	{"Meteor", "target.range <= 38 & !player.buff(Heating up) & {toggle(AoE) & target.area(8).enemies >= 3 || {target.state(root) & target.state(stun) & target.state(fear) & target.state(disorient) & target.state(incapacitate)}}", "target.ground"},
    {"Flamestrike", "toggle(AoE) & !target.debuff(Dragon's Breath) & player.buff(Hot Streak!) & target.area(10).enemies >= 5 & {UI(mc) || !UI(mc) & !player.moving}", "target.ground"},
	{"Pyroblast", "range <= 38 & !debuff(Dragon's Breath) & player.buff(Hot Streak!) & {UI(allfacing) || !UI(allfacing) & infront}", "target"},
	{"!Phoenix's Flames", "range <= 38 & !player.buff(Hot Streak!) & !debuff(Dragon's Breath) & !player.casting(Polymorph) & {player.buff(Heating up) || player.spell(Phoenix's Flames).charges >= 2 || player.spell(Fire Blast).charges >= 1} & {UI(allfacing) || !UI(allfacing) & infront}", "target"},
	{"!Fire Blast", "range <= 38 & !player.buff(Hot Streak!) & !debuff(Dragon's Breath) & !player.casting(Polymorph) & {player.buff(Heating up) || player.spell(Fire Blast).charges >= 2 || player.spell(Phoenix's Flames).charges >= 1} & {UI(allfacing) || !UI(allfacing) & infront}", "target"},
	{"Living Bomb", "range <= 38 & talent(6,1)", "target"},
	{"Fireball", "range <= 38 & {!player.buff(Hot Streak!) || target.debuff(Dragon's Breath) || target.debuff(Polymorph)} & {UI(mc) || !UI(mc) & !player.moving} & {UI(allfacing) || !UI(allfacing) & infront}", "target"},
	{"Scorch", "player.moving & !player.buff(Hot Streak!)", "target"},

}

local inCombat = {

	{pvp, "!player.buff(Invisibility)"},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & !immune_all & !player.buff(Invisibility) & {!target.pvp || target.pvp & player.pvp}"},
    {Survival, "player.health <= 100 & !player.buff(Invisibility)"},
	{Cooldowns, "toggle(cooldowns) & !immune_all & !player.buff(Invisibility)"},
    {Combat, "target.alive & !immune_all & target.enemy & !player.buff(Invisibility) & {!target.pvp || target.pvp & player.pvp}"},

}

local outCombat = {	

	{pvp, "!player.buff(Invisibility)"},
	{Keybinds},
	{PreCombat, "!player.buff(Invisibility)"},

}

NeP.CR:Add(63, {
	name = '[|c0000BFFFKleei|r]|c0000BFFF Mage - Fire',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})