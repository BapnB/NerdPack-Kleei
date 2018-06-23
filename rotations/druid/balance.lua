local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\balance.blp', width = 200, height = 200, offset = 155, y = -75, align = 'center'},

}

local GUI = {

	unpack(Logo_GUI),

	--[[
	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = "spacer"},
	{type = "combo", default = "1", key = "list1", list = keybind_list_1, width = 100},	
	{type = "text", text = "Use Mighty Bash:|c0000FA9A in melee:"},
	{type = "text", text = "Use Maim:|c0000FA9A in melee:"},	
	{type = "spacer"},
	{type = "combo", default = "4",  key = "list2", 	list = keybind_list_2, 	width = 100},	
    {type = "text", text = "Use Wild Charge:|c0000FA9A ranged:|r"},
    {type = "text", text = "Use Skull Bash:|c0000FA9A ranged:|r"},
	{type = "spacer"},
	{type = "combo",	default = "8",  key = "list3", 	list = keybind_list_3, 	width = 100},		
    {type = "text", text = "Use Berserk:"},
    {type = "text", text = "Use Incarnation: King of the Jungle:"},
    {type = "text", text = "|c0000FA9A if you have [Incarnation] buff it cast Stealth and Stun|r"},
	{type = "spacer"},
	{type = "combo",	default = "12",  key = "list4", 	list = keybind_list_4, 	width = 100},	
    {type = "text", text =  "Regrowth lowest:", desc = "|c0000FA9A if lowest have less than 90% HP:|r"},
    {type = "ruler"},]]
	
    {type = 'header', size = 16,  text = 'PvP', align = 'center'},
    {type = 'checkbox',	text = "Unroot: |c0000FA9A auto unroot Shapeshifting.|r", align = 'left', key = 'root', default = true},		
    {type = 'checkbox',	text = "Gladiator's Medallion:|c0000FA9A remove stun/fear/disorient/charm.|r", align = 'left', key = 'medal', default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
 
	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = 'Survival', align = 'center'},
    {type = "checkspin", text = "Use Swiftmend:", key = "sw", check = true, spin = 40, width = 100, step = 5, max = 95, min = 1},
    {type = "checkspin", text = "Use Regrowth:", key = "reg", check = true, spin = 50, width = 100, step = 5, max = 95, min = 1},
    {type = "checkspin", text = "Use Rejuvenation:", key = "rej", check = true, spin = 70, width = 100, step = 5, max = 95, min = 1},	
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 100, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 10 sec|r", align = 'center'}, 
    {type = 'text', text = "Berserk|c0000FA9A if not talented(5,2)|r"},

	--[[Starfall pe keybind si talente 5/1--6/3--7/2 pentru AoE @moltenhumi
	]]
}

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A --- |r|c00FF7F00 DRUID - Balance |r|c00FF0000 for Advanced Unlocker|r")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: Coming Soon")
	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

    NeP.Interface:AddToggle({key = "travelform", icon = "Interface\\Icons\\ability_druid_travelform", name = "Auto Travel Form", text = "ON/OFF Auto Travel Form",})
	
end

local Shapeshift = {

    {"Moonkin Form", "!buff(Moonkin Form) & !keybind(alt) & {!player.combat & player.health > 85 || player.combat} & {!player.swimming & !toggle(travelform) || player.indoors || player.state(root) & UI(root) || target.enemy & target.alive || player.area(15).enemies >= 1}", "player"},
	{"Bear Form", "!buff(Bear Form) & !buff(Prowl) & state(root) & UI(root)", "player"},

	{"/cancelform", "!buff(Prowl) & !indoors & swimming & !buff(Travel Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive || !target.exists} & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}", "player"},
	{"Travel Form", "!indoors & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & swimming & {!health <= 85 || health <= 85 & spell(Regrowth).casttime==0 || player.moving} & {!target.enemy || target.enemy & !target.alive || !target.exists}", "player"},
	{"/cancelform", "toggle(travelform) & !indoors & !buff(Dash) & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive || !target.exists} & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}", "player"},
    {"Travel Form", "toggle(travelform) & !combat & !indoors & !buff(Dash) & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & {!health <= 85 || health <= 85 & spell(Regrowth).casttime==0 || player.moving} & {!target.enemy || target.enemy & !target.alive || !target.exists} & !keybind(alt)", "player"},
	
    {"Blessing of the Ancients", "talent(6,3) & !player.buff(Blessing of Elune)"},
	
}

local pvp = {

    {"Gladiator's Medallion", "UI(medal) & {state(stun) || state(fear) || state(disorient) || state(charm)}", "player"},

}

local Keybinds = {

   --Coming Soon

}

