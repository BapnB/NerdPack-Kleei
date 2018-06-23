local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\fury.blp', width = 180, height = 180, offset = 175, y = -80, align = 'center'},

}

local GUI = {

	unpack(Logo_GUI),
	
    {type = 'header', size = 16, text = 'PvP', align = 'center'},
	{type = 'spacer'},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Commanding Shout:", key = "cs", check = true, spin = 30, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Die by the Sword:", key = "die", check = true, spin = 25, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Intimidating Shout:", key = "is", check = true, spin = 25, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Enraged Regeneration:", key = "enr_regen", check = true, spin = 40, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 5 sec|r", align = 'center'},
    {type = 'text', text = "Use Battle Cry"},
    {type = 'text', text = "Use Blood Fury:|c0000FA9A (Racial orc)"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

}

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r|cffffff00WARRIOR - Arms |r|c00FF0000 for Advanced Unlocker|r")
	print("|c0000FA9A ------------------------PVP-------------------------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/x - 2/x - 3/x - 4/x - 5/x - 6/x - 7/x")
    print("|c0000FA9A")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/3 - 3/1 - 4/1 - 5/2 - 6/3 - 7/2")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

	NeP.Interface:AddToggle({key = "WarStorm", name = "WarStorm", text = "Add Warbreaker and Bladestorm to AoE rotation", icon = "Interface\\Icons\\ability_warrior_bladestorm"})
	NeP.Interface:AddToggle({key = "STWarbreaker", name = "STWarbreaker", icon = "Interface\\Icons\\inv_sword_2h_artifactarathor_d_01"})

end

local pvp = {

    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & {target.faction.positive || target.faction.negative & player.pvp} & {player.state(stun) & player.spell(Every Man for Himself)cooldown > 0 & player.race = Human || player.state(stun) & !player.race = Human || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
	{"Charge", "inRange.spell", "target"},

}

local Keybinds = {
		-- Pause
	{"%pause", "keybind(alt)"},
	{"Heroic Leap", "keybind(lcontrol)" , "cursor.ground"},
}

local PreCombat = {

	{"!/stopattack", "target.immune_all || player.debuff(Sapped Soul)"}, --enemies.buff(213915)

    {"/startattack", "!isattacking & inmelee", "target"},
	{"Charge", "inRange.spell", "target"},
	{"Storm Bolt", "talent(2,2) & inRange.spell"},
	{"Rend", "talent(3,2) & inRange.spell & debuff(Rend).duration <= 5.5", "target"},

}

local Survival ={

	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & area(40).enemies >= 1", "player"}, --Health Stone
    {"Victory Rush", "player.health <= 85"},
	{"Enraged Regeneration", "target.inmelee & player.health <= UI(enr_regen_spin) & UI(enr_regen_check) & player.area(8).enemies > 0"},
	{"Commanding Shout", "player.health <= UI(cs_spin) & UI(cs_check) & player.area(8).enemies > 0"},
	{"Die by the Sword", "player.health <= UI(die_spin) & UI(die_check) & player.area(8).enemies > 0"},
	{"Intimidating Shout", "player.health <= UI(is_spin) & UI(is_check) & player.area(8).enemies > 0"},

}

local Interrupts = {

	{"Pummel", "inRange.spell", "target"},
	{"Storm Bolt", "range <= 8 & player.spell(Pummel).cooldown > 0 & !player.lastcast(Pummel)", "target"},

}

local Cooldowns = {

	{"Blood Fury", "target.inmelee & player.buff(Battle Cry)"},	-- Orc Racial during battle cry
	{"Berserking", "target.inmelee & player.buff(Battle Cry)"},	-- Troll Racial during battle cry
	{"Battle Cry", "target.inmelee & player.buff(Bloodlust) || player.buff(Shattered Defenses) || player.spell(Colossus Smash).cooldown > 0"}, -- battle cry during bloodlust || battle cry during shattered defenses || battle cry when colossus smashes are on cooldown

	{"Avatar", "talent(3,3) & target.inmelee"},					-- avatar
	{"#trinket1", "UI(trk1) & target.inmelee"},
	{"#trinket2", "UI(trk2) & target.inmelee"},

}

local Opener = {

	{"Charge"},
	{"Storm Bolt", "talent(2,2)"},
	{"Focused Rage"},
	{"Colossus Smash"},
	{"Focused Rage"},
	{"Battle Cry"},
	{"Avatar"},
	{"Mortal Strike"},
	{"Focused Rage"},
	{"Colossus Smash"},
	{"Slam"},
	{"Focused Rage"},
	{"Colossus Smash"},
	{"Slam"},
	{"Focused Rage"},
	{"Mortal Strike"},
	{"Slam"},

}

local AoE = {

	{"&Focused Rage", "talent(5,3) & player.buff(Focused Rage).stack < 3 & {player.buff(Battle Cry) || player.rage > 75}"}, 	-- Focused Rage in battle cry || Focused Rage Dump
	{"Warbreaker", "toggle(WarStorm) & player.spell(Bladestorm).cooldown < 0"}, 						-- Warbreaker (if Bladestorm is off Cooldown)
	{"Bladestorm", "toggle(WarStorm) & player.spell(Warbreaker).cooldown > 0"}, 					    -- Bladestorm after warbreaker
	{"Cleave", "player.area(6).enemies >= 7"},															-- Cleave spam with tonnes of adds
	{"Whirlwind", "player.area(6).enemies >= 7"},														-- Whirlwind spam with tonnes of adds
	{"Colossus Smash", "!player.buff(Shattered Defenses)"}, 											-- Colossus Smash
	{"&Focused Rage", "player.buff(Shattered Defenses) & player.buff(Focused Rage).stack < 3" }, 		-- Focused Rage for shattered defenses mortal strike
	{"Execute", "player.buff(Shattered Defenses) & target.health <= 20"},								-- Execute (if Shattered Defense is up)
	{"Mortal Strike", "player.buff(Shattered Defenses)"}, 												-- Mortal Strike (if Shattered Defense is up)
	{"Whirlwind", "player.buff(Cleave)"},																-- Whirlwind with Cleave Buff
	{"Cleave", "!player.buff(Cleave)"}, 																-- Cleave
	{"Whirlwind"}, 																						-- Whirlwind
}

local Execute = {

	{"&Focused Rage", "talent(5,3) & player.buff(Focused Rage).stack < 3 & {player.buff(Battle Cry) || player.rage > 75 || player.spell(Battle Cry).cooldown < 3}"}, -- Focused Rage in battle cry || Focused Rage Dump || Focused rage dump before battle cry
	{"Colossus Smash", "player.buff(Battle Cry) & !target.debuff(Colossus Smash)"},						-- Colossus Smash when no debuff on target
	{"Mortal Strike", "player.buff(Battle Cry) & player.buff(Focused Rage).stack > 2"},					-- Mortal Strike with 3 Focused Rage
	{"Execute", "player.buff(Battle Cry)"},																-- Execute during Battle Cry
	{"Colossus Smash", "!player.buff(Shattered Defenses)"}, 											-- Colossus Smash
	{"Warbreaker", "toggle(STWarbreaker) & !target.debuff(Colossus Smash)"},							-- Warbreaker (if target not debuffed by Colossus Smash Debuff)	
	{"Mortal Strike", "player.buff(Focused Rage).stack > 2"}, 											-- Mortal Strike is 3 stacks of Focused Rage
	{"Execute"}, 																						-- Execute dump
}

local ST = {

    {"Rend", "talent(3,2) & debuff(Rend).duration <= 5.5", "target"}, 									-- rend if about to fall off
	{"&Focused Rage", "talent(5,3) & player.buff(Focused Rage).stack < 3 & {player.buff(Battle Cry) || player.rage > 75 || player.spell(Battle Cry).cooldown < 3}"}, -- Focused Rage in battle cry || Focused Rage Dump || Focused rage dump before battle cry
	{"Colossus Smash", "!player.buff(Shattered Defenses)"}, 											-- Colossus Smash
	{"Warbreaker", "toggle(STWarbreaker) & !target.debuff(Colossus Smash)"}, 							-- Warbreaker (if target not debuffed by Colossus Smash debuff)
	{"&Focused Rage", "player.buff(Shattered Defenses) & player.buff(Focused Rage).stack < 3"}, 		-- Focused Rage for shattered defenses mortal strike
	{"Mortal Strike", "player.buff(Focused Rage).stack > 2"},											-- Mortal Strike with 3 Focused Rage
	{"Execute", "player.buff(Ayala's Stone Heart)"}, 													-- execute with legendary
	{"Mortal Strike"}, 																					-- Mortal Strike (regardless of stacks of focused rage)
	{"Overpower", "talent(1,2)"}, 																		-- overpower if talented
	{"Whirlwind", "talent(3,1) & player.buff(Battle Cry)"}, 											-- whirlwind with fervor talent and battle cry
	{"Slam", "player.buff(Battle Cry)"}, 																-- Slam with battle cry 
	{"Whirlwind", "talent(3,1) & player.rage > 32"},													-- whirlwind with fervor talent dump
	{"Slam", "player.rage > 32"},	                                                                    -- Slam dump

}

local inCombat = {

    {pvp},
	
    {"Hamstring", "inRange.spell & !debuff(Hamstring) & enemy & alive & {target.faction.positive || target.faction.negative & player.pvp}", "target"},
    
	{Keybinds},
    {Interrupts, "target.interruptAt(50) & toggle(interrupts) & target.infront & target.enemy & target.alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	{Survival, "player.health < 100"},

	{"/stopattack", "target.immune_all", "player"},

	{AoE, "target.range < 8 & toggle(aoe)"},
	{Execute, "target.range < 8 & target.infront & target.health <= 20"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	{ST, "target.inmelee & target.enemy & target.alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},

}

local outCombat = {

    {Keybinds},
	{PreCombat, "target.enemy & target.alive"},

}

NeP.CR:Add(71, {
	name = "[|cffffff00Kleei|r]|cffffff00 WARRIOR - Arms",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="750", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})