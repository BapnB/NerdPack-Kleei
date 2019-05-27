local unpack = _G.unpack

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\ww.blp", width = 305, height = 305, offset = 190, y = -90, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Leg Sweep:|c0000FA9A", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "1" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Summon Jade Serpent:|c0000FA9A on cursor ground", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "5" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Pause:|c0000FA9A ", key = "list3", width = 100, list = {
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

	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "H-Elixir/D-Magic/D-Harm:", key = "D_HE", check = true, spin = 50, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Health Stone:", key = "hs", check = true, spin = 25, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Ancient Healing Potion:", key = "D_AHP", check = true, spin = 35, width = 150, step = 5, max = 95, min = 1}, 
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "spinner", text = "   Enveloping Mist:", key = "HE_EM", width = 100, default = 60, step = 5, max = 100}, 
	{type = "spinner", text = "   Enveloping Mist + Thunder Focus Tea:", key = "HE_EMF", width = 100, default = 40, step = 5, max = 100},
	{type = "spinner", text = "   Enveloping Mist + Lifecycles:", key = "HE_EMLC", width = 100, default = 65, step = 5, max = 100},
	{type = "spinner", text = "   Vivify + Uplifting Trance:|c0000FA9A Single", key = "vivi_key", width = 100, default = 70, step = 5, max = 100},
    {type = "spinner", text = "   Effuse:", key = "HE_EFF", width = 100, default = 80, step = 5, max = 100},
	{type = "spinner", text = "   Sheilun's Gift:", key = "HE_SG", width = 100, default = 65, step = 5, max = 100},
	{type = "spinner", text = "|c0000FA9A   Sheilun's Gift Stacks:", key = "HE_SGS", width = 100, default = 5, step = 1, max = 12},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"}, 
	{type = "checkbox", text = "Revival:", key = "CD_REV", default = true}, 
	{type = "checkbox", text = "Invoke Chi-Ji:", key = "CD_CHI", default = true},
	{type = "checkspin", text = "Life Cocoon:", key = "CD_LC", width = 150, spin = 20, step = 5, max = 100, check = true}, 
	{type = "dropdown", text = "|c0000FA9A     Life Cocoon on UNIT:", key = "list4", width = 100, list = {
	{key = "LC_player", text = "Player"},
	{key = "LC_heal", text = "Healers"},
	{key = "LC_tank", text = "Tanks"},
	{key = "LC_healortank", text = "Healers/Tanks"},
	{key = "LC_focus", text = "Focus"},
	{key = "LC_anyone", text = "Anyone"},
	}, default = "LC_anyone" }, 
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
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

	{type = "header", size = 16, text = "DPS", align = "center"},
	{type = "spinner",	text = "DPS when lowest health >=",	key = "DPS_USE", width = 150, default = 90,	step = 5, max = 100},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

}

local exeOnLoad=function()

    print("|c0000FA9A ----------------------------------------------------------------------|r")
    print("|c0000FA9A --- |r"..ColorClass.." MONK - Mistweaver|r")
    print("|c0000FA9A --- |rRecommended Mythic+ Talents: 1/3 - 2/1 - 3/3 - 4/3 - 5/3 - 6/2 - 7/2")
    print("|c0000FA9A ----------------------------------------------------------------------|r")
    print("|c0000FA9A")
    print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
    print("|c0000FA9A Like my work ? buy me a beer or six|r|c00FF0000 https://www.paypal.me/thekleei|r")

    NeP.Interface:AddToggle({key = "dispell_key", icon = "Interface\\Icons\\ability_rogue_imrovedrecuperate", name = "Dispell", text = "|rToggle Dispell ON or OFF"})
    NeP.Interface:AddToggle({key = "DPS_key", icon = "Interface\\Icons\\ability_monk_risingsunkick", name = "DPS", text = "|rToggle DPS ON or OFF"})

end

