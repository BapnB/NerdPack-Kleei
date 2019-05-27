local unpack = unpack

local Logo_GUI = {

    {type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\subtlety.blp", width = 280, height = 280, offset = 225, y = -105, align = "center"},

}

local GUI = {

    unpack(Logo_GUI),

    {type = "header", size = 16, text = "Keybinds", align = "center"},
    {type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
    {type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "dropdown", text = "Cheap Shot, Kidney Shot:|c0000FA9A mouseover", key = "list1", width = 100, list = {
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
    {type = "dropdown", text = "Feint:|c0000FA9A ", key = "list4", width = 100, list = {
    {key = "10", text = "Shift Keybind"},
    {key = "11", text = "Control Keybind"},
    {key = "12", text = "Alt Keybind"},
    {key = "none", text = "Disable"}, 
    }, default = "none" },
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "ruler"}, {type = "ruler"},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = "header", size = 16, text = "PVP", align = "center"},
    {type = "checkbox",	text = "Stun:|c0000FA9A auto stun PVP Target|r |c0000BFFF[Cheap Shot][Kidney Shot].|r", align = "left", key = "stun", default = true},
    {type = "checkbox",	text = "Sap:|c0000FA9A auto Sap PVP Target.|r", align = "left", key = "sap_key", default = true},
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
    {type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "ruler"}, {type = "ruler"},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------

    {type = "header", size = 16, text = "Survival", align = "center"},
    {type = "checkspin", text = "Use Feint:|c0000BFFF [Will of Valeera]", key = "fnt", check = false, spin = 55, width = 150, step = 5, max = 95, min = 1},
    {type = "checkspin", text = "Use Vanish:|c0000FA9A PVP only", key = "van", check = true, spin = 15, width = 150, step = 5, max = 95, min = 1},
    {type = "checkspin", text = "Use Crimson Vial:", key = "cv", check = true, spin = 30, width = 150, step = 5, max = 95, min = 1},
    {type = "checkspin", text = "Use Evasion:", key = "eva", check = true, spin = 45, width = 150, step = 5, max = 95, min = 1},
    {type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 25, width = 150, step = 5, max = 95, min = 1},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "ruler"}, {type = "ruler"},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------

    {type = "header", size = 16, text = "Cooldowns Toggle", align = 'center'},
    {type = "checkbox", text = "Thistle Tea:|c0000FA9A when energy < 40 and target boss or PVP enemy", key = "tea_key", default = false},
    {type = "checkbox", text = "Vanish:|c0000FA9A combo if equipped|r |c0000BFFF[Mantle of the Master Assassin]|r", key = "vanish_DFA_combo_key", default = true},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "ruler"}, {type = "ruler"},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------

    {type = "header", size = 16, text = "Other", align = "center"},
    {type = "checkbox", text = "Auto Stealth:|c0000FA9A when you have enemy target", key = "stealth_key", default = true},
    {type = "checkbox", text = "Use Tricks of the Trade:|c0000FA9A in party on tank", key = "tott", default = false},
    {type = "checkbox", text = "Interrupt:|c0000FA9A target instantly", key = "int_key", default = false},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "ruler"},{type = "ruler"},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = "header", size = 16, text = "Trinkets", align = "center"},
    {type = "text", text = "|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r", align = "center"},
    {type = "checkbox", text = "Trinket #1", 	key = "trk1",	default = false},
    {type = "checkbox", text = "Trinket #2", 	key = "trk2",   default = false},
    {type = "text", text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "ruler"}, {type = "ruler"},
    {type = "text", text = "", align = "center"}, --------------------------------------
    {type = "text", text = "", align = "center"}, --------------------------------------
	
} 

local exeOnLoad = function()

    print("|c0000FA9A ----------------------------------------------------------------------|r")
    print("|c0000FA9A --- |r"..ColorClass.." ROGUE - Subtlety|r")
    print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
    print("|c0000FA9A --- |rSupported Talents: 1/1 - 2/1 - 3/1 - 4/x - 5/x - 6/1 - 7/3")
    print("|c0000FA9A ----------------------------------------------------------------------|r")
    print("|c0000FA9A")
    print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
    print("|c0000FA9A Like my work ? buy me a beer or six|r|c00FF0000 https://www.paypal.me/thekleei|r")

    NeP.Interface:AddToggle({key = "dfa_strike", icon = "Interface\\Icons\\spell_rogue_deathfromabove", name = "Use Death from Above", text = "|rInclude |c0000BFFF[Death from Above]|r in rotation"})
    NeP.Interface:AddToggle({key = "prepot_key", icon = "Interface\\Icons\\trade_alchemy_dpotion_a28", name = "Use Potion/Flask", text = "|rThis will auto use \n|c0000BFFF[Flask of the Seventh Demon]|r\n|c0000BFFF[Potion of Prolonged Power]|r\n|c0000BFFF[Defiled Augment Rune]\n|rCooldowns Toggle should be ON."})
	
