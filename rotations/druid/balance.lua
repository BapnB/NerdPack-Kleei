local GUI = {

	--[[{type = 'spacer'},
	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = 'spacer'},
	{type = 'combo', default = '1', key = 'list1', list = keybind_list_1, width = 100},	
	{type = 'text', text = "Use Mighty Bash:|c0000FA9A in melee:"},
	{type = 'text', text = "Use Maim:|c0000FA9A in melee:"},	
	{type = 'spacer'},
	{type = 'combo',	default = '4',  key = 'list2', 	list = keybind_list_2, 	width = 100},	
    {type = 'text', text = "Use Wild Charge:|c0000FA9A ranged:|r"},
    {type = 'text', text = "Use Skull Bash:|c0000FA9A ranged:|r"},
	{type = 'spacer'},
	{type = 'combo',	default = '8',  key = 'list3', 	list = keybind_list_3, 	width = 100},		
    {type = 'text', text = "Use Berserk:"},
    {type = 'text', text = "Use Incarnation: King of the Jungle:"},
    {type = 'text', text = "|c0000FA9A if you have [Incarnation] buff it cast Stealth and Stun|r"},
	{type = 'spacer'},
	{type = 'combo',	default = '12',  key = 'list4', 	list = keybind_list_4, 	width = 100},	
    {type = 'text', text =  "Regrowth lowest:", desc = "|c0000FA9A if lowest have less than 90% HP:|r"},
    {type = 'ruler'},]]
	
    {type = 'header', size = 16,  text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Unroot: |c0000FA9A auto unroot Shapeshifting.|r", align = 'left', key = 'root', default = true},		
    {type = 'checkbox',	text = "Gladiator's Medallion:|c0000FA9A remove stun/fear/disorient/charm.|r", align = 'left', key = 'medal', default = true},
	{type = 'spacer'}, {type = 'ruler'},
 
	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = 'spacer'}, {type = 'ruler'},
	
	{type = "header", size = 16, text = 'Survival', align = 'center'},
    {type = "checkspin", text = "Use Swiftmend:", key = "sw", check = true, spin = 40, width = 100, step = 5, max = 95, min = 1},
    {type = "checkspin", text = "Use Regrowth:", key = "reg", check = true, spin = 50, width = 100, step = 5, max = 95, min = 1},
    {type = "checkspin", text = "Use Rejuvenation:", key = "rej", check = true, spin = 70, width = 100, step = 5, max = 95, min = 1},	
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 100, step = 5, max = 95, min = 1},
    {type = "ruler"}, {type = "spacer"},

	{type = 'header', size = 16, text = 'EWT cheat', align = 'center'},
    {type = 'checkbox',	text = "Moving-Cast:|c0000FA9A EWT cheat, if you use it check the box and it will cast when moving|r", align = 'left', key = 'mc', default = false},
    {type = 'ruler'}, {type = 'spacer'},
	
    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 10 sec|r", align = 'center'}, 
    {type = 'text', text = "Berserk|c0000FA9A if not talented(5,2)|r"},

}

local exeOnLoad = function()

	print('|cffADFF2F --- |r|c00FF7F00 DRUID - Balance |r')

	print('|cffADFF2F ------------------------PVE-------------------------------------------|r')
	print('|cffADFF2F --- |rRecommended Talents: Coming Soon')
	print('|cffADFF2F ----------------------------------------------------------------------|r')

	
	NeP.Interface:AddToggle({
		key = 'travelform',
		icon = 'Interface\\Icons\\ability_druid_travelform',
		name = 'Auto Travel Form',
		text = 'ON/OFF Auto Travel Form',
	})
	
end

local Shapeshift = {

    {"Moonkin Form", "!buff(Moonkin Form) & {!swimming & !toggle(travelform) || indoors || state(root) & UI(root) || target.enemy & target.alive || player.area(10).enemies >= 1}", "player"},
	{"Bear Form", "!buff(Bear Form) & !buff(Prowl) & {state(root) & UI(root) || toggle(BEAR) & !buff(Dash) & !spell(Prowl).usable & target.alive & target.enemy & player.pvp & target.player & targettarget.is(player) & target.range > 7}", "player"},

	{"/cancelform", "!player.buff(Prowl) & !indoors & player.swimming & !player.buff(Travel Form) & !player.area(20).enemies >= 1 & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}"},
	{"Travel Form", "!player.buff(Moonkin Form) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form) & !player.area(20).enemies >= 1 & player.swimming"},
	{"/cancelform", "toggle(travelform) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form) & !player.area(15).enemies >= 1 & buff(Moonkin Form) & {!target.enemy || target.enemy & !target.alive}", "player"},
    {"Travel Form", "toggle(travelform) & !keybind(alt) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form) & !player.buff(Moonkin Form) & !player.area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive}"},
	
    {"Blessing of the Ancients", "talent(6,3) & !player.buff(Blessing of Elune)"},
	
}

