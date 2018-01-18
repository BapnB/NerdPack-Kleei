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

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\resto.blp', width = 160, height = 160, offset = 80, y = -50, align = 'center'},

}

local GUI = {  
    
	unpack(Logo_GUI),
	{type = 'spacer'},	{type = 'spacer'},	{type = 'spacer'},	
	{type = 'header', size = 16, text = "Healing Settings", align = 'center'},

	{type = 'header', 	text = 'Tanks', align = 'center'},
	
	{type = 'spinner', 	text = 'Rejuvenation ',   key = 'tankrej',   default = 85, step = 5, width = 100},
	{type = 'spinner', 	text = 'Germination ', 	 key = 'tankgerm', 	 default = 80, step = 5, width = 100},
	{type = 'spinner', 	text = 'Regrowth', 		key = 'tankreg', 	 default = 75, step = 5, width = 100},	
	{type = 'spinner', 	text = 'Swiftmend', 	key = 'tanksm', 	 default = 60, step = 5, width = 100},
	{type = 'spinner', 	text = 'Ironbark / Barkskin - tank / player', key = 'ironbark', default = 65, step = 5, width = 100},
	{type = 'spinner', 	text = 'Healing touch',   key = 'tankht',	     default = 0, step = 5, width = 100},

	{type = 'header', 	text = 'Lowests (player included)', align = 'center'},

	{type = 'spinner', 	text = 'Rejuvenation',   key = 'lowestrej',  default = 85, step = 5, width = 100},
	{type = 'spinner', 	text = 'Germination', 	 key = 'lowestgerm', 	default = 80, step = 5, width = 100},
	{type = 'spinner', 	text = 'Regrowth', 		key = 'lowestreg', 	default = 75, step = 5, width = 100},	
	{type = 'spinner', 	text = 'Swiftmend', 	 key = 'lowestsm', 	default = 60, step = 5, width = 100},
	{type = 'spinner', 	text = 'Healing touch',   key = 'lowestht',	    default = 0, step = 5, width = 100},
	{type = 'spacer'}, {type = 'ruler'},
	
	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = 'combo', default = '1',  key = 'list1',  list = keybind_list_1, 	width = 100},		
	{type = 'text', text = "Use Efflorescence:|c0000FA9A on cursor ground"},
	{type = 'combo',	default = '5',  key = 'list2', 	list = keybind_list_2, 	width = 100},			
    {type = 'text', text = "Innervate:|c0000FA9A  inCombat only"},
	{type = 'combo',	default = '9',  key = 'list3', 	list = keybind_list_3, 	width = 100},		
    {type = 'text', text = "Mass Entanglement / Entangling Roots:|c0000FA9A"},
    {type = 'spacer'}, {type = 'ruler'},

    {type = 'header', size = 16,  text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Unroot: |c0000FA9A Auto unroot Shapeshifting.|r", align = 'left', key = 'unroot', default = true},	
    {type = 'checkbox',	text = "Gladiator's Medallion:|c0000FA9A Remove stun/fear/disorient/charm.|r", align = 'left', key = 'medal', default = true},
	{type = 'spacer'}, {type = 'ruler'},

	{type = 'header', size = 16, text = "Survival", align = "center"},
    {type = 'checkspin',	text = "Use Renewal:", key = "ren", check = true, spin = 40, width = 100, step = 5, max = 95, min = 1},	
	{type = 'checkspin', text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 100, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = "Interrupt DPS:|c0000FA9A if lowest HP < |r", key = "inter_dps_key", check = true, spin = 75, width = 100, step = 5, max = 100, min = 1},
    {type = 'checkbox',	text = "Root:|c0000FA9A Auto Root [Entangling Roots] or [Mass Entanglement].|r", align = 'left', key = 'root', default = false},
	{type = 'spacer'}, {type = 'ruler'},

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = 'spacer'}, {type = 'ruler'},
 
	{type = 'header', size = 16, text = 'EWT cheat', align = 'center'},
    {type = 'checkbox',	text = "Moving-Cast:|c0000FA9A EWT cheat, if you use it check the box and it will cast when moving|r", align = 'left', key = 'mc', default = false},
    {type = 'ruler'}, {type = 'spacer'},
    {type = 'text', text = "In combat:|c0000FA9A if your target is friendly and dead will use Rebirth to ress|r"},
    {type = 'text', text = "Out of combat:|c0000FA9A if your target is friendly and dead will use Revive to ress|r"},
	
}

