local unpack = _G.unpack

local keybind_list_1 = {

	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	
}

local keybind_list_2 = {

	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	

}

local keybind_list_3 = {

	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	

}

local keybind_list_4 = {

	{key = "10", text = "Shift Keybind"},
	{key = "11", text = "Control Keybind"},
	{key = "12", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	
}

local target_list_5 = {

	{key = "13", text = "On Self"},
	{key = "14", text = "On Focus"},
    {key = "15", text = "Lowest Member"},

}

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\feral.blp", width = 128, height = 128, offset = 90, y = -50, align = "center"},
	{type = "spacer"}, {type = "spacer"}, {type = "spacer"},

}
	
local GUI = {
    
	unpack(Logo_GUI),
	
	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "combo", default = "1", key = "list1", list = keybind_list_1, width = 100},	
	{type = "text", text = "Use Mighty Bash:|c0000FA9A in melee:"},
	{type = "text", text = "Use Maim:|c0000FA9A in melee:"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "4", key = "list2", list = keybind_list_2, width = 100},	
    {type = "text", text = "Use Wild Charge:|c0000FA9A ranged:|r"},
    {type = "text", text = "Use Skull Bash:|c0000FA9A ranged:|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "8", key = "list3", list = keybind_list_3, width = 100},
	{type = "text", text = "Thrash:|c0000FA9A AoE"},
    --{type = "text", text = "Dispel Self:|c0000FA9A "},
    --{type = "text", text = "Use Prowl:|c0000FA9A if you have [Incarnation] buff"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "combo", default = "12", key = "list4", list = keybind_list_4, width = 100},	
    {type = "text", text = "Regrowth:|c0000FA9A if have less than 88% HP:"},
	{type = "combo", default = "13",  key = "list5",  list = target_list_5,  width = 100},
	{type = "spacer"}, {type = "spacer"}, {type = "ruler"},
	
    {type = "header", size = 16,  text = "PVP", align = "center"},
    {type = "checkbox",	text = "Unroot:|c0000FA9A auto unroot Shapeshifting.|r", align = "left", key = "root", default = true},
    {type = "checkbox",	text = "Root:|c0000FA9A enemy PVP range >10 yd when free Entangling Roots.|r", align = "left", key = "roots_key", default = true},
    {type = "checkbox",	text = "Stun:|c0000FA9A auto stun PVP Target [Mighty Bash].|r", align = "left", key = "stun", default = true},		
    {type = "checkbox",	text = "Gladiator's Medallion:|c0000FA9A remove stun/fear/disorient/charm.|r", align = "left", key = "medal", default = true},
	{type = "spacer"}, {type = "ruler"},
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Survival Instincts:", key = "suin", check = true, spin = 75, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Regrowth|c0000FA9A (Predatory Swiftness):", key = "rps", check = true, spin = 55, width = 100, step = 5, max = 95, min = 1},
    {type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16, text = "AoE", align = "center"},
	{type = "spinner", text = "Brutal Slash:|c0000FA9A count enemies around you >=", key = "bs_aoe", default = 3, width = 100, step = 1, max = 15, min = 1},
	--{type = "spinner", text = "Thrash:|c0000FA9A count enemies around you >=", key = "thrash_key", default = 3, width = 100, step = 1, max = 15, min = 1},
	{type = "spinner", text = "Swipe:|c0000FA9A count enemies around you >=", key = "swipe_key", default = 5, width = 100, step = 1, max = 15, min = 1},
    {type = "text", text = "|c0000FA9A if artifact (Scent of Blood) is enabled|r"},
    {type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},
    {type = "checkbox",	text = "Berserk|c0000FA9A if not talented(5,2)|r", align = "left", key = "bers_key", default = true},
    {type = "checkbox",	text = "Incarnation: King of the Jungle|c0000FA9A if talented(5,2)|r", align = "left", key = "incarnation_key", default = true},
    {type = "checkbox",	text = "Ashamane's Frenzy", align = "left", key = "ashamane_key", default = true},
    {type = "checkbox",	text = "Tiger Fury|c0000FA9A if [Berserk], [Incarnation] buff is on|r", align = "left", key = "tiger_key", default = true},
    {type = "checkbox",	text = "Brutal Slash|c0000FA9A if talented(7,3)", align = "left", key = "brutal_key", default = true},
    {type = "checkbox",	text = "Berserking:|c0000FA9A Troll Racial|r", align = "left", key = "troll_key", default = true},
    {type = "spacer"}, {type = "ruler"},
 
	{type = "header", size = 16, text = "Trinkets", align = "center"},
	{type = "text", text = "|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r", align = "center"},
	{type = "checkbox", text = "Trinket #1", key = "trk1", default = false},
	{type = "checkbox", text = "Trinket #2", key = "trk2", default = false},
	{type = "text", text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "ruler"},

	--[[{type = "header", size = 16, text = "EWT cheat", align = "center"},
    {type = "checkbox",	text = "Always-Facing:|c0000FA9A if you use it check the box|r", align = "left", key = "allfacing", default = false},
	{type = "spacer"}, {type = "ruler"}, {type = "spacer"},]]

    {type = "text", text = "In combat:|c0000FA9A if your target is friendly and dead will use Rebirth to ress|r"},
    {type = "text", text = "Out of combat:|c0000FA9A if your target is friendly and dead will use Revive to ress|r"},

}

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A --- |r|c00FF7F00 DRUID - Feral |r")
	print("|c0000FA9A ------------------------PVP-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/2 - 2/3 - 3/1 - 4/1 - 5/2 - 6/2 - 7/2")
	print("|c0000FA9A --- |rRecommended Talents: 1/3 - 2/3 - 3/1 - 4/1 - 5/2 - 6/2 - 7/2")
    print("|c0000FA9A")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/2 - 2/3 - 3/1 - 4/1 - 5/1 - 6/2 - 7/2-- ST")
	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/3 - 3/1 - 4/1 - 5/1 - 6/2 - 7/2-- AoE")
	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it!|r")
	

	NeP.Interface:AddToggle({
		key = "target_key",
		icon = "Interface\\Icons\\ability_hunter_snipershot",
		name = "Auto Target",
		text = "Auto Target enemies around 15 yd if you are in combat",
	})
	
	NeP.Interface:AddToggle({
		key = "dot",
		icon = "Interface\\Icons\\ability_ghoulfrenzy",
		name = "Rip",
		text = "Include Rip in rotation",
	})

	NeP.Interface:AddToggle({
		key = "help_key",
		icon = "Interface\\Icons\\spell_nature_resistnature",
		name = "Heal Lowest",
		text = "Help healer to heal the team when 4 combo-points and proc the instant Regrowth",
	})

	NeP.Interface:AddToggle({
		key = "autopvp",
		name = "Auto Target PVP enemies",
		text = "Automatically Target PVP enemies for BG to avoid burst on enemy pets or totems.",
		icon = "Interface\\Icons\\spell_shadow_charm",
	})

	NeP.Interface:AddToggle({
		key = "travelform",
		icon = "Interface\\Icons\\ability_druid_travelform",
		name = "Auto Travel Form",
		text = "ON/OFF Auto Travel Form",
	})

