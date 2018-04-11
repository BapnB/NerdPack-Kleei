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

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\assassin.blp', width = 128, height = 128, offset = 90, y = -50, align = 'center'},

}

local GUI = {

	unpack(Logo_GUI),

    {type = 'spacer'},
	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = 'text', text = "Run /TargetEnemyPlayer:|c0000FA9A target Stealthed if have no target:|r"},
	{type = 'combo', default = '2', key = 'list1', list = keybind_list_1, width = 100},
	{type = 'text', text = "Use Sap:|c0000FA9A <= 10 yards, pause if already:|r"},
	{type = 'text', text = "Use Blind:|c0000FA9A in combat:"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = 'combo', default = '4', key = 'list2', list = keybind_list_2, width = 100},	
	{type = 'text', text = "Use Cheap Shot:|c0000FA9A Stealth:"},	
	{type = 'text', text = "Use Kidney Shot:|c0000FA9A in melee not in Stealth:"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "9", key = "list3", list = keybind_list_3, width = 100},		
    {type = "text", text = "Use Shadowstep:|c0000FA9A on target"},
	{type = "spacer"}, {type = "ruler"},
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    --{type = 'checkbox',	text = "Sap:|c0000FA9A auto Sap PVP Target.|r", align = 'left', key = 'sapp', default = true},
    {type = 'checkbox',	text = "Stun:|c0000FA9A auto stun PVP Target [Kidney Shot].|r", align = 'left', key = 'stun', default = true},
    {type = 'checkbox',	text = "Vanish:|c0000FA9A target PVP not stuned and [Kidney Shot] is on CD", align = 'left', key = 'van_no_stun', default = false},
	{type = 'checkbox',	text = "Blind:|c0000FA9A target PVP not stuned and [Vanish] is on CD", align = 'left', key = 'blind_no_van', default = false},
    {type = 'checkbox',	text = "Gladiator's Medallion , Every Man for Himself:", align = 'left', key = 'medal', default = true},
	{type = 'text', text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},

	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = "checkspin", text = "Use Feint:|c0000FA9A [Will of Valeera]", key = "fnt", check = true, spin = 30, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Vanish:', key = 'van', check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Crimson Vial:', key = 'cv', check = true, spin = 75, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Evasion:', key = 'eva', check = true, spin = 80, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},	
	
	{type = "header", size = 16, text = "Cooldowns Toggle:", align = 'center'},
    {type = "text", text = "Vendetta:"},
    {type = "text", text = "Blood Fury:"},
    {type = "text", text = "Berserking:"},
    {type = "text", text = "KingsBane:"},

	{type = 'header', size = 16, text = 'Other', align = 'center'},
	{type = 'checkbox', text = "Use Tricks of the Trade:|c0000FA9A in party on tank", key = "tott", default = true},
	{type = 'checkbox', text = "Pick Pocket:|c0000FA9A < 10 yards when you stand and don't move", key = 'pp',   default = false},
	{type = 'checkbox', text = "Poisons:|c0000FA9A <= 10 min.", 	key = 'pos',   default = true},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},	

	{type = 'header', size = 16, text = "Trinkets", align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},

} 

local exeOnLoad = function()

 	print('|c0000FA9A ----------------------------------------------------------------------|r')
 	print('|c0000FA9A --- |r|cffffff00ROGUE - Assassination|r')	
	print('|c0000FA9A ------------------------PVP-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/1 - 2/3 - 3/3 - 4/3 - 5/2 - 6/3 - 7/1')
    print('|c0000FA9A')
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
 	print('|c0000FA9A --- |rRecommended Talents: 1/1 - 2/2 - 3/3 - 4/1 - 5/1 - 6/2 - 7/1')
 	print('|c0000FA9A ----------------------------------------------------------------------|r')
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")

    NeP.Interface:AddToggle({
		key = "auto_target_key",
		name = "Auto Target PVE Enemies",
		text = "Automatically target the nearest enemy. Better works with advanced unlocker",
		icon = "Interface\\Icons\\ability_hunter_snipershot",
})

	NeP.Interface:AddToggle({
	key = 'Rupt',
	icon = 'Interface\\Icons\\ability_rogue_rupture',
	name = 'Rupture',
	text = 'Include Rupture  in rotation',

})

end

local Garrote = {

    {"%pause", "player.energy <= 44"},
    {"Garrote", "inRange.spell", "target"},

}

local Shadowstep = {

	{"Shadowstep", "inRange.spell & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target"},
	
}

