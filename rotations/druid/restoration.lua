local GUI = {  
	--------------------------------
	{type = 'header', 	text = 'Tanks', align = 'center'},											
	{type = 'spinner', 	text = 'Rejuvenation ',   key = 'tankrej',   default = 85},
	{type = 'spinner', 	text = 'Germination ', 	 key = 'tankgerm', 	 default = 80},
	{type = 'spinner', 	text = 'Regrowth', 		key = 'tankreg', 	 default = 75},	
	{type = 'spinner', 	text = 'Swiftmend', 	key = 'tanksm', 	 default = 60},
	{type = 'spinner', 	text = 'Ironbark / Barkskin - tank or player', key = 'ironbark', default = 65},
	{type = 'spinner', 	text = 'Healing touch',   key = 'tankht',	     default = 0},
	--------------------------------
	{type = 'ruler'}, {type = 'spacer'},
	--------------------------------
	{type = 'header', 	text = 'Lowests (player included)', align = 'center'},
	{type = 'spinner', 	text = 'Rejuvenation',   key = 'lowestrej',  default = 85},
	{type = 'spinner', 	text = 'Germination', 	 key = 'lowestgerm', 	default = 80},
	{type = 'spinner', 	text = 'Regrowth', 		key = 'lowestreg', 	default = 75},	
	{type = 'spinner', 	text = 'Swiftmend', 	 key = 'lowestsm', 	default = 60},
	{type = 'spinner', 	text = 'Healing touch',   key = 'lowestht',	    default = 0},
	--------------------------------
	{type = 'ruler'}, {type = 'spacer'},
	--------------------------------
	{type = 'header', 	text = 'DPS', align = 'center'},
	{type = 'spinner', 	text = 'Mana >=',  key = 'mana',  default = 60},
	--------------------------------
	{type = 'ruler'}, {type = 'spacer'},
	--------------------------------
	{type = 'header', text = 'Keybinds', align = 'center'},
	{type = 'text', text = 'Shift keybind = Efflorescence on cursor ground.'},
	{type = 'text', text = 'Control keybind = Innervate (inCombat only).'},
	{type = 'text', text = 'Alt keybind = Mass Entanglement on target.'},
	{type = 'text', text = 'In combat if your target is friendly and dead will use Rebirth to ress him.'},
	{type = 'text', text = 'In out of combat if your target is friendly and dead will use Revitalize to ress him.'},	
	
}

local exeOnLoad = function()
	
	print('|cffADFF2F ------------------------PVE-------------------------------------------|r')
	print('|cffADFF2F --- |r|c00FF7F00 DRUID - Restoration |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/1 - 2/1 - 3/1 - 4/X - 5/1 - 6/3 - 7/1')
	print('|cffADFF2F ----------------------------------------------------------------------|r')
	
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
		text = 'ON/OFF Do DMG when > xx% on LOWEST Health',
	})
	
end

local Keybinds = {

	{"Mass Entanglement", "talent(4,2) & keybind(alt)", "target"},
	
    {"Innervate", "keybind(control) & player.combat", "player"},
	
	{"Efflorescence", "keybind(shift)", "cursor.ground"},
	
}

local Survival = {

	--Renewal
	{"Renewal", "player.health <= 40", "player"},
    --Health stone (Warlock)
	{"#5512", "item(5512).count >= 1 & player.health <= 60", "player"},
	
}

local Interrupts = {
	
	{"Typhoon", "talent(4,3) & target.range <= 18"},
	
	{"Mighty Bash", "talent(4,1) & target.range <= 10"},
	
}

local Innervate = {

	{"Rejuvenation", "!buff(Rejuvenation", "lowest"},
	{"Rejuvenation", "talent(6,3) & !buff(Rejuvenation (Germination))", "lowest"},
	
}

local DPS = {

	{"Sunfire",  "target.area(6).enemies >= 2 & !target.debuff(Sunfire).duration > 2", "target"},
    {"Moonfire", "toggle(aoe) & !debuff & range <= 40", "enemies"}, 
    {"Moonfire", "!toggle(aoe) & !debuff & target.range <= 40", "target"},	

	{"Moonkin Form", "!player.buff(Moonkin Form)"},
	
	{"Starsurge", "player.buff(Moonkin Form)", "target"},
	{"Lunar Strike", "player.buff(Lunar Empowerment) & target.area(6).enemies >= 4", "target"},
	{"Solar Wrath", "player.buff(Solar Empowerment)", "target"},
	
	{"Solar Wrath", "player.buff(Moonkin Form)", "target"},
	
}