end

local Cheap_Shot = {

    {"%pause", "energy <= 39", "player"},
    {"Cheap Shot", nil, {"mouseover", "target"}},

}

local Shadowstrike = {

    {"%pause", "energy <= 39", "player"},
    {"Shadowstrike", nil, "target"},

}

local Feint = {

    {"%pause", "energy <= 34", "player"},
    {"Feint", nil, "player"},

}

local DFA = {

    {"&Blood Fury", "toggle(cooldowns)", "player"},
    {"Vanish", "toggle(cooldowns) & UI(vanish_DFA_combo_key) & equipped(Mantle of the Master Assassin) & !IsStealthed", "player"},
    {"Death from Above", nil, "target"},

}

local pvp = {

    {"!Every Man for Himself", "UI(medal) & state(stun) & !IsStealthed", "player"},
    {"!Gladiator's Medallion", "UI(medal) & !IsStealthed & target.player & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
	
}

local Keybinds = {
    
    {"Blind", "inRange.spell & canAttack & !player.buff(Vanish) & !immune_all & !immune_stun & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "mouseover"},
    {Feint, "buff(Feint).duration < 1 & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}", "player"},
    {"Shadowstep", "inRange.spell & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "mouseover"},
    {Cheap_Shot, "inRange(Cheap Shot).spell & target.canAttack & target.infront & !player.buff(Vanish) & !target.immune_all & !target.immune_stun & {IsStealthed || player.buff(Shadow Dance) || player.buff(Subterfuge)} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & target.player & !target.state(stun)}"},
    {"Kidney Shot", "inRange.spell & canAttack & infront & !IsStealthed & !player.buff(Shadow Dance) & !player.buff(Subterfuge) & !immune_all & !immune_stun & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || UI(stun) & player.combopoints >= 3 & !target.state(stun) & target.player}", {"mouseover", "target"}},
    {"Sap", "inRange.spell & canAttack & infront & UI(sap_key) & !player.buff(Vanish) & !immune_all & !immune_stun & !state(stun) & !state(disorient) & !state(incapacitate) & !combat & player", {"mouseover", "target"}},

}

local Survival ={

    {"Vanish", "player.combat & target.player & target.canAttack & !player.buff(Stealth) & player.health < target.health & player.health <= UI(van_spin) & UI(van_check)", "player"},
    {"Crimson Vial", "player.health <= UI(cv_spin) & UI(cv_check)", "player"},
    {"Evasion", "player.health <= UI(eva_spin) & UI(eva_check) & !player.buff(Stealth) & !player.buff(Vanish) & player.incdmg.phys(5) >= 100000", "player"},
    {"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)", "player"}, --Health Stone
    {Feint, "player.health <= UI(fnt_spin) & UI(fnt_check) & !player.buff(Food & Drink) & !player.buff(Will of Valeera) & equipped(Will of Valeera) & {!pvp.area || target.player & target.canAttack}"},
	
}

local Cooldowns ={

    {"#7676", "target.distance < 25 & UI(tea_key) & item(7676).count > 0 & energy < 40 & {target.boss || target.player}", "player"},
    {"Shadow Blades", "{target.inRange(Shadowstrike).spell & IsStealthed || target.inRange(Backstab).spell & !IsStealthed} & combopoints.deficit >= 3 & energy >= 34", "player"},
    {"Arcane Torrent", "target.distance < 7 & energy < 40 & {target.health.actual >= player.health.max || target.isdummy || target.player}", "player"},
    --{"Blood Fury", "target.inRange(Backstab).spell & !lastcast(Death from Above).succeed", "player"},
    {"Berserking", "target.inRange(Backstab).spell & !lastcast(Death from Above).succeed", "player"},
	
    {"#trinket1", "UI(trk1) & target.inRange(Backstab).spell & !lastcast(Death from Above).succeed"},
    {"#trinket2", "UI(trk2) & target.inRange(Backstab).spell & !lastcast(Death from Above).succeed"},

}

local Interrupts = {

    {"!Kick", "interruptAt(60) & target.inRange(Kick).spell", "target"},
    {"!Arcane Torrent", "interruptAt(60) & inRange(Kick).spell & player", "target"},

    {"!Kick", "interruptAt(1) & UI(int_key) & target.inRange(Kick).spell", "target"},
    {"!Arcane Torrent", "interruptAt(1) & UI(int_key) & inRange(Kick).spell & player", "target"},

}

local Combat = {

    {"/startattack", "!isattacking & target.inRange(Backstab).spell & !IsStealthed & !lastcast(Death from Above).succeed", "target"},
    {"Tricks of the Trade", "inRange.spell & indungeon & UI(tott) & combopoints.deficit <= 1 & player.energy >= 24 & !IsStealthed & !lastcast(Death from Above).succeed", "tank"},
	
	--Potion and Flask
    {"#Flask of the Seventh Demon", "toggle(cooldowns) & !lastcast(Death from Above).succeed & !buff(Flask of the Seventh Demon) & target.inRange(Backstab).spell & energy >= 34 & toggle(prepot_key)", "player"},
    {"#Potion of Prolonged Power", "toggle(cooldowns) & !lastcast(Death from Above).succeed & target.inRange(Backstab).spell & energy >= 34 & toggle(prepot_key)", "player"},
	{"#Defiled Augment Rune", "toggle(cooldowns) & !lastcast(Death from Above).succeed & !buff(Defiled Augmentation) & target.inRange(Backstab).spell & energy >= 34 & toggle(prepot_key) & timeout(propet, 3)", "player"},

	--Nightblade
    {"Nightblade", "inRange.spell & combopoints.deficit <= 1 & {target.health.actual >= player.health.max * 4 || target.isdummy || target.player} & !debuff & player.combat.time < 10 & !target.name(Fel Explosives) & player.buff(Symbols of Death).duration < 4", "target"},
    {"Nightblade", "inRange.spell & combopoints.deficit <= 1 & {target.health.actual >= player.health.max * 4 || target.isdummy || target.player} & !target.name(Fel Explosives) & {target.debuff(Nightblade).duration < 4 || spell(Death from Above).cooldown >= 3 & target.debuff(Nightblade).duration <= 7} & {player.buff(Finality: Eviscerate).duration > 2 || !artifact(Finality).enabled}", "target"}, -- & player.buff(Symbols of Death).duration < 4

    --Empower Death from Above
    {"/cast Shadow Dance", "buff(Shadow Dance).duration < 2 & buff(Finality: Eviscerate) & lastcast(Death from Above).succeed & {target.health.actual >= player.health.max * 0.6 || target.isdummy || target.player}", "player"},
    {"Symbols of Death", "target.inRange(Death from Above).spell & {combopoints.deficit < 4 || equipped(The First of the Dead) & !pvp.area & player.area(8).enemies < 3} & {target.health.actual >= player.health.max * 3 || target.isdummy || target.player} & {spell(Death from Above).cooldown <= 3 & {target.debuff(Nightblade).duration > 8 || target.deathin <= 10 & !target.isdummy} || spell(Death from Above).cooldown == 0 & {target.debuff(Nightblade).duration > 5.6 || target.deathin <= 10 & !target.isdummy}} & {player.buff(Finality: Eviscerate).duration > 5 || !artifact(Finality).enabled}", "player"},
    {"&Blood Fury", "toggle(cooldowns) & !toggle(dfa_strike) & target.inRange(Death from Above).spell & {combopoints.deficit < 4 || equipped(The First of the Dead) & !pvp.area & player.area(8).enemies < 3} & {target.health.actual >= player.health.max * 3 || target.isdummy || target.player} & {spell(Death from Above).cooldown <= 3 & {target.debuff(Nightblade).duration > 8 || target.deathin <= 10 & !target.isdummy} || spell(Death from Above).cooldown == 0 & {target.debuff(Nightblade).duration > 5.6 || target.deathin <= 10 & !target.isdummy}} & {player.buff(Finality: Eviscerate).duration > 5 || !artifact(Finality).enabled}", "player"},
	
	--Finishers
    {DFA, "toggle(dfa_strike) & spell(Death from Above).cooldown == 0 & !target.name(Krosus) & combopoints.deficit == 0 & {target.inRange(Death from Above).spell & !IsStealthed || target.distance < 7 & IsStealthed} & {target.health.actual >= player.health.max * 0.7 || target.isdummy || target.player} & {player.buff(Finality: Eviscerate).duration > 2 || !artifact(Finality).enabled}"},
    {"Eviscerate", "inRange.spell & combopoints.deficit <= 1 & {!toggle(dfa_strike) || !player.buff(Finality: Eviscerate) || target.name(Krosus) || spell(Death from Above).cooldown > 3 || target.health.actual < player.health.max * 0.7 & !target.isdummy & !target.player}", "target"},
	
	--Shadow Dance
    {"Shadow Dance", "target.inRange(Backstab).spell & !buff & !buff(Subterfuge) & !IsStealthed & combopoints.deficit > 2 & energy >= 34 & {!equipped(The First of the Dead) || equipped(The First of the Dead) & !lastcast(Symbols of Death).succeed} & {target.health.actual >= player.health.max * 0.4 || target.isdummy || target.player} & {spell(Shadow Dance).charges == 2 & {lastcast(Nightblade).succeed || lastcast(Eviscerate).succeed} || spell(Shadow Dance).charges == 2 & player.combat.time > 10 || spell(Shadow Dance).charges == 1 & shadow_dance_timing}", "player"}, -- & {player.area(8).enemies < 3 || !toggle(aoe)}
    
	--Energy ress
    {"Goremaw's Bite", "inRange.spell & combopoints.deficit > 2 & player.energy < 50 & {target.health.actual >= player.health.max * 3 || target.isdummy || target.player}", "target"},
	
	--Build Combo Points
    {"Shuriken Storm", "toggle(aoe) & combopoints.deficit > 0 & !lastcast(Vanish).succeed & !buff(Vanish) & {player.area(8).enemies >= 2 & !player.buff(Stealth) & !player.buff(Shadow Dance) & !player.buff(Subterfuge) || player.area(8).enemies >= 3 || player.buff(The Dreadlord's Deceit).count >= 30}", "player"},
    {Shadowstrike, "target.inRange(Shadowstrike).spell & player.combat & !target.player & {player.buff(Shadow Dance) || player.buff(Subterfuge)} & combopoints.deficit > 0"},
    {Shadowstrike, "{target.inRange(Backstab).spell & {!toggle(dfa_strike) || target.name(Krosus)} || target.inRange(Shadowstrike).spell & toggle(dfa_strike) & !target.name(Krosus)} & player.combat & !target.player & player.buff(Stealth) & combopoints.deficit > 0"},
    {"Shadowstrike", "{target.inRange(Backstab).spell & !player.combat || target.inRange(Shadowstrike).spell & target.player & !IsStealthed} & combopoints.deficit > 0", "target"},
    {"Backstab", "inRange.spell & combopoints.deficit > 0 & !IsStealthed", "target"},
    {"Gloomblade", "inRange.spell & combopoints.deficit > 0 & !IsStealthed", "target"},

}

local PreCombat = {

    {"Shadow Blades", "toggle(cooldowns) & target.distance < 10 & combopoints.deficit >= 2 & energy >= 34", "player"},
    {Combat},

}

local inCombat = {

    {pvp, "target.canAttack"},
    {"/stopattack", "buff(Vanish) & target.player & target.canAttack", "player"},
    {Keybinds},
    {Interrupts, "toggle(interrupts) & !IsStealthed & !lastcast(Death from Above).succeed"},
    {Survival, "player.health < 100"},
    {"%pause", "target.immune_all", "player"},
    {Cooldowns, "toggle(cooldowns) & target.canAttack"},
    {Combat, "target.canAttack & target.infront"},
    
}

local outCombat = {

    {pvp},
    {"/stopattack", "buff(Vanish) & target.player & target.canAttack", "player"},
    {"Stealth", "UI(stealth_key) & !state(dot) & !IsStealthed & target.canAttack & timeout(stealth_1, 1)", "player"},
    {"Crimson Vial", "health <= UI(cv_spin) & UI(cv_check) & !buff(Food & Drink) & {!equipped(Will of Valeera) || pvp.area}", "player"},
    {"Feint", "health <= 90 & !buff(Food & Drink) & !buff(Will of Valeera) & equipped(Will of Valeera) & !pvp.area", "player"},
    {"%pause", "target.immune_all", "player"},
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