local Keybinds = {

    {"%pause", "{keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "player"},
    {"!Leg Sweep", "area(5).enemies > 0 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "player"},
    {"!Summon Jade Serpent Statue", "{keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "cursor.ground"},

}

local Defensives = {

    -- Items
    {"#127834", "item(127834).count >= 1 & health <= UI(D_AHP_spin) & UI(D_AHP_check) & area(40).enemies >= 1", "player"},	-- Ancient Healing Potion
    {"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & area(40).enemies >= 1", "player"}, --Health Stone
    -- Spells
    {"Healing Elixir", "talent(5,1) & UI(D_HE_check) & health<=UI(D_HE_spin) & !lastcast.succeed", "player"},
    {"Defuse Magic", "talent(5,2) & UI(D_HE_check) & health <= UI(D_HE_spin)", "player"},
    {"Dampen Harm", "talent(5,3) & UI(D_HE_check) & health <= UI(D_HE_spin)", "player"},

}

local Interrupts = {

    {"!Paralysis", "inRange.spell", "target"},

}

local Cooldowns = {

    {"!Life Cocoon", "inRange.spell & !immune_heal & UI(CD_LC_check) & health <= UI(CD_LC_spin) & UI(list4)==LC_anyone", "lowest"},
    {"!Life Cocoon", "inRange.spell & !immune_heal & UI(CD_LC_check) & health <= UI(CD_LC_spin) & UI(list4)==LC_player", "player"},
    {"!Life Cocoon", "inRange.spell & !immune_heal & UI(CD_LC_check) & health <= UI(CD_LC_spin) & UI(list4)==LC_focus", "focus"},
    {"!Life Cocoon", "inRange.spell & !immune_heal & UI(CD_LC_check) & health <= UI(CD_LC_spin) & UI(list4)==LC_healortank", {"lowest(TANK)", "lowest(HEALER)"}},
    {"!Life Cocoon", "inRange.spell & !immune_heal & UI(CD_LC_check) & health <= UI(CD_LC_spin) & UI(list4)==LC_tank", "lowest(TANK)"},
    {"!Life Cocoon", "inRange.spell & !immune_heal & UI(CD_LC_check) & health <= UI(CD_LC_spin) & UI(list4)==LC_heal", "lowest(HEALER)"},

    {"!Revival", "UI(CD_REV) & isRaidDungeon & area(40,50).heal >= 6", "player"}, -- Raid
    {"!Revival", "UI(CD_REV) & isPartyDungeon & {player.area(40,65).heal >= 5 || player.area(40,60).heal >= 4 || player.area(40,50).heal >= 3}", "player"}, -- Dungeon

    {"!Invoke Chi-Ji, the Red Crane", "UI(CD_CHI) & talent(6,2) & area(40,60).heal >= 6 & isRaidDungeon", "player"}, -- Raid
    {"!Invoke Chi-Ji, the Red Crane", "UI(CD_CHI) & talent(6,2) & area(40,55).heal >= 3 & isPartyDungeon", "player"}, -- Dungeon

    {"&Mana Tea", "UI(CD_MTEA) & mana <= UI(CD_MTEAM_spin) & area(40,50).heal>= 6 & isRaidDungeon", "player"}, -- Raid
    {"&Mana Tea", "UI(CD_MTEA) & mana <= UI(CD_MTEAM_spin) & area(40,50).heal>= 3 & isPartyDungeon", "player"}, -- Dungeon

    {"&Arcane Torrent", "UI(CD_ARCT_check) & mana <= UI(CD_ARCT_spin)", "player"},
    {"#127835", "item(127835).count > 0 & UI(CD_MPOT_check) & mana <= UI(CD_MPOT_spin)", "player"}, -- mana potion

}

local Healing = {

    {"&Enveloping Mist", "inRange.spell & !immune_heal & !buff(Enveloping Mist) & health <= UI(HE_EMF) & spell.casttime == 0 & targettimeout(enveloping, 3)", "lowest"},
    {"&Vivify", "inRange.spell & !player.moving & !immune_heal & player.area(40,70).heal >= 2 & player.mana <= 70 & player.buff(Thunder Focus Tea)", "lowest"},
    {"&Effuse", "inRange.spell & !player.moving & !immune_heal & health >= UI(HE_EMF) & health <= UI(HE_EMF) + 20 & player.buff(Thunder Focus Tea) & buff(Enveloping Mist) & targettimeout(effuse, 3)", "lowest"},
    {"&Essence Font", "!lastcast(Thunder Focus Tea).succeed & !buff(Thunder Focus Tea) & area(25,75).heal >= 3", "player"},
    {"&Chi Wave", "player.area(40,80).heal >= 2 & health >= 45", "lowest"},

    {"&Thunder Focus Tea", "inRange(Enveloping Mist).spell & !immune_heal & !buff(Enveloping Mist) & health <= UI(HE_EMF)", "lowest"},
    {"&Sheilun's Gift", "inRange.spell & !player.moving & !immune_heal & spell(Sheilun's Gift).count >= UI(HE_SGS) & health <= UI(HE_SG)", "lowest"}, -- & !lastcast(Sheilun's Gift).succeed
    --{"&Thunder Focus Tea", "inRange(Vivify).spell & !player.moving & !immune_heal & player.area(40,70).heal >= 2 & player.mana <= 70", "lowest"},
	
    {"&Vivify", "inRange.spell & !player.moving & !immune_heal & talent(3,1) & player.buff(197916) & player.area(40,80).heal >= 2", "lowest"},
    {"&Vivify", "inRange.spell & !player.moving & !immune_heal & player.area(40,70).heal >= 2 & health >= 35", "lowest"},
    {"&Enveloping Mist", "inRange.spell & !player.moving & !immune_heal & !buff & health <= UI(HE_EM) & targettimeout(enveloping, 3)", "lowest"},
    {"&Enveloping Mist", "inRange.spell & !player.moving & !immune_heal & talent(3,1) & health <= UI(HE_EMLC) & player.buff(197919) & targettimeout(enveloping, 3)", "lowest"},

    {"&Renewing Mist", "inRange.spell & health >= 66 & !buff & {!player.lastcast(Effuse) & !lastcast(Effuse).succeed || player.moving & !player.channeling(Soothing Mist)} & {player.combat || indungeon & player.moving}", {"tank", "lowest"}}, -- & health <= UI(HE_RM)
    {"&Vivify", "inRange.spell & !player.moving & !immune_heal & health <= UI(vivi_key) & player.buff(Uplifting Trance) & !buff(Soothing Mist) & !lastcast.interrupted & targettimeout(LastEffuse, 3)", "lowest"}, 
    {"&Vivify", "inRange.spell & !player.moving & !immune_heal & health <= UI(vivi_key) & player.buff(Uplifting Trance) & !buff(Soothing Mist) & lastcast.interrupted & targettimeout(IntEffuse, 1.7)", "lowest"}, 
    {"&Effuse", "inRange.spell & !player.moving & !immune_heal & health <= UI(HE_EFF) & !buff(Soothing Mist) & !lastcast.interrupted & targettimeout(LastEffuse, 3)", "lowest"}, 
    {"&Effuse", "inRange.spell & !player.moving & !immune_heal & health <= UI(HE_EFF) & !buff(Soothing Mist) & lastcast.interrupted & targettimeout(IntEffuse, 1.7)", "lowest"}, 
	
}

local DPS = {

    {"/startattack", "inRange(Tiger Palm).spell & !isattacking", "target"},
    {"Spinning Crane Kick", "toggle(aoe) & !talent(3,2) & area(8).enemies >= 3", "player"},
    {"Rising Sun Kick", "inRange.spell & infront & canAttack", "target"},
    {"Blackout Kick", "inRange.spell & infront & canAttack & player.buff(Teachings Of The Monastery).count >= 3", "target"},
    {"Tiger Palm", "inRange.spell & infront & canAttack", "target"},
    {"&Tiger Palm", "inRange.spell & infront & canAttack & lowest.health >= UI(DPS_USE)", "target"},

}

local inCombat = {

    {Keybinds},
    {"*%dispelall", "toggle(dispell_key)"},
    {Defensives, "player.health < 100"},
    {Interrupts, "interruptAt(35) & toggle(Interrupts) & dungeon.interrupts", "target"},
    {Cooldowns, "toggle(Cooldowns)"},
    {Healing, "!player.casting(Essence Font)"},
    {DPS, "toggle(DPS_key)"},

}

local outCombat = {

    {Keybinds},
    {"*%dispelall", "toggle(dispell_key)"},
    {"&Reawaken", "!player.moving & !lastcast.succeed", "deadmember"},
    {Healing, "!player.casting(Essence Font)"},
	
}

NeP.CR:Add(270, {
    name = "["..ColorClass.."Kleei|r]"..ColorClass.." MONK - Mistweaver",
    ic = {{inCombat, "!player.buff(Food & Drink).any & !player.buff(Drink).any & !player.buff(Food).any"}},
    ooc = {{outCombat, "!player.buff(Food & Drink).any & !player.buff(Drink).any & !player.buff(Food).any"}},
    gui = GUI,
    gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
    wow_ver = "7.2.5",
    nep_ver = "1.11",
    load = exeOnLoad
})