end

local Moonfire = {

    {"%pause", "player.energy <= 29", "target"},
	{"Moonfire", "inRange.spell", "target"},

}

local Rip = {

    {"%pause", "player.energy <= 29", "target"},
	{"Rip", "inRange.spell", "target"},

}

local Savage_Roar = {

    {"%pause", "player.energy <= 39"},
	{"Savage Roar", "target.inRange(Rake).spell", "player"},
	
}

local Maim = {

    {"%pause", "player.energy <= 34", "target"},
	{"Maim", "inRange.spell", "target"},

}

local Swipe = {

    {"%pause", "player.energy <= 44 & !player.buff(Clearcasting)"},
    {"Swipe", nil},
	
}	
	
local Thrash = {

    {"%pause", "player.energy <= 49 & !player.buff(Clearcasting)"},
	{"Thrash", nil},
	
}

local Rake = {

    {"%pause", "player.energy <= 34", "target"},
    {"Rake", "inRange.spell & !immune_all & alive & enemy & {!target.player || target.faction.positive || target.faction.negative & player.pvp}", "target"},

}

local Shapeshift = {

    {"Cat Form", "!buff(Cat Form) & !keybind(alt) & {!player.swimming & !toggle(travelform) || player.indoors || player.state(root) & UI(root) || target.enemy & target.alive || player.area(15).enemies >= 1}", "player"},
	{"Bear Form", "!buff(Bear Form) & !buff(Prowl) & state(root) & UI(root)", "player"},

	{"/cancelform", "!buff(Prowl) & !indoors & swimming & !buff(Travel Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive || !target.exists} & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}", "player"},
	{"Travel Form", "!buff(Cat Form) & !indoors & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & swimming & {!target.enemy || target.enemy & !target.alive || !target.exists}", "player"},
	{"/cancelform", "toggle(travelform) & !indoors & !buff(Dash) & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive || !target.exists} & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}", "player"},
    {"Travel Form", "toggle(travelform) & !indoors & !buff(Dash) & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive || !target.exists} & !keybind(alt)", "player"},

}