local pvp = {

    {"Gladiator's Medallion", "UI(medal) & {state(stun) || state(fear) || state(disorient) || state(charm)}", "player"},

}

local Keybinds = {

   --Coming Soon

}

local PreCombat = { 



}

local Survival = {

	{"Swiftmend", "talent(3,3) & player.health <= UI(sw_spin) & UI(sw_check)", "player"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"},
	{"Regrowth", "player.health <= UI(reg_spin) & UI(reg_check)", "player"},
	{"Rejuvenation", "talent(3,3) & player.health <= UI(rej_spin) & UI(rej_check)", "player"},

}

local Interrupts = {

	{"!Typhoon", "talent(4,3) & interruptAt(75) & range <= 17", "target"},
	{"!Typhoon", "talent(4,3) & interruptAt(75) & range <= 17", "enemies"},
	{"!Solar Beam", "interruptAt(75) & range <= 45 & {!talent(4,3) || talent(4,3) & {range >= 20 || player.spell(Typhoon).cooldown > 0.2}}", "target"},
	{"!Solar Beam", "interruptAt(75) & range <= 45 & {!talent(4,3) || talent(4,3) & {range >= 20 || player.spell(Typhoon).cooldown > 0.2}}", "enemies"},

}

local Cooldowns = {

    {"Celestial Alignment", "target.range <= 45 & target.combat & target.debuff(Sunfire) & target.debuff(Moonfire) & {UI(mc) || !UI(mc) & !player.moving}"},
    {"Incarnation: Chosen of Elune", "talent(5,2) & target.range <= 45 & target.combat & target.debuff(Sunfire) & target.debuff(Moonfire) & {UI(mc) || !UI(mc) & !player.moving}"},

}

local Combat = {

    --Keep  Moonfire and  Sunfire on the target
    {"Stellar Flare", "talent(5,3) & {UI(mc) || !UI(mc) & !player.moving} & debuff(Stellar Flare).duration <= 2 & deathin >= 15 & range <= 45 & {tarea.area(14).enemies <= 3 || target.debuff(Starfall).duration > 2}", "target"},
	{"Sunfire", "debuff(Sunfire).duration <= 2 & range <= 45", "target"},
    {"Moonfire", "debuff(Moonfire).duration <= 2 & range <= 45", "target"},
	{"Starsurge", "{tarea.area(14).enemies <= 3 || target.debuff(Starfall).duration > 2} & range <= 45 & {!toggle(cooldowns) || toggle(cooldowns) & player.buff(Celestial Alignment) || toggle(cooldowns) & player.spell(Celestial Alignment).cooldown > gcd}", "target"},
	{"New Moon", "range <= 45 & {UI(mc) || !UI(mc) & !player.moving} & {!toggle(cooldowns) || toggle(cooldowns) & player.buff(Celestial Alignment) || toggle(cooldowns) & player.spell(Celestial Alignment).cooldown > gcd}", "target"},

    {"Sunfire",  "toggle(aoe) & count.enemies.debuffs(Sunfire) < 3 & debuff(Sunfire).duration <= 2 & combat & range <= 45", "enemies"},
	{"Moonfire", "toggle(aoe) & count.enemies.debuffs(Moonfire) < 3 & debuff(Moonfire).duration <= 2 & combat & range <= 45", "enemies"},
    {"Starfall", "toggle(aoe) & target.area(14).enemies >= 4 & !target.debuff(Starfall) & target.range <= 45 & {!toggle(cooldowns) || toggle(cooldowns) & player.buff(Celestial Alignment) || toggle(cooldowns) & player.spell(Celestial Alignment).cooldown > gcd}", "target.ground"},

	{"Solar Wrath", "player.buff(Solar Empowerment) & range <= 45 & area(5).enemies <= 3 & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	{"Lunar Strike", "player.buff(Lunar Empowerment) & range <= 45 & {UI(mc) || !UI(mc) & !player.moving}", "target"},

	{"Solar Wrath", "range <= 45 & area(5).enemies <= 3 & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	{"Lunar Strike", "range <= 45 & area(5).enemies >= 4 & {UI(mc) || !UI(mc) & !player.moving}", "target"},

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