local Healing = { 

    --Revive
	{"Rebirth", "!target.enemy & target.dead & player.area(30).enemies >= 1", "target"},

	--Dispell
	{"&%dispelall", "toggle(dispelall) & player.spell(Nature's Cure).cooldown < 0.3"},
	
	--Ironbark
	{"Ironbark", "tank.health <= UI(ironbark)", "tank"},
	--{"Ironbark", "tank2.health <= UI(ironbark)", "tank2"},
	{"Barkskin", "player.health <= UI(ironbark)", "player"},
	{"Ironbark", "player.health <= UI(ironbark) & player.spell(Barkskin).cooldown > 0.2 & !player.buff(Barkskin)", "player"},
	
	--Swiftmend
	{"Swiftmend", "tank.health <= UI(tanksm) & player.health >= tank.health", "tank"},
	--{"Swiftmend", "tank2.health <= UI(tanksm) & player.health >= tank2.health", "tank2"},
	{"Swiftmend", "player.health <= UI(lowestsm) & lowest.health >= player.health", "player"},
	{"Swiftmend", "lowest.health <= UI(lowestsm) & !is(player)", "lowest"},
	
	{"Lifebloom", "tank.buff.duration <= 4.5", "tank"},
	
	{"Wild Growth", "area(30,75).heal >= 3", "lowest"},
	{"Essence of G'Hanir", "lowest.area(30,75).heal >= 3"},	
	--Tranquility", "area(30,60.heal >= 3"},
	{"Flourish", "talent(7,3) & player.lastcast(Wild Growth) & lowest.health <= 50"}, 
	
    {"Regrowth", "player.buff(Clearcasting) & lowest.health <= 85", "lowestpredicted"},
	
	--Regrowth
	{"Regrowth", "tank.health <= UI(tankreg) & player.health >= tank.health", "tank"},
	--{"Regrowth", "tank2.health <= UI(tankreg) & player.health >= tank2.health", "tank2"},
	{"Regrowth", "player.health <= UI(lowestreg) & lowest.health >= player.health", "player"},	
	{"Regrowth", "lowest.health <= UI(lowestreg) & !is(player)", "lowest"},

    -- Rejuvenation
	{"Rejuvenation", "tank.health <= UI(tankrej) & !buff & player.health >= tank.health", "tank"},
	--{"Rejuvenation", "tank2.health <= UI(tankrej) & !buff & player.health >= tank2.health", "tank2)"},
	{"Rejuvenation", "player.health <= UI(lowestrej) & lowest.health >= player.health & !buff", "player"},	
	{"Rejuvenation", "lowest.health <= UI(lowestrej) & !buff & !is(player)", "lowest"},

	--Germination
	{"Rejuvenation", "talent(6,3) & tank.health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= tank.health", "tank"},
	--{"Rejuvenation", "talent(6,3) & tank2.health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= tank2.health", "tank2"},
	{"Rejuvenation", "talent(6,3) & player.health <= UI(lowestgerm) & lowest.health >= player.health & !buff(Rejuvenation (Germination))", "player"},	
	{"Rejuvenation", "talent(6,3) & lowest.health <= UI(lowestgerm) & !buff(Rejuvenation (Germination)) & !is(player)", "lowest"},

	--Healing Touch
	{"Healing Touch", "tank.health <= UI(tankht) & player.health >= tank.health", "tank"},
	--{"Healing Touch", "tank2.health <= UI(tankht) & player.health >= tank2.health", "tank2"},
	{"Healing Touch", "player.health <= UI(lowestht) & lowest.health >= player.health", "player"},	
	{"Healing Touch", "lowest.health <= UI(lowestht) & !is(player)", "lowest"},
	
	{Innervate, "player.buff(Innervate)"},
	
}

local inCombat = {

    {Survival, "player.health < 100"},
	{Keybinds},
	{Interrupts, "target.interruptAt(35) & toggle(interrupts)"},	
	{Healing},
    {DPS,  "player.mana >=UI (mana) & target.enemy & target.alive & toggle(DPS)"},
	
}

local outCombat = {

	{Keybinds},
	
	--Dispell
	{"&%dispelall", "toggle(dispelall) & player.spell(Nature's Cure).cooldown < 0.3"},
	
    --MASS Ress
    {"Revitalize", "!target.enemy & target.dead", "target"},
	
	--Clearcasting
	{"Regrowth", "player.buff(Clearcasting) & lowest.health <= 90", "lowest"},
	
	--Regrowth
	{"Regrowth", "tank.health <= UI(tankreg) & player.health >= tank.health", "tank"},
	--{"Regrowth", "tank2.health <= UI(tankreg) & player.health >= tank2.health", "tank2"},
	{"Regrowth", "player.health <= UI(lowestreg) & lowest.health >= player.health", "player"},	
	{"Regrowth", "lowest.health <= UI(lowestreg) & !is(player)", "lowest"},

    -- Rejuvenation
	{"Rejuvenation", "tank.health <= UI(tankrej) & !buff & player.health >= tank.health", "tank"},
	--{"Rejuvenation", "tank2.health <= UI(tankrej) & !buff & player.health >= tank2.health", "tank2)"},
	{"Rejuvenation", "player.health <= UI(lowestrej) & lowest.health >= player.health & !buff", "player"},	
	{"Rejuvenation", "lowest.health <= UI(lowestrej) & !buff & !is(player)", "lowest"},

	--Germination
	{"Rejuvenation", "talent(6,3) & tank.health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= tank.health", "tank"},
	--{"Rejuvenation", "talent(6,3) & tank2.health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= tank2.health", "tank2"},
	{"Rejuvenation", "talent(6,3) & player.health <= UI(lowestgerm) & lowest.health >= player.health & !buff(Rejuvenation (Germination))", "player"},	
	{"Rejuvenation", "talent(6,3) & lowest.health <= UI(lowestgerm) & !buff(Rejuvenation (Germination)) & !is(player)", "lowest"},

	--Healing Touch
	{"Healing Touch", "tank.health <= UI(tankht) & player.health >= tank.health", "tank"},
	--{"Healing Touch", "tank2.health <= UI(tankht) & player.health >= tank2.health", "tank2"},
	{"Healing Touch", "player.health <= UI(lowestht) & lowest.health >= player.health", "player"},	
	{"Healing Touch", "lowest.health <= UI(lowestht) & !is(player)", "lowest"},
	
	--Cancel form when not swimming / Travel Form when swimming
	{"/cancelform", "!player.swimming & player.buff(Travel Form)"},
	{"/cancelform", "player.swimming & !player.buff(Prowl) & !indoors & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}"},
	{"Travel Form", "player.swimming & !player.buff(Cat Form) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form)"},

}

NeP.CR:Add(105, {
  name = '[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Restoration',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	wow_ver = '7.1.5',
 	nep_ver = '1.8',
	load = exeOnLoad
})