local exeOnLoad = function()
	
	print('|c0000FA9A --- |r|c00FF7F00 DRUID - Restoration |r')	
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
	print('|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/1 - 4/X - 5/1 - 6/3 - 7/1')
	print('|c0000FA9A ----------------------------------------------------------------------|r')
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")

		NeP.Interface:AddToggle({
		key = 'dispelall',
		icon = 'Interface\\Icons\\ability_shaman_cleansespirit.png',
		name = 'Dispell',
		text = 'ON/OFF Auto Dispell All',
	})
	
	 	NeP.Interface:AddToggle({
		key = 'DPS',
		icon = 'Interface\\Icons\\ability_mage_firestarter.png',
		name = 'DPS',
		text = 'ON/OFF DMG when > xx% on LOWEST Health',
	})
	
	NeP.Interface:AddToggle({
		key = "hig_en",
		name = "Highest Enemies",
		text = "Disable if PVP enemies nearby.",
		icon = "Interface\\Icons\\achievement_boss_guarm",
	})
	
	NeP.Interface:AddToggle({
		key = 'travelform',
		icon = 'Interface\\Icons\\ability_druid_travelform',
		name = 'Auto Travel Form',
		text = 'ON/OFF Auto Travel Form',
	})

end

local Shapeshift = {

    --{"Moonkin Form", "toggle(DPS) & !buff(Moonkin Form) & {!player.swimming & !toggle(travelform) || player.indoors || player.state(root) & UI(root) || target.enemy & target.alive}", "player"},
    --{"/cancelform", "!toggle(DPS) & player.buff(Moonkin Form) || !toggle(travelform) & !player.swimming & player.buff(Travel Form)", "player"},
	{"Bear Form", "!buff(Bear Form) & !buff(Prowl) & state(root) & UI(root)", "player"},

	{"/cancelform", "!buff(Prowl) & !indoors & swimming & !buff(Travel Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive || !target.exists} & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}", "player"},
	{"Travel Form", "!buff(Cat Form) & !indoors & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & swimming & {!target.enemy || target.enemy & !target.alive || !target.exists}", "player"},
	{"/cancelform", "toggle(travelform) & !indoors & !buff(Dash) & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive || !target.exists} & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}", "player"},
    {"Travel Form", "toggle(travelform) & !indoors & !buff(Dash) & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive || !target.exists} & !keybind(alt)", "player"},

}

