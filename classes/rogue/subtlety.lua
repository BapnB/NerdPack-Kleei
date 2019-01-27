local unpack = unpack

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\subtlety.blp", width = 250, height = 250, offset = 250, y = -120, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Cheap Shot, Kidney Shot:|c0000FA9A ", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "1" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Blind:|c0000FA9A on mouseover", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "5" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Shadowstep:|c0000FA9A on mouseover", key = "list3", width = 100, list = {
	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"}, 
	}, default = "9" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Stun:|c0000FA9A auto stun PVP Target [Kidney Shot].|r", align = 'left', key = 'stun', default = true},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = "checkspin", text = "Use Feint:|c0000FA9A [Will of Valeera]", key = "fnt", check = true, spin = 30, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Vanish:', key = 'van', check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Crimson Vial:', key = 'cv', check = true, spin = 75, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Evasion:', key = 'eva', check = true, spin = 80, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Cooldowns Toggle", align = 'center'},
	{type = 'checkbox', text = "Thistle Tea:|c0000FA9A when energy < 40 and target boss or PVP enemy", key = "tea_key", default = true},
	{type = 'checkbox', text = "Sprint:|c0000FA9A if equipped [Thraxi's Tricksy Treads]", key = "sprint_key", default = true},
	{type = "checkbox", text = "Blood Fury:|c0000FA9A ORC Racial", key = "bloodfury_key", default = true},
	{type = "checkbox", text = "Berserking:|c0000FA9A Troll Racial", key = "berserking_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Other', align = 'center'},
	{type = 'checkbox', text = "Auto Stealth:|c0000FA9A when you have enemy target", key = "stealth_key", default = true},
	{type = 'checkbox', text = "Use Tricks of the Trade:|c0000FA9A in party on tank", key = "tott", default = true},
	{type = 'checkbox', text = "Pick Pocket:|c0000FA9A < 10 yards when you stand and don't move", 	key = 'pp',   default = false},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"},{type = "ruler"},
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
	
} 

local exeOnLoad = function()

 	print('|c0000FA9A ----------------------------------------------------------------------|r')
 	print("|c0000FA9A --- |r"..ColorClass.." ROGUE - Subtlety|r")
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
 	print('|c0000FA9A --- |rSupported Talents: 1/1 - 2/1 - 3/1 - 4/1 - 5/x - 6/1 - 7/3')
 	print('|c0000FA9A ----------------------------------------------------------------------|r')
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r")

    NeP.Interface:AddToggle({key = "Dotting", icon = "Interface\\Icons\\ability_rogue_nightblade", name = "Nightblade", text = "Include Nightblade in rotation"})
	
end

local Shadowstrike = {

    {"%pause", "energy <= 39", "player"},
	{"Shadowstrike", nil, "target"},

}

local pvp = {

    {"Every Man for Himself", "UI(medal) & state(stun) & !buff(Stealth) & !buff(Vanish)", "player"},        
    {"Gladiator's Medallion", "UI(medal) & !buff(Vanish) & !buff(Stealth) & {state(stun) & spell(Every Man for Himself)cooldown >= gcd & race = Human || state(stun) & !race = Human || state(fear) || state(disorient) || state(charm)}", "player"},        
	--{"/stopattack", "target.state(disorient) & !player.buff(Stealth) || target.debuff(Blind) & !player.buff(Stealth) || player.buff(Vanish)"},
    --{"Kidney Shot", "inmelee & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & UI(stun) & target.debuff(Cheap Shot).duration <= 0.5", "target"},

    --{"Vanish", "!player.buff(Stealth) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & UI(van_no_stun) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & player.spell(Kidney Shot).cooldown >= gcd & !player.buff(Evasion)  & {target.class(Rogue) & player.spell(Blind).cooldown >= gcd || !target.class(Rogue)}"}, --test  & targettarget.is(player)
    --{"Blind", "!player.buff(Stealth) & !player.buff(Vanish) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & !target.debuff(Blind) & UI(blind_no_van) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & !player.lastcast(Vanish) & player.spell(Kidney Shot).cooldown >= gcd & !target.immune(disorient) & !player.buff(Evasion)", "target"},-- & targettarget.is(player)

}

