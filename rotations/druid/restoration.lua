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

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\resto.blp", width = 160, height = 160, offset = 80, y = -50, align = "center"},

}

local GUI = {  
    
	unpack(Logo_GUI),
	{type = "spacer"},	{type = "spacer"},	{type = "spacer"},	
	{type = "header", size = 16, text = "Healing Settings", align = "center"},

	{type = "header", 	text = "Tanks", align = "center"},
	
	{type = "spinner", 	text = "Rejuvenation",                           key = "tankrej",  default = 85, step = 5, width = 100},
	{type = "spinner", 	text = "Germination", 	                         key = "tankgerm", default = 80, step = 5, width = 100},
	{type = "spinner", 	text = "Regrowth", 		                         key = "tankreg",  default = 75, step = 5, width = 100},	
	{type = "spinner", 	text = "Swiftmend", 	                         key = "tanksm",   default = 60, step = 5, width = 100},
	{type = "spinner", 	text = "Ironbark / Barkskin - tank / player",    key = "ironbark", default = 65, step = 5, width = 100},
	{type = "spinner", 	text = "Healing Touch:|c0000FA9A if talent 1,3", key = "tankht",   default = 75, step = 5, width = 100},

	{type = "header", 	text = "Lowests (player included)", align = "center"},

	{type = "spinner", 	text = "Rejuvenation",                                key = "lowestrej",  default = 85, step = 5, width = 100},
	{type = "spinner", 	text = "Germination", 	                              key = "lowestgerm", default = 80, step = 5, width = 100},
	{type = "spinner", 	text = "Regrowth", 		                              key = "lowestreg",  default = 75, step = 5, width = 100},	
	{type = "spinner", 	text = "Swiftmend", 	                              key = "lowestsm", 	 default = 60, step = 5, width = 100},
	{type = "spinner", 	text = "Healing Touch:|c0000FA9A if talent 1,3",      key = "lowestht",	 default = 75, step = 5, width = 100},
	{type = "spacer"}, 
	{type = "ruler"},
	{type = "spinner", 	text = "|c0000FA9A Healing Touch if Abundance buff count", key = "abun_key",	 default = 4, step = 1, max = 10, width = 100},
	{type = "ruler"}, {type = "spacer"},
	
	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "combo", default = "1",  key = "list1",  list = keybind_list_1, 	width = 100},		
	{type = "text", text = "Use Efflorescence:|c0000FA9A on cursor ground"},
	{type = "combo",	default = "5",  key = "list2", 	list = keybind_list_2, 	width = 100},			
    {type = "text", text = "Innervate:|c0000FA9A  in Combat only"},
	{type = "combo",	default = "9",  key = "list3", 	list = keybind_list_3, 	width = 100},		
    {type = "text", text = "Mass Entanglement / Entangling Roots:|c0000FA9A"},
    {type = "spacer"}, {type = "ruler"},

    {type = "header", size = 16,  text = "PVP", align = "center"},
    {type = "checkbox",	text = "Unroot: |c0000FA9A Auto unroot Shapeshifting.|r", align = "left", key = "unroot", default = true},	
    {type = "checkbox",	text = "Gladiator's Medallion:|c0000FA9A Remove stun/fear/disorient/charm.|r", align = "left", key = "medal", default = true},
	{type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16, text = "Survival", align = "center"},
    {type = "checkspin", text = "Use Renewal:", key = "ren", check = true, spin = 40, width = 100, step = 5, max = 95, min = 1},	
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Interrupt DPS:|c0000FA9A if lowest HP < |r", key = "inter_dps_key", check = true, spin = 75, width = 100, step = 5, max = 100, min = 1},
    {type = "checkbox",	text = "Root:|c0000FA9A Auto Root [Entangling Roots] or [Mass Entanglement].|r", align = "left", key = "root", default = false},
	{type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16, text = "Trinkets", align = "center"},
	{type = "text", text = "|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r", align = "center"},
	{type = "checkbox", text = "Trinket #1", 	key = "trk1",	default = false},
	{type = "checkbox", text = "Trinket #2", 	key = "trk2",   default = false},
	{type = "text", text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "ruler"},
 
	{type = "header", size = 16, text = "EWT cheat", align = "center"},
    {type = "checkbox",	text = "Moving-Cast:|c0000FA9A EWT cheat, if you use it check the box and it will cast when moving|r", align = "left", key = "mc", default = false},
    {type = "ruler"}, {type = "spacer"},
    {type = "text", text = "In combat:|c0000FA9A if your target is friendly and dead will use Rebirth to ress|r"},
    {type = "text", text = "Out of combat:|c0000FA9A if your target is friendly and dead will use Revive to ress|r"},

}
	
	--[[To Do : `@moltenhumi : only thing i´ve got mana problems. should give some target´s reju and then use healing touch when talent 1/3
	        and maybe set health for wild growth higher so that it´s more often used
            :Kleei - Today at 2:18 AM
              i'll add an spinner for it]]

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
--[[
	NeP.Interface:AddToggle({
		key = "hig_en",
		name = "Highest Enemies",
		text = "Disable if PVP enemies nearby.",
		icon = "Interface\\Icons\\achievement_boss_guarm",
	})
]]
	NeP.Interface:AddToggle({
		key = 'travelform',
		icon = 'Interface\\Icons\\ability_druid_travelform',
		name = 'Auto Travel Form',
		text = 'ON/OFF Auto Travel Form',
	})

end

local Shapeshift = {

    --{"Moonkin Form", "toggle(DPS) & !buff(Moonkin Form) & {!player.swimming & !toggle(travelform) || player.indoors || player.state(root) & UI(root) || target.enemy & target.alive}", "player"},
    {"/cancelform", "!toggle(DPS) & player.buff(Moonkin Form) || !toggle(travelform) & !player.swimming & player.buff(Travel Form) || buff(Cat Form) || buff(Bear Form)", "player"},
	{"Bear Form", "!buff(Bear Form) & !buff(Prowl) & state(root) & UI(unroot)", "player"},

	{"/cancelform", "!buff(Prowl) & !indoors & swimming & !buff(Travel Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive || !target.exists} & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}", "player"},
	{"Travel Form", "!indoors & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & swimming & {!health <= 85 || health <= 85 & spell(Regrowth).casttime==0 || player.moving} & {!target.enemy || target.enemy & !target.alive || !target.exists}", "player"},
	{"/cancelform", "toggle(travelform) & !indoors & !buff(Dash) & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive || !target.exists} & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}", "player"},
    {"Travel Form", "toggle(travelform) & !indoors & !buff(Dash) & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & {!health <= 85 || health <= 85 & spell(Regrowth).casttime==0 || player.moving} & {!target.enemy || target.enemy & !target.alive || !target.exists} & !keybind(alt)", "player"},

}

local Keybinds = {

	{"Mass Entanglement", "talent(4,2) & inRange.spell & !debuff(Mass Entanglement) & !debuff(Entangling Roots) & !player.lastcast(Entangling Roots) & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target"},
    {"Entangling Roots", "!debuff(Entangling Roots) & inRange.spell & !debuff(Mass Entanglement) & !player.lastcast(Mass Entanglement) & !player.lastcast(Entangling Roots) & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target"},

    {"Innervate", "combat & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "player"},

	{"Efflorescence", "keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2", "cursor.ground"},
	
}

local Survival = {

    {"Gladiator's Medallion", "UI(medal) & target.pvp & player.pvp & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

	{"Renewal", "player.health <= UI(ren_spin) & UI(ren_check) & area(40).enemies >= 1", "player"},
	{"Mass Entanglement", "talent(4,2) & range <= 7 & player.area(7).enemies >= 2 & UI(root) & !debuff(Mass Entanglement) & !debuff(Entangling Roots)", "enemies"},
    {"Entangling Roots", "range <= 7 & UI(root) & !debuff(Mass Entanglement) & !debuff(Entangling Roots) & !player.lastcast(Mass Entanglement) & !player.lastcast(Entangling Roots)", "enemies"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"}, --Health Stone	
	
}

local Interrupts = {
	
	{"!Typhoon", "talent(4,3) & interruptAt(35) & range <= 18", "target"},
	{"!Mighty Bash", "talent(4,1) & interruptAt(35) & inRange.spell", "target"},
	
}

local Cooldowns = {

	{"&Berserking", "combat", "player"},
    {"#trinket1", "UI(trk1) & target.range <= 40 & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.range <= 40 & target.deathin >= 10"},

}

local Innervate = {

	{"Rejuvenation", "!buff(Rejuvenation", "lowest"},
	{"Rejuvenation", "talent(6,3) & !buff(Rejuvenation (Germination))", "lowest"},
	
}

local DPS = {

	{"Sunfire",  "inRange.spell & target.area(3.5).enemies >= 2 & debuff(Sunfire).duration <= 2 & player.los(target) & enemy & alive", "target"},
    {"Moonfire", "!debuff & inRange.spell &  & player.los(target) & enemy & alive", "target"},
	{"Moonfire", "toggle(aoe) & !debuff & combat & inRange.spell & enemy & alive", "enemies"},
	
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
	{"Rebirth", "player.combat & inRange.spell & !enemy & dead & player & player.area(40).enemies >= 1", "target"},
    {"Rebirth", "player.combat & inRange.spell & player.area(40).enemies >= 1 & is(tank)", "deadgroupmember"},

	--Dispell
	{"&%dispelall", "toggle(dispelall) & player.spell(Nature's Cure).cooldown < 0.3"},
	
	--Ironbark
	{"Ironbark", "inRange.spell & health <= UI(ironbark) & combat & incdmg(3) >= health.max*0.02", "tank"},
	{"Ironbark", "inRange.spell & health <= UI(ironbark) & group.type == 3 & combat & incdmg(3) >= health.max*0.02", "tank2"},
	{"Barkskin", "health <= UI(ironbark) & combat & incdmg(3) >= health.max*0.02", "player"},
	{"Ironbark", "health <= UI(ironbark) & spell(Barkskin).cooldown > 0.2 & !buff(Barkskin) & combat & incdmg(3) >= health.max*0.02", "player"},
	
	--Swiftmend
	{"Swiftmend", "inRange.spell & health <= UI(tanksm) & player.health >= health & combat & incdmg(3) >= health.max*0.02", "tank"},
	{"Swiftmend", "inRange.spell & health <= UI(tanksm) & player.health >= health & group.type == 3 & combat & incdmg(3) >= health.max*0.02", "tank2"},
	{"Swiftmend", "health <= UI(lowestsm) & lowest.health >= health & combat & incdmg(3) >= health.max*0.02", "player"},
	{"Swiftmend", "inRange.spell & health <= UI(lowestsm) & !is(player) & !is(tank) & combat & incdmg(3) >= health.max*0.02", "lowest"},
	
	{"Lifebloom", "inRange.spell & buff.duration <= 4.5 & area(20).enemies >= 1 & {lowest.health >= 70 & group.type == 2 || group.type == 3}", "tank"},

	{"Essence of G'Hanir", "lowest.area(30,80).heal >= 3 & player.combat"},	

    -- Rejuvenation
	{"Rejuvenation", "inRange.spell & health <= UI(tankrej) & !buff & player.health >= health", "tank"},
	{"Rejuvenation", "inRange.spell & health <= UI(tankrej) & !buff & player.health >= health & group.type == 3", "tank2)"},
	{"Rejuvenation", "health <= UI(lowestrej) & !buff & lowest.health >= health", "player"},	
	{"Rejuvenation", "inRange.spell & health <= UI(lowestrej) & !buff & !is(player) & !is(tank)", "lowest"},

	--Germination
	{"Rejuvenation", "talent(6,3) & inRange.spell & health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= health", "tank"},
	{"Rejuvenation", "talent(6,3) & inRange.spell & health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= health & group.type == 3", "tank2"},
	{"Rejuvenation", "talent(6,3) & health <= UI(lowestgerm) & !buff(Rejuvenation (Germination)) & lowest.health >= health", "player"},	
	{"Rejuvenation", "talent(6,3) & inRange.spell & health <= UI(lowestgerm) & !buff(Rejuvenation (Germination)) & !is(player) & !is(tank)", "lowest"},

	{Innervate, "player.buff(Innervate)"},

}

local oocHealing = {

	--Dispell
	{"&%dispelall", "toggle(dispelall) & player.spell(Nature's Cure).cooldown < 0.3"},
	
    --MASS Ress
    {"Revitalize", "!player.combat & inRange(Revive).spell & !player.moving", "deadgroupmember"},
    {"Revitalize", "inRange(Revive).spell & !enemy & dead & player", "target"},

	--Clearcasting
    {"Regrowth", "inRange.spell & player.buff(Clearcasting) & health <= 85", "lowestpredicted"},

	--Healing Touch
	{"Healing Touch", "inRange.spell & health <= UI(tankht) & player.health >= health & talent(1,3) & player.buff(Abundance).count >= UI(abun_key)", "tank"},
	{"Healing Touch", "inRange.spell & health <= UI(tankht) & player.health >= health & talent(1,3) & player.buff(Abundance).count >= UI(abun_key) & group.type == 3", "tank2"},
	{"Healing Touch", "health <= UI(lowestht) & lowest.health >= health & talent(1,3) & buff(Abundance).count >= UI(abun_key)", "player"},	
	{"Healing Touch", "inRange.spell & health <= UI(lowestht) & !is(player) & !is(tank) & talent(1,3) & player.buff(Abundance).count >= UI(abun_key)", "lowest"}, 
	
	--Regrowth
	{"Regrowth", "inRange.spell & health <= UI(tankreg) & player.health >= health", "tank"},
	{"Regrowth", "inRange.spell & health <= UI(tankreg) & player.health >= health & group.type == 3", "tank2"},
	{"Regrowth", "health <= UI(lowestreg) & lowest.health >= health", "player"},
	{"Regrowth", "inRange.spell & health <= UI(lowestreg) & !is(player) & !is(tank)", "lowest"},

    -- Rejuvenation
	{"Rejuvenation", "inRange.spell & health <= UI(tankrej) & !buff & player.health >= health", "tank"},
	{"Rejuvenation", "inRange.spell & health <= UI(tankrej) & !buff & player.health >= health & group.type == 3", "tank2)"},
	{"Rejuvenation", "health <= UI(lowestrej) & !buff & lowest.health >= health", "player"},	
	{"Rejuvenation", "inRange.spell & health <= UI(lowestrej) & !buff & !is(player) & !is(tank)", "lowest"},

	--Germination
	{"Rejuvenation", "talent(6,3) & inRange.spell & health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= health", "tank"},
	{"Rejuvenation", "talent(6,3) & inRange.spell & health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= health & group.type == 3", "tank2"},
	{"Rejuvenation", "talent(6,3) & health <= UI(lowestgerm) & !buff(Rejuvenation (Germination)) & lowest.health >= health", "player"},	
	{"Rejuvenation", "talent(6,3) & inRange.spell & health <= UI(lowestgerm) & !buff(Rejuvenation (Germination)) & !is(player) & !is(tank)", "lowest"},

}

local Healing = { 

    --Revive
	{"Rebirth", "player.combat & inRange.spell & !enemy & dead & player & player.area(40).enemies >= 1", "target"},
    {"Rebirth", "player.combat & inRange.spell & player.area(40).enemies >= 1 & is(tank)", "deadgroupmember"},

	--Dispell
	{"&%dispelall", "toggle(dispelall) & player.spell(Nature's Cure).cooldown == 0.000"},
	
	--Ironbark
	{"Ironbark", "inRange.spell & health <= UI(ironbark) & combat & incdmg(3) >= health.max*0.02", "tank"},
	{"Ironbark", "inRange.spell & health <= UI(ironbark) & group.type == 3 & combat & incdmg(3) >= health.max*0.02", "tank2"},
	{"Barkskin", "health <= UI(ironbark) & combat & incdmg(3) >= health.max*0.02", "player"},
	{"Ironbark", "health <= UI(ironbark) & spell(Barkskin).cooldown > 0.2 & !buff(Barkskin) & combat & incdmg(3) >= health.max*0.02", "player"},
	
	--Swiftmend
	{"Swiftmend", "inRange.spell & health <= UI(tanksm) & player.health >= health & combat & incdmg(3) >= health.max*0.02", "tank"},
	{"Swiftmend", "inRange.spell & health <= UI(tanksm) & player.health >= health & group.type == 3 & combat & incdmg(3) >= health.max*0.02", "tank2"},
	{"Swiftmend", "health <= UI(lowestsm) & lowest.health >= health & combat & incdmg(3) >= health.max*0.02", "player"},
	{"Swiftmend", "inRange.spell & health <= UI(lowestsm) & !is(player) & !is(tank) & combat & incdmg(3) >= health.max*0.02", "lowest"},
	
	{"Lifebloom", "inRange.spell & buff.duration <= 4.5 & area(20).enemies >= 1 & {lowest.health >= 70 & group.type == 2 || group.type == 3}", "tank"},
	
	{"Wild Growth", "area(40,80).heal >= 2", "lowest"},
	{"Essence of G'Hanir", "lowest.area(40,80).heal >= 2 & lowest.area(40).enemies > 0"},	

	{"Flourish", "talent(7,3) & player.lastcast(Wild Growth) & lowest.health <= 50"}, 
	
    {"Regrowth", "inRange.spell & player.buff(Clearcasting) & health <= 85", "lowestpredicted"},
	
	--Healing Touch
	{"Healing Touch", "inRange.spell & health <= UI(tankht) & player.health >= health & talent(1,3) & player.buff(Abundance).count >= UI(abun_key)", "tank"},
	{"Healing Touch", "inRange.spell & health <= UI(tankht) & player.health >= health & talent(1,3) & player.buff(Abundance).count >= UI(abun_key) & group.type == 3", "tank2"},
	{"Healing Touch", "health <= UI(lowestht) & lowest.health >= health & talent(1,3) & buff(Abundance).count >= UI(abun_key)", "player"},	
	{"Healing Touch", "inRange.spell & health <= UI(lowestht) & !is(player) & !is(tank) & talent(1,3) & player.buff(Abundance).count >= UI(abun_key)", "lowest"},

	--Regrowth
	{"Regrowth", "inRange.spell & health <= UI(tankreg) & player.health >= health", "tank"},
	{"Regrowth", "inRange.spell & health <= UI(tankreg) & player.health >= health & group.type == 3", "tank2"},
	{"Regrowth", "health <= UI(lowestreg) & lowest.health >= health", "player"},
	{"Regrowth", "inRange.spell & health <= UI(lowestreg) & !is(player) & !is(tank)", "lowest"},

    -- Rejuvenation
	{"Rejuvenation", "inRange.spell & health <= UI(tankrej) & !buff & player.health >= health", "tank"},
	{"Rejuvenation", "inRange.spell & health <= UI(tankrej) & !buff & player.health >= health & group.type == 3", "tank2)"},
	{"Rejuvenation", "health <= UI(lowestrej) & !buff & lowest.health >= health", "player"},	
	{"Rejuvenation", "inRange.spell & health <= UI(lowestrej) & !buff & !is(player) & !is(tank)", "lowest"},

	--Germination
	{"Rejuvenation", "talent(6,3) & inRange.spell & health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= health", "tank"},
	{"Rejuvenation", "talent(6,3) & inRange.spell & health <= UI(tankgerm) & !buff(Rejuvenation (Germination)) & player.health >= health & group.type == 3", "tank2"},
	{"Rejuvenation", "talent(6,3) & health <= UI(lowestgerm) & !buff(Rejuvenation (Germination)) & lowest.health >= health", "player"},	
	{"Rejuvenation", "talent(6,3) & inRange.spell & health <= UI(lowestgerm) & !buff(Rejuvenation (Germination)) & !is(player) & !is(tank)", "lowest"},
	
	{Innervate, "player.buff(Innervate)"},
	
}

local inCombat = {

    {"!/stopcasting", "casting(Unnerving Howl) & interruptAt(75)", "enemies"},
    {Shapeshift},
    {Survival, "player.health < 100"},
	{Keybinds},
	{Interrupts, "toggle(interrupts)"},
	{Cooldowns, "toggle(cooldowns)"},
	{Moving, "!UI(mc) & player.moving"},
	{Healing, "UI(mc) || !UI(mc) & !player.moving"},
	{"!/stopcasting", "toggle(DPS) & lowest.health < UI(inter_dps_key_spin) & UI(inter_dps_key_check) & {player.casting(Starsurge) || player.casting(Lunar Strike) || player.casting(Solar Wrath)}"},
    {DPS,  "toggle(DPS)"},
	
}

local outCombat = {

    {Shapeshift},
	{Keybinds},
	{Moving, "!UI(mc) & player.moving"},
	{oocHealing, "UI(mc) || !UI(mc) & !player.moving"},	

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