local pvp_1v1 = {

    {"!Every Man for Himself", "UI(medal) & state(stun) & !buff(Stealth) & !buff(Vanish)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & !buff(Stealth) & !buff(Vanish) & {target.faction.positive || target.faction.negative & player.pvp} & {player.state(stun) & player.spell(Every Man for Himself)cooldown > 0 & player.race = Human || player.state(stun) & !player.race = Human || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
    
	{"Kidney Shot", "inRange.spell & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & UI(stun) & target.debuff(Cheap Shot).duration <= 0.5", "target"},

    {"Vanish", "!player.buff(Stealth) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & UI(van_no_stun) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & player.spell(Kidney Shot).cooldown >= gcd & !player.buff(Evasion)  & {target.class(Rogue) & player.spell(Blind).cooldown >= gcd || !target.class(Rogue)}"}, --test  & targettarget.is(player)
    {"Blind", "inRange.spell & !player.buff(Stealth) & !player.buff(Vanish) & !player.buff(Cloak of Shadows) & !target.debuff(Sap) & !target.debuff(Blind) & UI(blind_no_van) & !target.state(stun) & !target.state(disorient) & !player.lastcast(Kidney Shot) & !player.lastcast(Vanish) & player.spell(Kidney Shot).cooldown >= gcd & !target.immune(disorient) & !player.buff(Evasion)", "target"},-- & targettarget.is(player)

}

local Keybinds = {

	{"Sap", "target.enemy & inRange.spell & !target.state(stun) & !target.state(disorient) & !debuff(Sap) & !combat & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},

	{"/stopattack", "target.enemy & {target.state(disorient) & !player.buff(Stealth) || target.debuff(Blind) & !player.buff(Stealth) || target.player & player.buff(Vanish) || target.immune_all}"},

	{"Kidney Shot", "inRange.spell & !player.buff(Stealth) & !player.buff(Vanish) & player.combopoints >= 3 & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Blind", "inRange.spell & !player.buff(Stealth) & !player.buff(Vanish) & player.combat & {target.buff(Touch of Karma) || keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},

}

local PreCombat = {

    --Leveling
    {"Sinister Strike", "inRange.spell & {player.level < 8 || !keybind(alt) & !keybind(shift) & !keybind(control) & player.level >= 8 & player.level <= 11} & {!target.player || target.faction.positive || target.faction.negative & player.pvp}", "target"},
	--End Leveling

	{"Pick Pocket", "UI(pp) & inRange.spell & !isdummy & !player.moving & player.buff(Stealth) & !player.lastcast(Pick Pocket) & creatureType(Humanoid) & !target.player", "target"},	
	{"%pause", "target.debuff(Sap) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & {!target.player || target.player & player.pvp}"},	
	
    {"/stopattack", "{player.buff(Vanish) || player.buff(Stealth)} & target.buff(Touch of Karma)"},

	{"Cheap Shot", "inRange.spell & player.buff(Stealth) & {player.spell(Garrote).cooldown > 0 || !target.caster & {target.faction.positive || target.faction.negative & player.pvp} || keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Garrote", "inRange.spell & player.buff(Stealth) & {target.caster & {target.faction.positive || target.faction.negative & player.pvp} || !target.player}", "target"},
	
}

local Survival ={

	{"#neck", "equiped(Eternal Will of the Martyr) & !player.buff(Stealth) & !player.buff(Vanish) & player.health <= 40"},
    {"Blind", "inRange.spell & target.buff(Touch of Karma) & !player.buff(Stealth) & !player.buff(Vanish)", "target"}, -- || many more target CD's
    {"Vanish", "player.combat & !player.buff(Stealth) & player.health < target.health & player.health <= UI(van_spin) & UI(van_check)"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"Evasion", "player.health <= UI(eva_spin) & UI(eva_check) & !player.buff(Stealth) & !player.buff(Vanish) & player.incdmg.phys(5) >= 100000"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)"}, --Health Stone
    {"Feint", "!player.buff(Will of Valeera) & equipped(Will of Valeera) & player.health <= UI(fnt_spin) & UI(fnt_check) & !instanceType == pvp & !instanceType == arena"},
	
}

local Interrupts = {

   {"/stopattack", "player.buff(Vanish)", "player"},

	{"!Kick", "interruptAt(60) & target.inRange(Kick).spell & {player.level < 100 || !indungeon}", "target"},
	{"!Kick", "interruptAt(1) & inRange(Kick).spell & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent", "interruptAt(1) & inRange(Kick).spell & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent",	"interruptAt(60) & inRange(Kick).spell & {player.level < 100 || !indungeon}", "target"},

}

local Cooldowns = {

    {"/stopattack", "target.buff(Touch of Karma) || player.buff(Vanish) || target.immune_all", "player"},
	
	{"Vendetta", "target.inRange(Mutilate).spell & {artifact.enabled(Urge to Kill) & player.energy <= 60 || !artifact.enabled(Urge to Kill)}"},
    {"Blood Fury", "target.inRange(Mutilate).spell & target.deathin > 5"},
    {"Berserking", "target.inRange(Mutilate).spell"},
	{"Exsanguinate", "talent(6,3) & inRange.spell & target.deathin > 12 & target.debuff(Rupture).duration > 18 & debuff(Garrote).duration > 10", "target"},
	
	{"#trinket1", "UI(trk1) & target.inRange(Mutilate).spell & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.inRange(Mutilate).spell & target.deathin >= 10"},

}

local Combat = {

    {"/startattack", "!isattacking & target.inmelee"},
    {"Tricks of the Trade", "player.aggro & inRange(Tricks of the Trade).spell  & UI(tott) & player.los(tank) & {group.type == 3 || group.type == 2}", "tank"},

	--Dotting
	{"Hemorrhage", "talent(1,3) & inRange.spell & player.combopoints < 5 & target.debuff(Hemorrhage).duration <= 4", "target"},
	{"KingsBane", "player.combopoints < 5 & inRange.spell & {target.debuff(Vendetta) & target.deathin > 5 || spell(Vendetta).cooldown > 5 & target.deathin > 10}", "target"},
	{"Rupture", "toggle(AoE) & toggle(Rupt) & deathin > 12 & player.combopoints >= 3 & player.area(10).enemies <= 3 & player.area(10).enemies >= 2 & infront & inRange.spell & !pvp & !debuff", "enemies"},
	{"Rupture", "toggle(Rupt) & inRange.spell & target.deathin > 12 & player.combopoints >= 5 & {talent(6,3) & target.debuff(Rupture).duration <= 8 & player.spell(Exsanguinate).cooldown <= 33 || !target.debuff(Rupture) || !talent(6,3) & target.debuff(Rupture).duration <= 8}", "target"},
    {Garrote, "target.deathin > 10 & player.combopoints <= 4 & target.debuff(Garrote).duration <= 5 & {player.area(10).enemies <= 3 || !toggle(AoE)}", "target"}, --player.area(10).enemies <= 3

    {"Envenom", "talent(6,3) & player.combopoints >= 4 & player.spell(Exsanguinate).cooldown > 33", "target"},
	{"Death from Above", "talent(7,3) & inRange.spell & !player.buff(Stealth) & {!talent(3,1) & player.combopoints == 5 || talent(3,1) & player.combopoints == 6}", "target"},
	{"Envenom", "player.combopoints >= 4 & {talent(7,3) & spell(Death from Above).cooldown > 1 || !talent(7,3)} & {target.debuff(Rupture).duration > 9 || target.deathin < 12 || !toggle(Rupt) || player.area(5).enemies.infront >= 3}", "target"},

    {"Fan of Knives", "toggle(AoE) & player.combopoints < 5 & player.area(10).enemies >= 3"},
	{"Mutilate", "player.combopoints < 5 & {player.area(10).enemies <= 3 || !toggle(AoE)}"},

	{"Eviscerate", "player.level < 36 & player.combopoints == 5"},
    {"Sinister Strike", "player.level < 3 || player.combopoints <= 4 & player.level < 40"},
   
}

local Poisons = {

    {"!/stopcasting", "player.casting(Deadly Poison) & player.buff(Deadly Poison).duration > 600"},
	{"Deadly Poison", "!player.casting(Deadly Poison) & player.buff(Deadly Poison).duration <= 600"},
	{"!/stopcasting", "player.casting(Leeching Poison) & player.buff(Leeching Poison).duration > 600"},
	{"Leeching Poison", "talent(4,1) & !player.casting(Leeching Poison) & player.buff(Leeching Poison).duration <= 600"},
	{"!/stopcasting", "player.casting(Crippling Poison) & player.buff(Crippling Poison).duration > 600"},
	{"Crippling Poison", "!talent(4,1) & !player.casting(Crippling Poison) & player.buff(Crippling Poison).duration <= 600"},
	
}
	
local inCombat = {

    {Shadowstep},
	{"/stopattack", "player.pvp & target.player & target.enemy & target.alive & target.debuff(Blind) & !player.buff(Stealth)"},
    {pvp_1v1, "player.pvp & target.player & target.enemy & target.alive"},
    {Keybinds, "target.enemy & target.alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
    {Interrupts, "toggle(interrupts) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{"/stopattack", "target.enemy & target.alive & {target.faction.positive || target.faction.negative & player.pvp} & {!player.buff(Stealth) & {target.state(disorient) || target.state(incapacitate) || target.state(fear) || target.debuff(Polymorph)} || target.buff(Touch of Karma) || player.buff(Vanish) || target.immune_all}"},
	{Combat, "target.inmelee & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},

}

local outCombat = {

    {Shadowstep},
    {"/targetenemyplayer", "!target.exists & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}"},
	{"Stealth", "!player.buff(Stealth) & !player.buff(Vanish) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	{"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)"},
	{"/stopattack", "target.enemy & target.alive & {target.faction.positive || target.faction.negative & player.pvp} & {!player.buff(Stealth) & {target.state(disorient) || target.state(incapacitate) || target.state(fear) || target.debuff(Polymorph)} || target.buff(Touch of Karma) || player.buff(Vanish) || target.immune_all}"},
    {Keybinds, "target.enemy & target.alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	{PreCombat, "target.enemy & target.alive"},
	{Poisons, "!player.moving & UI(pos) & !player.buff(Vanish)"},

}

NeP.CR:Add(259, {
	name = '[|cffffff00Kleei|r]|cffffff00 ROGUE - Assassination',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="750", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
