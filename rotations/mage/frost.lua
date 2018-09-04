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
	--[[{type = "combo", default = "6", key = "list2", list = keybind_list_2, width = 100},	
    {type = "text", text = "Use Ring of Frost:|c0000FA9A on cursor ground|r"},
	{type = "combo", default = "1", key = "list1", list = keybind_list_1, width = 100},	
	{type = "text", text = "Use Polymorph:|c0000FA9A "},
	{type = "text", text = "      |c0000FA9A on target or on focus if exist:"},	
    {type = "text", text = ""},
	{type = "combo", default = "10", key = "list4", list = target_list, width = 100},
    {type = "text", text = "Use Meteor:|c0000FA9A on:|r"},
	{type = "combo", default = "8", key = "list3", list = keybind_list_3, width = 100},	
	{type = "spacer"},{type = "text", text = ""},{type = "text", text = ""},{type = "ruler"},

    {type = "header", size = 16,  text = "PVP", align = "center"},
    {type = "checkbox",	text = "Burst: |c0000FA9A Burst PVP enemy|r", align = "left", key = "burst_key", default = true},
    {type = "checkbox",	text = "Spellsteal: |c0000FA9A steal good buffs enemies around|r", align = "left", key = "st_buff", default = true},
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
	{type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkbox", text = "Use Ice Block:|c0000FA9A then you are stuned and all in CD", key = "ice_stun", default = false},
	{type = "checkbox", text = "Use Ice Block:|c0000FA9A debuff Cauterize is up", key = "cool_down", default = true},
	{type = "checkspin", text = "Use Ice Block:", key = "ice_health", check = true, spin = 10, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Temporal Shield:", key = "temp_shield", check = true, spin = 70, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 30, width = 100, step = 5, max = 95, min = 1},
	{type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16, text = "AoE Toggle", align = "center"},
	{type = "checkspin", text = "Flamestrike:|c0000FA9A target enemies nearby >=", key = "flstrike_aoe", check = true, spin = 4, width = 100, step = 1, max = 10, min = 1},
	{type = "checkspin", text = "Meteor:|c0000FA9A target enemies nearby >=", key = "mete_aoe", check = true, spin = 5, width = 100, step = 1, max = 10, min = 1},
	{type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},
	{type = "text", text = "Use Time Warp|c0000FA9A if toggle is on|r"},
	{type = "checkbox", text = "Use Rune of Power|c0000FA9A you can disable|r", key = "rop", default = true},
	{type = "checkbox", text = "Use Combustion|c0000FA9A you can disable|r", key = "fire_man", default = true},
	{type = "checkbox", text = "Use Meteor|c0000FA9A you can disable|r", key = "mete", default = true},
    {type = "spacer"}, {type = "ruler"},]]

	{type = "header", size = 16, text = "Trinkets", align = "center"},
	{type = "text", text = "|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r", align = "center"},
	{type = "checkbox", text = "Trinket #1", key = "trk1",	default = false},
	{type = "checkbox", text = "Trinket #2", key = "trk2",   default = false},
	{type = "text", text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "ruler"},

}

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A --- |r|c0000BFFF Mage - Frost |r|c00FF0000 for Advanced Unlocker|r")
	--[[print("|c0000FA9A ------------------------PVP-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/3 - 4/2 - 5/3 - 6/2 - 7/3")
	print("|c0000FA9A --- |rHonor Talents: 1/1 - 2/1 - 3/1 - 4/1 - 5/3 - 6/2")
    print("|c0000FA9A")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/2 - 4/2 - 5/3 - 6/2 - 7/3")
	print("|c0000FA9A ----------------------------------------------------------------------|r")]]
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

	NeP.Interface:AddToggle({key = "tw", name = "Time Warp", text = "use Time Warp", icon = "Interface\\Icons\\ability_mage_timewarp"})
	NeP.Interface:AddToggle({key = "cr", name = "Auto Control", text = "Automatically use Frost Nova & Dragon's Breath.", icon = "Interface\\Icons\\spell_frost_frostnova"})

end

local pvp = {
	
    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & {target.faction.positive || target.faction.negative & player.pvp} & {player.state(stun) & player.spell(Every Man for Himself)cooldown > 0 & player.race = Human || player.state(stun) & !player.race = Human || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
	
	{"!Ring of Frost", "{keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5} & {UI(mc) || !UI(mc) & !player.moving}", "cursor.ground"},
	
	{"Spellsteal", "inRange.spell & UI(st_buff) & {player.mana >= 25 || player.buff(Innervate)}", "enemystbuff"},

}

local Keybinds = {

    {"Blizzard", "keybind(control) & !player.moving", "cursor.ground"},
 --[[   {"Polymorph", "!immune_all & !immune_spell & alive & enemy & debuff(Polymorph).duration <= 2 & !player.lastcast & inRange.spell & !focus.exists & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & {!target.player || target.faction.positive || target.faction.negative & player.pvp} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & {UI(mc) || !UI(mc) & !player.moving}", "target"},
    {"Polymorph", "!immune_all & !immune_spell & alive & enemy & debuff(Polymorph).duration <= 2 & !player.lastcast & inRange.spell & focus.exists & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & {!focus.player || focus.faction.positive || focus.faction.negative & player.pvp} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & {UI(mc) || !UI(mc) & !player.moving}", "focus"},
	{"Meteor", "UI(list4)==11 & target.alive & target.enemy & player.combat & range <= 38.5 & !target.immune_all & !target.immune_spell & {!target.player || target.faction.positive || target.faction.negative & player.pvp} & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target.ground"},
	{"Meteor", "UI(list4)==10 & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "cursor.ground"},
	]]
}

local PreCombat = { 

	{"Slow Fall", "falling.duration >= 1.5 & !player.buff(Slow Fall)"},

	{"Ice Barrier", "buff.duration <= 5", "player"},
	
	--Pet Function
	{"Summon Water Elemental", "!talent(1,2) & !Pet.Exists & !player.moving"},
    {(function() _G.PetAssistMode() print("Pet Set To Assist") end), "!PetSpell(Waterbolt).autocast"},
	{(function() _G.ToggleSpellAutocast("Waterbolt") print("Pet Auto Spell |c0000BFFF[Waterbolt]|r activated") end), "!PetSpell(Waterbolt).autocast"},
	---

	{"Frostbolt", "inRange.spell & alive & canAttack & !immune_all & !immune_spell & !player.moving", "target"},
	
    {"Conjure Refreshment", "item(80610).count < 1 & !player.moving"},
	{"#80610", "item(80610).count >= 1 & player.health <= 80 & !player.buff(Refreshment) & !player.moving"},

}

local Survival = {

	{"!Ice Block", "area(40).enemies >= 1 & {player.health <= UI(ice_health_spin) & UI(ice_health_check) || player.debuff(Cauterize) & UI(cool_down) || player.state(stun) & player.spell(Every Man for Himself).cooldown > 0 & player.spell(Gladiator's Medallion).cooldown > 0 & !player.lastcast(Gladiator's Medallion) & UI(ice_stun)}", "player"},
    {"!Temporal Shield", "player.health <= UI(temp_shield_spin) & UI(temp_shield_check) & area(40).enemies >= 1 & player.incdmg(3) >= player.health.max*0.05", "player"},
	
	{"Frost Nova", "toggle(cr) & canAttack & !enemy_totem & fixRange <= 8 & !immune_all & !immune_spell & !player.lastcast(Frost Nova) & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & !pvp.area", "enemies"},
	{"Frost Nova", "toggle(cr) & canAttack & !enemy_totem & fixRange <= 8 & !immune_all & !immune_spell & !player.lastcast(Frost Nova) & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & player & pvp.area", "enemies"},

	{"Ice Barrier", "!buff(Ice Block) & buff.duration < 3 & {!player.buff(Rune of Power) & !player.buff(Combustion) || {target.faction.positive || target.faction.negative & player.pvp}}", "player"},
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & area(40).enemies >= 1", "player"}, --Health Stone
	{"#neck", "{equiped(Eternal Will of the Martyr) || equiped(Eternal Horizon Choker)} & player.health <= 60"},

}

local Interrupts = {

	{"!Counterspell", "interruptAt(70) & inRange.spell & {player.level < 100 || !indungeon} & {!target.player || target.faction.positive || target.faction.negative & player.pvp}", "target"},
	{"!Counterspell", "interruptAt(1) & inRange.spell & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent", "interruptAt(1) & inRange.spell & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent",	"interruptAt(70) & inRange.spell & {player.level < 100 || !indungeon} & {!target.player || target.faction.positive || target.faction.negative & player.pvp}", "target"},

}

local Cooldowns = {

	{"Icy Veins", "target.inRange(Frostbolt).spell"},
    {"#trinket1", "target.inRange(Frostbolt).spell & UI(trk1)"},
	{"#trinket2", "target.inRange(Frostbolt).spell & UI(trk2)"},

}

local Combat = {

	{"!Flurry", "inRange.spell & spell(Flurry).casttime == 0 & {target.deathin >= 3 || player.buff(Brain Freeze).duration <= 5} & alive & canAttack & !immune_all & !immune_spell", "target"},
	{"Ice Lance", "inRange.spell & alive & canAttack & !immune_all & !immune_spell & {player.buff(Fingers of Frost) || player.moving || player.lastcast(Frostbolt)}", "target"},
	{"Frostbolt", "inRange.spell & alive & canAttack & !immune_all & !immune_spell & !player.moving", "target"},
	{"&Fire Blast", "inRange.spell & alive & canAttack & !immune_all & !immune_spell", "target"},

}

local inCombat = {

	{"Slow Fall", "falling.duration >= 1.5 & !player.buff(Slow Fall)"},

	--Pet Function
    {(function() _G.PetAssistMode() print("Pet Set To Assist") end), "!PetSpell(Waterbolt).autocast"},
	{(function() _G.ToggleSpellAutocast("Waterbolt") print("Pet Auto Spell |c0000BFFF[Waterbolt]|r activated") end) , "!PetSpell(Waterbolt).autocast"},
	---

    {"!/stopcasting", "casting(Unnerving Howl) & interruptAt(75)", "enemies"},
	{pvp, "!player.buff(Invisibility)"},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & !target.casting(Vengeful Wail) & !target.casting(Runic Empowerment) & !player.buff(Invisibility) & {!target.player || target.faction.positive || !target.faction.positive & player.pvp}"},
    {Survival, "player.health <= 100 & !player.buff(Invisibility)"},
	{Cooldowns, "toggle(cooldowns) & target.alive & target.enemy & !player.casting(Rune of Power) & !target.immune_all & !target.immune_spell & !player.buff(Invisibility) & !target.debuff(Polymorph) & !player.buff(Invisibility) & {!target.player || target.faction.positive || !target.faction.positive & player.pvp}"},
    {Combat, "target.alive & target.enemy & !player.casting(Rune of Power) & !target.immune_all & !target.immune_spell & !player.buff(Invisibility) & !target.debuff(Polymorph)"},

}

local outCombat = {	

	{pvp, "!player.buff(Invisibility)"},
	{Keybinds},
	{Combat, "UI(burst_key) & target.alive & target.enemy & !player.casting(Rune of Power) & !target.immune_all & !target.immune_spell & !player.buff(Invisibility) & !target.debuff(Polymorph) & {target.faction.positive || target.faction.negative & player.pvp}"},
	{PreCombat, "!player.buff(Invisibility)"},

}

NeP.CR:Add(64, {
	name = "[|c0000BFFFKleei|r]|c0000BFFF Mage - Frost |r[Generic Unlocker]",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})