local pvp = {

    {"!/targetenemy", "toggle(target_key) & player.area(15).enemies > 0 & player.combat & {!target.exists || target.dead}"},

    {"!/cleartarget", "toggle(autopvp) & exists & enemy & !player", "target"},
    {"!/targetenemyplayer", "toggle(autopvp) & !target.exists & range <= 45 & faction.positive", "enemies"},
    {"!/targetenemyplayer", "toggle(autopvp) & !target.exists & range <= 45 & faction.negative & player.pvp", "enemies"},

    {"!Gladiator's Medallion", "UI(medal) & {target.faction.positive || target.faction.negative & player.pvp} & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

	{"Entangling Roots", "UI(roots_key) & player.buff(Predatory Swiftness) & spell(Entangling Roots).casttime == 0 & inRange.spell & target.range >= 8 & enemy & alive & !immune_all & !immune_stun & !state(stun) & !state(root) & !state(fear) & !state(disorient) & !state(charm) & player.spell(Wild Charge).cooldown < 13.5 & player.spell(Wild Charge).cooldown > 0 & {!target.inRange(Skull Bash).spell || player.spell(Skull Bash).cooldown > 0} & {target.faction.positive || target.faction.negative & player.pvp}", "target"},
    {"%dispelself", "target.range >= 8.5 & enemy & alive & player.spell(Wild Charge).cooldown < 13.5 & {!target.inRange(Wild Charge).spell || player.spell(Wild Charge).cooldown > 0} & {!target.inRange(Skull Bash).spell || player.spell(Skull Bash).cooldown > 0} & {target.faction.positive || target.faction.negative & player.pvp}"},

}

local Keybinds = {

    {"/cancelform", "UI(list5)==15 & lowest.health <= 88 & !player.moving & !player.buff(Prowl) & !player.buff(Predatory Swiftness) & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Travel Form)} & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}"}, -- & player.mana.actual >= 49100 & target.pvp & player.pvp
	{"Regrowth", "UI(list5)==15 & lowest.health <= 88 & {!player.moving || player.buff(Predatory Swiftness)} & !player.buff(Prowl) & inRange.spell & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}", "lowest"}, -- & player.mana.actual >= 49100 & target.pvp & player.pvp
	{"/cancelform", "UI(list5)==13 & player.health <= 88 & !player.moving & !player.buff(Prowl) & !player.buff(Predatory Swiftness) & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Travel Form)} & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}"}, -- & player.mana.actual >= 49100 & target.pvp & player.pvp
	{"Regrowth", "UI(list5)==13 & player.health <= 88 & {!player.moving || player.buff(Predatory Swiftness)} & !player.buff(Prowl) & inRange.spell & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}", "player"},
	{"/cancelform", "UI(list5)==14 & focus.health <= 88 & focus.exists & !player.moving & !player.buff(Prowl) & !player.buff(Predatory Swiftness) & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Travel Form)} & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}"}, -- & player.mana.actual >= 49100 & target.pvp & player.pvp
	{"Regrowth", "UI(list5)==14 & focus.health <= 88 & {!player.moving || player.buff(Predatory Swiftness)} & !player.buff(Prowl) & inRange.spell & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}", "focus"},
	
    --{"%dispelself", "!player.buff(Prowl) & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}"},
    --{"Prowl", "!buff(Prowl) & buff(Cat Form) & buff(Incarnation: King of the Jungle) & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8 || target.immune_all}", "player"},
	{Thrash, "keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8"},

    {"Mighty Bash", "!player.buff(Prowl) & player.combat & !immune_stun & !state(stun) & inRange.spell & enemy & alive & {!target.immune_all || target.buff(Touch of Karma)} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || {target.faction.positive || target.faction.negative & player.pvp} & UI(stun)}", "target"},
	{Maim, "!player.buff(Prowl) & player.combopoints >= 3 & !target.immune_stun & !target.state(stun) & !player.lastcast(Mighty Bash) & player.spell(Mighty Bash).cooldown > 0 & target.alive & target.enemy & {!target.immune_all || target.buff(Touch of Karma)} & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	
	{"Skull Bash", "player.spell(Wild Charge).cooldown < 13.5 & player.spell(Wild Charge).cooldown > 0 & !player.buff(Prowl) & range > 8 & inRange.spell & enemy & alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp} & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Wild Charge", "inRange.spell & enemy & alive & !player.lastcast(Skull Bash) & {!target.player || target.faction.positive || target.faction.negative & player.pvp} & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	
}

local PreCombat = {

	{Rake, "!target.buff(Touch of Karma) & !target.immune_stun & {player.buff(Prowl) || player.spell(Prowl).cooldown > 0.5 & !player.buff(Shadowmeld) || player.buff(Shadowmeld)}"},
    
	{"Regrowth", "!buff(Prowl) & !lastcast(Prowl) & talent(7,2) & !buff(Bloodtalons) & {target.enemy & target.alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}} & {spell(Regrowth).casttime==0 || !player.moving}", "player"},
 	{"Prowl", "!buff(Prowl) & buff(Cat Form) & {!talent(7,2) || player.buff(Bloodtalons) || player.moving & !spell(Regrowth).casttime==0} & {target.enemy & target.alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}} || player.buff(Shadowmeld)", "player"},  --|| player.area(15).enemies >= 1

    {"%pause", "target.state(fear) & !player.buff(Prowl) || target.debuff(Polymorph) & !player.buff(Prowl) || target.immune_all", "player"},

    {"%dispelself", "!buff(Prowl)", "player"},
    {"Revive", "inRange.spell & !enemy & dead & player & player.ingroup(target)", "target"},

    {"Regrowth", "health <= 85 & !buff(Prowl) & {spell(Regrowth).casttime==0 || !player.moving}", "player"},

}

local Survival = {

	{"%dispelself", "!buff(Prowl) & area(10).enemies < 1", "player"}, -- can be used only on firestorm server being in cat form
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & area(40).enemies >= 1", "player"}, --Health Stone
    {"Regrowth", "health <= UI(rps_spin) & UI(rps_check) & !buff(Prowl) & buff(Predatory Swiftness) & spell(Regrowth).casttime==0", "player"},
    {"Survival Instincts", 	"health <= UI(suin_spin) & UI(suin_check) & !buff(Survival Instincts) & player.incdmg(3) >= player.health.max*0.05", "player"},
    {"Rebirth", "inRange.spell & !enemy & dead & player & player.ingroup(target) & player.area(40).enemies >= 1 & player.combat", "target"},

}

local Interrupts = {

	{"!Skull Bash", "interruptAt(50) & infront & inRange.spell & {!target.player || target.faction.positive || target.faction.negative & player.pvp}", "target"},

}

local Cooldowns = {

	{"&Tiger's Fury", "target.inRange(Rake).spell & UI(tiger_key) & {player.buff(Berserk) || player.buff(Incarnation: King of the Jungle)}", "player"},
	{"&Berserk", "!talent(5,2) & target.inRange(Rake).spell & player.energy > 40 & UI(bers_key)", "player"},
	{"&Incarnation: King of the Jungle", "talent(5,2) & target.inRange(Rake).spell & player.energy > 40 & UI(incarnation_key)", "player"},	
	{"&Berserking", "target.inRange(Rake).spell & UI(troll_key)", "player"},
	{"Ashamane's Frenzy", "inRange.spell & {player.combopoints <= 3 || player.buff(Tiger's Fury) || player.buff(Bloodtalons)} & UI(ashamane_key)", "target"},
	
	{"#trinket1", "UI(trk1) & target.inRange(Rake).spell"},
	{"#trinket2", "UI(trk2) & target.inRange(Rake).spell"},

}

local Cat_Combat = {

	{"!Tiger's Fury", "target.inRange(Rake).spell & {player.energydiff >= 60 & equipped(Chatoyant Signet) || player.energydiff >= 40 & !equipped(Chatoyant Signet)} & {talent(1,1) & {target.debuff(Rake) || target.debuff(Rip) || target.debuff(Thrash)} || !talent(1,1) & target.deathin >= 7}", "player"},
    
	{"Regrowth", "!toggle(help_key) & spell(Regrowth).casttime == 0 & talent(7,2) & !player.buff(Prowl) & !player.buff(Bloodtalons) & {talent(5,3) & player.combopoints >= 4 & target.debuff(Rip).duration < player.buff(Savage Roar).duration & !player.buff(Savage Roar).duration <= 10 || !talent(5,3) & {player.combopoints >= 4 || !target.debuff(Rake)}}", "player"},
    {"Regrowth", "toggle(help_key) & spell(Regrowth).casttime == 0 & talent(7,2) & !player.buff(Prowl) & !player.buff(Bloodtalons) & {talent(5,3) & player.combopoints >= 4 & target.debuff(Rip).duration < player.buff(Savage Roar).duration & !player.buff(Savage Roar).duration <= 10 || !talent(5,3) & {player.combopoints >= 4 || !target.debuff(Rake)}} & inRange.spell", "lowest"},
    
	--{Rake, "target.infront & player.buff(Prowl) & !target.buff(Touch of Karma)"}, --sometimes you enter in combat but you are still in stealth
	
    {"/startattack", "!isattacking & target.inmelee", "target"},	

	{"Brutal Slash", "talent(7,3) & player.combopoints <= 4 & {toggle(AoE) & {talent(3,1) & player.area(10).enemies >= UI(bs_aoe) || !talent(3,1) & player.area(5).enemies >= UI(bs_aoe)} || toggle(cooldowns) & !target.debuff(Rake).duration <= 4 & player.area(7).enemies >= 1 & UI(brutal_key) & {talent(5,3) & player.buff(Savage Roar) || !talent(5,3)}}"},
	{Thrash, "toggle(AoE) & !player.buff(Prowl) & artifact.enabled(Scent of Blood) & !player.buff(Scent of Blood) & !talent(7,3) & player.area(5).enemies >= UI(swipe_key) & {player.combopoints <= 4 || group.type >= 2}"},
	{Swipe, "toggle(AoE) & !talent(7,3) & player.buff(Scent of Blood) & artifact.enabled(Scent of Blood) & player.area(5).enemies >= UI(swipe_key)"}, -- & player.combopoints < 5
	
	{Savage_Roar, "talent(5,3) & player.buff(Savage Roar).duration <= 8 & {target.deathin > 10 & player.combopoints >= 4 || target.deathin <= 10 & player.combopoints > 1}"},
	{Rip, "toggle(dot) & {target.deathin >= 12 & !target.player || target.faction.positive || target.faction.negative & player.pvp} & {talent(6,1) & player.combopoints == 5 & !target.debuff(Rip) || !talent(6,1) & player.combopoints >= 4 & target.debuff(Rip).duration <= 9 & target.health >= 25 || player.combopoints >= 4 & !target.debuff(Rip) & target.health < 25}"},
	{Rake, "player.combopoints < 5 & {target.debuff(Rake).duration <= 4 || player.buff(Bloodtalons) & !player.lastcast(Rake)}"},	
	--{Rake, "target.range <= 7 & player.combopoints < 5 & player.buff(Bloodtalons) & !player.lastcast(Rake) & {UI(allfacing) || !UI(allfacing) & target.infront}", "target"},
	{Moonfire, "talent(1,3) & target.infront & !player.buff(Prowl) & target.debuff(Moonfire).duration <= 4 & player.combopoints < 5"},
	{"Ferocious Bite", "inRange.spell & {player.combopoints == 5 || talent(6,1) & player.combopoints >= 4 & target.debuff(Rip).duration <= 6 & target.debuff(Rip).duration >= 0.1}", "target"},
	{"Ferocious Bite", "inRange.spell & player.combopoints >= 4 & player.buff(Bloodtalons)", "target"},
	{"Shred", "!player.buff(Prowl) & inRange.spell & player.combopoints < 5", "target"}, --  & !player.buff(Bloodtalons)

}

local Bear_Combat = {
    
	{"/startattack", "!isattacking & inmelee & enemy & alive", "target"},
	
	{"&Maul", "inRange.spell", "target"},
    {"Frenzied Regeneration", "talent(3,2) & player.incdmg(5) > player.health *0.10 & !player.buff(Frenzied Regeneration)", "player"},
	{"Ironfur", "talent(3,2) & player.rage > 44 & player.incdmg.phys(3.5) > player.health *0.10", "player"},
	{"Mangle", "talent(3,2) & inRange.spell", "target"},
	{"Thrash", "player.area(10).enemies >= 1"},

}

local inCombat = {

    {Shapeshift},
	{pvp},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & !player.buff(Prowl) & !target.immune_all"},
    {Survival, "player.health < 100 & !player.buff(Prowl)"},
	{"%pause", "target.enemy & target.immune_all", "player"},	
	{Cooldowns, "toggle(cooldowns) & !player.buff(Shadowmeld) & !player.buff(Prowl) & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	{Cat_Combat, "player.buff(Cat Form) & target.alive & target.enemy & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	{Bear_Combat, "player.buff(Bear Form) & target.enemy & target.alive & {!target.player || target.faction.positive || target.faction.negative & player.pvp}"},
	
}

local outCombat = {	

    {Shapeshift},
	{pvp},
	{Keybinds},
	{PreCombat},

}

NeP.CR:Add(103, {
	name = "[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Feral|r Generic Unlocker",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})