local PreCombat = { 

    {"Revive", "!player.combat & inRange.spell & !player.moving", "deadgroupmember"},

	{"!/cancelform", "health <= 85 & !buff(Prowl) & !spell(Regrowth).casttime==0 & !player.moving & {player.buff(Cat Form) || player.buff(Travel Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}", "player"},
    {"Regrowth", "health <= 85 & !buff(Prowl) & {spell(Regrowth).casttime==0 || !player.moving}", "player"},

}

local Survival = {

	{"Swiftmend", "talent(3,3) & player.health <= UI(sw_spin) & UI(sw_check)", "player"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"},
    --Revive
	{"Rebirth", "inRange.spell & !enemy & dead & player & player.area(40).enemies >= 1", "target"},
    {"Rebirth", "inRange.spell & player.area(40).enemies >= 1 & is(tank)", "deadgroupmember"},

	{"Regrowth", "player.health <= UI(reg_spin) & UI(reg_check)", "player"},
	{"Rejuvenation", "talent(3,3) & player.health <= UI(rej_spin) & UI(rej_check)", "player"},

}

local Interrupts = {

	{"!Typhoon", "talent(4,3) & interruptAt(75) & range <= 17 & infront", "target"},
	{"!Typhoon", "talent(4,3) & interruptAt(75) & range <= 17 & infront", "enemies"},
	{"!Solar Beam", "inRange.spell & interruptAt(75) & {!talent(4,3) || talent(4,3) & {range >= 20 || player.spell(Typhoon).cooldown > 0.2}}", "target"},
	{"!Solar Beam", "inRange.spell & interruptAt(75) & {!talent(4,3) || talent(4,3) & {range >= 20 || player.spell(Typhoon).cooldown > 0.2}}", "enemies"},

}

local Cooldowns = {

    {"Celestial Alignment", "target.range <= 45 & target.combat & target.debuff(Sunfire) & target.debuff(Moonfire) & !player.moving"},
    {"Incarnation: Chosen of Elune", "talent(5,2) & target.range <= 45 & target.combat & target.debuff(Sunfire) & target.debuff(Moonfire) & !player.moving"},

}

local Combat = {

    {"Stellar Flare", "talent(5,3) & inRange.spell & !player.moving & debuff(Stellar Flare).duration <= 2 & deathin >= 15 & {tarea.area(14).enemies <= 3 || target.debuff(Starfall).duration > 2}", "target"},
	{"Sunfire", "inRange.spell & debuff(Sunfire).duration <= 2", "target"},
    {"Moonfire", "inRange.spell & debuff(Moonfire).duration <= 2", "target"},
	{"Starsurge", "inRange.spell & {tarea.area(14).enemies <= 3 || target.debuff(Starfall).duration > 2} & {!toggle(cooldowns) || toggle(cooldowns) & player.buff(Celestial Alignment) || toggle(cooldowns) & player.spell(Celestial Alignment).cooldown > gcd}", "target"},
	{"New Moon", "inRange.spell & !player.moving & {!toggle(cooldowns) || toggle(cooldowns) & player.buff(Celestial Alignment) || toggle(cooldowns) & player.spell(Celestial Alignment).cooldown > gcd}", "target"},

    {"Sunfire",  "inRange.spell & toggle(aoe) & count.enemies.debuffs(Sunfire) < 3 & debuff(Sunfire).duration <= 2 & combat", "enemies"},
	{"Moonfire", "inRange.spell & toggle(aoe) & count.enemies.debuffs(Moonfire) < 3 & debuff(Moonfire).duration <= 2 & combat", "enemies"},
    {"Starfall", "toggle(aoe) & target.area(14).enemies >= 4 & !target.debuff(Starfall) & target.range <= 45 & {!toggle(cooldowns) || toggle(cooldowns) & player.buff(Celestial Alignment) || toggle(cooldowns) & player.spell(Celestial Alignment).cooldown > gcd}", "target.ground"},

	{"Solar Wrath", "inRange.spell & player.buff(Solar Empowerment) & area(5).enemies <= 3 & !player.moving", "target"},
	{"Lunar Strike", "inRange.spell & player.buff(Lunar Empowerment) & !player.moving", "target"},

	{"Solar Wrath", "inRange.spell & area(5).enemies <= 3 & !player.moving", "target"},
	{"Lunar Strike", "inRange.spell & area(5).enemies >= 4 & !player.moving", "target"},

}

local inCombat = {

    {"!/stopcasting", "casting(Unnerving Howl) & interruptAt(75)", "enemies"},
    {Shapeshift},
	{pvp_, "player.pvp & target.player & target.enemy & target.alive"},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & !player.buff(Prowl) & target.enemy & {!target.player || player.pvp & target.player}"},
    {Survival, "player.health < 100 & !player.buff(Prowl)"},		
	{Cooldowns, "toggle(cooldowns)"},
    {Combat, "player.los(target) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
    
}

local outCombat = {	

    {Shapeshift},
    {PreCombat},

}

NeP.CR:Add(102, {
	name = '[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Balance',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})