local Keybinds = {

	{"Mass Entanglement", "talent(4,2) & !debuff(Mass Entanglement) & !debuff(Entangling Roots) & !player.lastcast(Entangling Roots) & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target"},
    {"Entangling Roots", "!debuff(Entangling Roots) & !debuff(Mass Entanglement) & !player.lastcast(Mass Entanglement) & !player.lastcast(Entangling Roots) & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target"},

    {"Innervate", "combat & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "player"},

	{"Efflorescence", "keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2", "cursor.ground"},
	
}

local Survival = {

    {"Gladiator's Medallion", "UI(medal) & target.pvp & player.pvp & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

	{"Renewal", "player.health <= UI(ren_spin) & UI(ren_check) & area(40).enemies >= 1", "player"},
	{"Mass Entanglement", "talent(4,2) & range <= 7 & player.area(7).enemies >= 2 & UI(root) & !debuff(Mass Entanglement) & !debuff(Entangling Roots)", "enemies"},
    {"Entangling Roots", "range <= 7 & player.area(7).enemies >= 1 & UI(root) & !debuff(Mass Entanglement) & !debuff(Entangling Roots) & !player.lastcast(Mass Entanglement) & !player.lastcast(Entangling Roots)", "enemies"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"}, --Health Stone	
	
}

local Interrupts = {
	
	{"!Typhoon", "talent(4,3) & target.range <= 18"},
	{"!Mighty Bash", "talent(4,1) & target.range <= 10"},
	
}

local Cooldowns = {

    {"#trinket1", "UI(trk1) & target.range <= 40 & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.range <= 40 & target.deathin >= 10"},

}

local Innervate = {

	{"Rejuvenation", "!buff(Rejuvenation", "lowest"},
	{"Rejuvenation", "talent(6,3) & !buff(Rejuvenation (Germination))", "lowest"},
	
}

local DPS = {

	{"Sunfire",  "target.area(3.5).enemies >= 2 & debuff(Sunfire).duration <= 2 & player.los(target) & enemy & alive", "target"},
    {"Moonfire", "!debuff & range <= 40 & player.los(target) & enemy & alive", "target"},
	{"Moonfire", "toggle(aoe) & !debuff & combat & range <= 40 & enemy & alive", "enemies"},
	
	{"Starsurge", "{!toggle(hig_en) || target.boss || target.faction.positive || target.faction.negative & player.pvp} & inRange.spell & player.buff(Moonkin Form) & player.los(target) & enemy & alive & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	{"Starsurge", "toggle(hig_en) & !target.boss & inRange.spell & player.buff(Moonkin Form) & {UI(mc) || !UI(mc) & !player.moving}", "highestenemy"},
	{"Lunar Strike", "{!toggle(hig_en) || target.boss || target.faction.positive || target.faction.negative & player.pvp} & inRange.spell & player.buff(Lunar Empowerment) & area(5).enemies >= 4 & player.los(target) & enemy & alive & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	{"Lunar Strike", "toggle(hig_en) & !target.boss & inRange.spell & player.buff(Lunar Empowerment) & area(4).enemies >= 4 & {UI(mc) || !UI(mc) & !player.moving}", "highestenemy"},
	{"Solar Wrath", "{!toggle(hig_en) || target.boss || target.faction.positive || target.faction.negative & player.pvp} & inRange.spell & player.buff(Solar Empowerment) & player.los(target) & enemy & alive & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	{"Solar Wrath", "toggle(hig_en) & !target.boss & inRange.spell & player.buff(Solar Empowerment) & {UI(mc) || !UI(mc) & !player.moving}", "highestenemy"},
	
	{"Solar Wrath", "{!toggle(hig_en) || target.boss || target.faction.positive || target.faction.negative & player.pvp} & inRange.spell & player.los(target) & enemy & alive & {UI(mc) || !UI(mc) & !player.moving}", "target"},
	{"Solar Wrath", "toggle(hig_en) & !target.boss & inRange.spell & player.buff(Moonkin Form) & {UI(mc) || !UI(mc) & !player.moving}", "highestenemy"},
	
}

local Moving = {

    --Revive
	{"Rebirth", "!enemy & dead & player & player.area(40).enemies >= 1 & player.combat", "target"},
	{"Rebirth", "player.area(40).dead.friendly >= 1 & player.area(40).enemies >= 1 & tank.health >= 40 & player.combat", "friendly"},

	--Dispell
	{"&%dispelall", "toggle(dispelall) & player.spell(Nature's Cure).cooldown < 0.3"},
	
	--Ironbark
	{"Ironbark", "tank.health <= UI(ironbark) & combat & player.incdmg(3) >= player.health.max*0.02", "tank"},
	{"Ironbark", "tank2.health <= UI(ironbark) & group.type == 3 & combat & player.incdmg(3) >= player.health.max*0.02", "tank2"},
	{"Barkskin", "player.health <= UI(ironbark) & combat & player.incdmg(3) >= player.health.max*0.02", "player"},
	{"Ironbark", "player.health <= UI(ironbark) & player.spell(Barkskin).cooldown > 0.2 & !player.buff(Barkskin) & combat & player.incdmg(3) >= player.health.max*0.02", "player"},
	
	--Swiftmend
	{"Swiftmend", "tank.health <= UI(tanksm) & player.health >= tank.health & combat & player.incdmg(3) >= player.health.max*0.02", "tank"},
	{"Swiftmend", "tank2.health <= UI(tanksm) & player.health >= tank2.health & group.type == 3 & combat & player.incdmg(3) >= player.health.max*0.02", "tank2"},
	{"Swiftmend", "player.health <= UI(lowestsm) & lowest.health >= player.health & combat & player.incdmg(3) >= player.health.max*0.02", "player"},
	{"Swiftmend", "lowest.health <= UI(lowestsm) & !is(player) & combat & player.incdmg(3) >= player.health.max*0.02", "lowest"},
	
	{"Lifebloom", "tank.buff.duration <= 4.5 & area(20).enemies >= 1", "tank"},

	{"Essence of G'Hanir", "lowest.area(30,75).heal >= 3 & player.combat"},	

    -- Rejuvenation
	{"Rejuvenation", "tank.health <= UI(tankrej) & !buff & player.health >= tank.health", "tank"},
	{"Rejuvenation", "tank2.health <= UI(tankrej) & !buff & player.health >= tank2.health & group.type == 3", "tank2)"},
	{"Rejuvenation", "player.health <= UI(lowestrej) & lowest.health >= player.health & !buff", "player"},	
	{"Rejuvenation", "lowest.health <= UI(lowestrej) & !buff & !is(player)", "lowest"},

	--Germination
	{"Rejuvenation", "talent(6,3) & tank.health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= tank.health", "tank"},
	{"Rejuvenation", "talent(6,3) & tank2.health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= tank2.health & group.type == 3", "tank2"},
	{"Rejuvenation", "talent(6,3) & player.health <= UI(lowestgerm) & lowest.health >= player.health & !buff(Rejuvenation (Germination))", "player"},	
	{"Rejuvenation", "talent(6,3) & lowest.health <= UI(lowestgerm) & !buff(Rejuvenation (Germination)) & !is(player)", "lowest"},

	{Innervate, "player.buff(Innervate)"},

}

local oocHealing = {

	--Dispell
	{"&%dispelall", "toggle(dispelall) & player.spell(Nature's Cure).cooldown < 0.3"},
	
    --MASS Ress
    {"Revitalize", "player.area(45).dead.friendly >= 1"},
    {"Revitalize", "!enemy & player & dead", "target"},
	
	--Clearcasting
	{"Regrowth", "player.buff(Clearcasting) & lowest.health <= 90", "lowest"},

	--Healing Touch
	{"Healing Touch", "tank.health <= UI(tankht) & player.health >= tank.health", "tank"},
	{"Healing Touch", "tank2.health <= UI(tankht) & player.health >= tank2.health & group.type == 3", "tank2"},
	{"Healing Touch", "player.health <= UI(lowestht) & lowest.health >= player.health", "player"},	
	{"Healing Touch", "lowest.health <= UI(lowestht) & !is(player)", "lowest"}, 
	
	--Regrowth
	{"Regrowth", "tank.health <= UI(tankreg) & !health > UI(tankreg) & player.health >= tank.health", "tank"},
	{"Regrowth", "tank2.health <= UI(tankreg) & !health > UI(tankreg) & player.health >= tank2.health & group.type == 3", "tank2"},
	{"Regrowth", "player.health <= UI(lowestreg) & !health > UI(lowestreg) & lowest.health >= player.health", "player"},
	{"Regrowth", "lowest.health <= UI(lowestreg) & !health > UI(lowestreg) & !is(player)", "lowest"},

    -- Rejuvenation
	{"Rejuvenation", "tank.health <= UI(tankrej) & !buff & player.health >= tank.health", "tank"},
	{"Rejuvenation", "tank2.health <= UI(tankrej) & !buff & player.health >= tank2.health & group.type == 3", "tank2)"},
	{"Rejuvenation", "player.health <= UI(lowestrej) & lowest.health >= player.health & !buff", "player"},	
	{"Rejuvenation", "lowest.health <= UI(lowestrej) & !buff & !is(player)", "lowest"},

	--Germination
	{"Rejuvenation", "talent(6,3) & tank.health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= tank.health", "tank"},
	{"Rejuvenation", "talent(6,3) & tank2.health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= tank2.health & group.type == 3", "tank2"},
	{"Rejuvenation", "talent(6,3) & player.health <= UI(lowestgerm) & lowest.health >= player.health & !buff(Rejuvenation (Germination))", "player"},	
	{"Rejuvenation", "talent(6,3) & lowest.health <= UI(lowestgerm) & !buff(Rejuvenation (Germination)) & !is(player)", "lowest"},

}

local Healing = { 

    --Revive
	{"Rebirth", "!enemy & dead & player & player.area(40).enemies >= 1 & player.combat", "target"},
	{"Rebirth", "player.area(40).dead.friendly >= 1 & player.area(40).enemies >= 1 & tank.health >= 40 & player.combat", "friendly"},

	--Dispell
	{"&%dispelall", "toggle(dispelall) & player.spell(Nature's Cure).cooldown < 0.3"},
	
	--Ironbark
	{"Ironbark", "tank.health <= UI(ironbark) & combat & player.incdmg(3) >= player.health.max*0.02", "tank"},
	{"Ironbark", "tank2.health <= UI(ironbark) & group.type == 3 & combat & player.incdmg(3) >= player.health.max*0.02", "tank2"},
	{"Barkskin", "player.health <= UI(ironbark) & combat & player.incdmg(3) >= player.health.max*0.02", "player"},
	{"Ironbark", "player.health <= UI(ironbark) & player.spell(Barkskin).cooldown > 0.2 & !player.buff(Barkskin) & combat & player.incdmg(3) >= player.health.max*0.02", "player"},
	
	--Swiftmend
	{"Swiftmend", "tank.health <= UI(tanksm) & player.health >= tank.health & combat & player.incdmg(3) >= player.health.max*0.02", "tank"},
	{"Swiftmend", "tank2.health <= UI(tanksm) & player.health >= tank2.health & group.type == 3 & combat & player.incdmg(3) >= player.health.max*0.02", "tank2"},
	{"Swiftmend", "player.health <= UI(lowestsm) & lowest.health >= player.health & combat & player.incdmg(3) >= player.health.max*0.02", "player"},
	{"Swiftmend", "lowest.health <= UI(lowestsm) & !is(player) & combat & player.incdmg(3) >= player.health.max*0.02", "lowest"},
	
	{"Lifebloom", "tank.buff.duration <= 4.5 & area(20).enemies >= 1", "tank"},
	
	{"Wild Growth", "area(30,75).heal >= 3", "lowest"},
	{"Essence of G'Hanir", "lowest.area(30,75).heal >= 3 & lowest.area(35).enemies >= 1"},	
	--Tranquility", "area(30,60.heal >= 3"},
	{"Flourish", "talent(7,3) & player.lastcast(Wild Growth) & lowest.health <= 50"}, 
	
    {"Regrowth", "player.buff(Clearcasting) & lowest.health <= 85 & !health >= 90", "lowestpredicted"},
	
	--Healing Touch
	{"Healing Touch", "tank.health <= UI(tankht) & player.health >= tank.health", "tank"},
	{"Healing Touch", "tank2.health <= UI(tankht) & player.health >= tank2.health & group.type == 3", "tank2"},
	{"Healing Touch", "player.health <= UI(lowestht) & lowest.health >= player.health", "player"},	
	{"Healing Touch", "lowest.health <= UI(lowestht) & !is(player)", "lowest"},

	--Regrowth
	{"Regrowth", "tank.health <= UI(tankreg) & !health > UI(tankreg) & player.health >= tank.health", "tank"},
	{"Regrowth", "tank2.health <= UI(tankreg) & !health > UI(tankreg) & player.health >= tank2.health & group.type == 3", "tank2"},
	{"Regrowth", "player.health <= UI(lowestreg) & !health > UI(lowestreg) & lowest.health >= player.health", "player"},
	{"Regrowth", "lowest.health <= UI(lowestreg) & !health > UI(lowestreg) & !is(player)", "lowest"},

    -- Rejuvenation
	{"Rejuvenation", "tank.health <= UI(tankrej) & !buff & player.health >= tank.health", "tank"},
	{"Rejuvenation", "tank2.health <= UI(tankrej) & !buff & player.health >= tank2.health & group.type == 3", "tank2)"},
	{"Rejuvenation", "player.health <= UI(lowestrej) & lowest.health >= player.health & !buff", "player"},	
	{"Rejuvenation", "lowest.health <= UI(lowestrej) & !buff & !is(player)", "lowest"},

	--Germination
	{"Rejuvenation", "talent(6,3) & tank.health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= tank.health", "tank"},
	{"Rejuvenation", "talent(6,3) & tank2.health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= tank2.health & group.type == 3", "tank2"},
	{"Rejuvenation", "talent(6,3) & player.health <= UI(lowestgerm) & lowest.health >= player.health & !buff(Rejuvenation (Germination))", "player"},	
	{"Rejuvenation", "talent(6,3) & lowest.health <= UI(lowestgerm) & !buff(Rejuvenation (Germination)) & !is(player)", "lowest"},
	
	{Innervate, "player.buff(Innervate)"},
	
}

local inCombat = {

    {"!/stopcasting", "casting(Unnerving Howl) & interruptAt(75)", "enemies"},
    {Shapeshift},
    {Survival, "player.health < 100"},
	{Keybinds, "range <= 40"},
	{Interrupts, "target.interruptAt(35) & toggle(interrupts)"},
	{Cooldowns, "toggle(cooldowns)"},
	{Moving, "range <= 40 & !UI(mc) & player.moving"},
	{Healing, "range <= 40 & {UI(mc) || !UI(mc) & !player.moving}"},
	{"!/stopcasting", "toggle(DPS) & lowest.health < UI(inter_dps_key_spin) & UI(inter_dps_key_check) & {player.casting(Starsurge) || player.casting(Lunar Strike) || player.casting(Solar Wrath)}"},
    {DPS,  "toggle(DPS)"},
	
}

local outCombat = {

    {Shapeshift},
	{Keybinds},
	{Moving, "range <= 40 & !UI(mc) & player.moving"},
	{oocHealing, "range <= 40 & {UI(mc) || !UI(mc) & !player.moving}"},	

}

NeP.CR:Add(105, {
  name = '[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Restoration',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="785", color="87CEFA"},	
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