local Keybinds = {

	{"Shadowstep", "inRange.spell & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "mouseover"},
	---------------TO-DO----need-to-%pause-until-Cheap Shot-is-ready-------------------
	{"Cheap Shot", "inRange.spell & canAttack & infront & !player.buff(Vanish) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & target.player & !target.state(stun)}", {"mouseover", "target"}},
	{"Kidney Shot", "inRange.spell & canAttack & infront & !IsStealthed & !player.buff(Shadow Dance) & !player.buff(Subterfuge) & player.combopoints >= 3 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & !target.state(stun) & target.player}", {"mouseover", "target"}},
	{"Sap", "inRange.spell & canAttack & infront & UI(sap_key) & !player.buff(Vanish) & !state(stun) & !state(disorient) & !state(incapacitate) & !combat & player", {"mouseover", "target"}},
	{"Blind", "inRange.spell & canAttack & !player.buff(Vanish) & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "mouseover"},

}

local Survival ={

    {"Blind", "target.buff(Touch of Karma) & !player.buff(Stealth) & !player.buff(Vanish)", "target"}, -- || many more target CD's
    {"Vanish", "player.combat & !player.buff(Stealth) & player.health < target.health & player.health <= UI(van_spin) & UI(van_check)"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"Evasion", "player.health <= UI(eva_spin) & UI(eva_check) & !player.buff(Stealth) & !player.buff(Vanish) & player.incdmg.phys(5) >= 100000"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)"}, --Health Stone
    {"Feint", "!player.buff(Will of Valeera) & equipped(Will of Valeera) & player.health <= UI(fnt_spin) & UI(fnt_check) & !instanceType == pvp & !instanceType == arena"},
	
}

local Cooldowns ={

    {"#7676", "target.inRange(Shadowstrike).spell & UI(tea_key) & item(7676).count > 0 & energy < 40 & {target.boss || target.player}", "player"},
	{"Shadow Blades", "target.inRange(Backstab).spell", "player"},
	{"Arcane Torrent", "target.inRange(Shadowstrike).spell & energy < 50 & deathin > 10", "player"},
	--{"Vanish", "target.inRange(Backstab).spell & combopoints.deficit == 0 & spell(Death from Above).cooldown == 0 & equipped(Mantle of the Master Assassin) & {player.buff(Finality: Eviscerate).duration > 2 || !artifact(Finality).enabled}", "player"},
	{"Blood Fury", "UI(bloodfury_key) & target.inRange(Sinister Strike).spell", "player"},
    {"Berserking", "UI(berserking_key) & target.inRange(Sinister Strike).spell", "player"},
	
}

local Interrupts = {

	{"!Kick", "interruptAt(60) & target.inRange(Kick).spell", "target"},
	{"!Arcane Torrent",	"interruptAt(60) & inRange(Kick).spell", "target"},

}

local Combat = {

	{"Shadow Blades", "toggle(cooldowns) & target.inRange(Shadowstrike).spell & {player.buff(Stealth) || player.buff(Shadow Dance) || player.buff(Subterfuge)}", "player"},	

    {"/startattack", "!isattacking & target.inmelee"},
    {"Tricks of the Trade", "inRange.spell & player.aggro & indungeon & player.los(tank) & !player.buff(Stealth)", "tank"},

    --Empower Death from Above
	{"/cast Shadow Dance", "buff(Shadow Dance).duration < 2 & player.buff(Finality: Eviscerate) & lastcast(Death from Above).succeed", "player"},
	
	{"Symbols of Death", "target.inRange(Death from Above).spell & combopoints.deficit < 4 & deathin > 10 & {spell(Death from Above).cooldown <= 3 & !combopoints.deficit == 0 || spell(Death from Above).cooldown == 0} & {target.debuff(Nightblade).duration > 5 || target.deathin <= 10} & {player.buff(Finality: Eviscerate).duration > 5 || !artifact(Finality).enabled}", "player"},	
	
	--Finishers  
	{"Nightblade", "toggle(Dotting) & inRange.spell & combopoints.deficit == 0 & deathin > 12 & health.max >= player.health.max * 0.9 & !debuff & player.combat.time < 10 & !target.name(Fel Explosives) & player.buff(Symbols of Death).duration < 4", "target"},
	{"Nightblade", "toggle(Dotting) & inRange.spell & combopoints.deficit == 0 & deathin > 12 & health.max >= player.health.max * 0.9 & !target.name(Fel Explosives) & player.buff(Symbols of Death).duration < 4 & {target.debuff(Nightblade).duration < 4 || spell(Death from Above).cooldown > 0 & target.debuff(Nightblade).duration < 6} & {player.buff(Finality: Eviscerate).duration > 2 || !artifact(Finality).enabled}", "target"},
	--wait if Symbols of Death is still in cd and have left 3 sec 
	{"%pause", "combopoints.deficit == 0 & spell(Symbols of Death).cooldown > 0 & spell(Symbols of Death).cooldown <= 3 & {target.debuff(Nightblade).duration > 2 || target.deathin <= 10} & {player.buff(Finality: Eviscerate).duration > 2 || !artifact(Finality).enabled}", "player"},
	{"Death from Above", "inRange.spell & combopoints.deficit == 0 & {player.buff(Finality: Eviscerate).duration > 2 || !artifact(Finality).enabled}", "target"},
	--wait if DFA is still cd and have left 3 sec 
	{"%pause", "combopoints.deficit == 0 & spell(Death from Above).cooldown > 0 & spell(Death from Above).cooldown <= 3 & {target.debuff(Nightblade).duration > 2 || target.deathin <= 10} & {player.buff(Finality: Eviscerate).duration > 2 || !artifact(Finality).enabled}", "player"},
	{"Eviscerate", "inRange.spell & combopoints.deficit == 0", "target"},
	
	--Shadow Dance || spell(Shadow Dance).charges == 2 & !toggle(cooldowns)
    {"Shadow Dance", "target.inRange(Shadowstrike).spell & !buff & !buff(Subterfuge) & !IsStealthed & combopoints.deficit > 0 & energy >= 34 & {spell(Shadow Dance).charges == 2 & {lastcast(Nightblade).succeed || lastcast(Eviscerate).succeed} || spell(Shadow Dance).charges == 2 & player.combat.time > 10 || spell(Shadow Dance).charges == 1 & shadow_dance_timing}", "player"},
    
	--Energy ress
	{"Goremaw's Bite", "inRange.spell & player.combopoints <= 3 & player.energy < 50 & deathin > 10", "target"},
	
	--Build Combo Point
	--Fel Explosives
	{Shadowstrike, "target.inRange(Shadowstrike).spell & target.name(Fel Explosives) & {player.buff(Stealth) || player.buff(Shadow Dance) || player.buff(Subterfuge)} & combopoints.deficit > 0"},
	{"Backstab", "inRange.spell & combopoints.deficit > 0 & target.name(Fel Explosives)", "target"},
	{"Gloomblade", "inRange.spell & combopoints.deficit > 0 & target.name(Fel Explosives)", "target"},
	
	{"Shuriken Storm", "toggle(aoe) & combopoints.deficit > 0 & {player.area(10).enemies >= 3 || player.buff(The Dreadlord's Deceit).count >= 30}", "player"},
	{Shadowstrike, "target.inRange(Shadowstrike).spell & player.combat & {player.buff(Stealth) || player.buff(Shadow Dance) || player.buff(Subterfuge)} & combopoints.deficit > 0"},
	{"Shadowstrike", "target.distance < 7 & !player.combat & combopoints.deficit > 0", "target"},
	{"Backstab", "inRange.spell & combopoints.deficit > 0 & !IsStealthed", "target"},
	{"Gloomblade", "inRange.spell & combopoints.deficit > 0 & !IsStealthed", "target"},

}

local PreCombat = {

	{"Pick Pocket", "inRange.spell & UI(pp) & !player.moving & creatureType(Humanoid) & !islooting & !player & !isdummy & targettimeout(pocket, 2)", "target"},		
   
	{"Shadow Blades", "toggle(cooldowns) & target.inRange(Backstab).spell", "player"},
	{Combat},

}

local inCombat = {

    {"*%target", "inRange(Backstab).spell & canAttack & !IsStealthed & {!target.exists || target.dead}", "enemies"},
    {"*%target", "inRange(Shadowstrike).spell & name(Fel Explosives) & !target.name(Fel Explosives)", "enemies"},
	
    {pvp, "target.player & target.canAttack"},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & !IsStealthed"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack"},
	{Combat, "target.canAttack & target.infront"},
    
}

local outCombat = {

    {pvp},
	{"Stealth", "UI(stealth_key) & !state(dot) & !IsStealthed & target.canAttack", "player"},
	{"Crimson Vial", "health <= UI(cv_spin) & UI(cv_check) & !buff(Food & Drink) & {!equipped(Will of Valeera) || pvp.area}", "player"},
    {"Feint", "health <= 80 & !buff(Food & Drink) & !buff(Will of Valeera) & equipped(Will of Valeera) & !pvp.area", "player"},
    {Keybinds},
	{PreCombat, "target.canAttack & target.infront"},

}

NeP.CR:Add(261, {
	name = "["..ColorClass.."Kleei|r]"..ColorClass.." ROGUE - Subtlety",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.2.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})
