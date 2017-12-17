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

local keybind_list_4 = {

	{key = '10', text = 'Shift Keybind'},
	{key = '11', text = 'Control Keybind'},
	{key = '12', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},
	
}

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\feral.blp', width = 128, height = 128, offset = 90, y = -50, align = 'center'},
	{type = 'spacer'}, {type = 'spacer'}, {type = 'spacer'}, {type = 'ruler'},

}
	
local GUI = {
    
	unpack(Logo_GUI),
	
	{type = 'spacer'},
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
    {type = 'ruler'},
	
    {type = 'header', size = 16,  text = 'PVP', align = 'center'},
    {type = 'checkbox',	text = "Unroot: |c0000FA9A auto unroot Shapeshifting (working on PVE).|r", align = 'left', key = 'root', default = true},
    {type = 'checkbox',	text = "Stun:|c0000FA9A auto stun PVP Target [Mighty Bash] or [Maim].|r", align = 'left', key = 'stun', default = true},		
    {type = 'checkbox',	text = "Gladiator's Medallion:|c0000FA9A remove stun/fear/disorient/charm.|r", align = 'left', key = 'medal', default = true},
	{type = 'spacer'}, {type = 'ruler'},
 
	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = 'spacer'}, {type = 'ruler'},
	
	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = 'checkspin', text = 'Use Survival Instincts:', key = 'suin', check = true, spin = 75, width = 100, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 100, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Regrowth(Predatory Swiftness):', key = 'rps', check = true, spin = 40, width = 100, step = 5, max = 95, min = 1, desc ="|c0000FA9A in PVP default 85%"},	
    {type = 'ruler'}, {type = 'spacer'},
	
    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 10 sec|r", align = 'center'}, 
    {type = 'text', text = "Berserk|c0000FA9A if not talented(5,2)|r"},
    {type = 'text', text = "Tiger Fury|c0000FA9A if [Berserk], [Incarnation] buff is on|r"},
    {type = 'text', text = "Brutal Slash|c0000FA9A if talented(7,3)"},	
    {type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
    {type = 'text', text = "In combat:|c0000FA9A if your target is friendly and dead will use Rebirth to ress|r"},
    {type = 'text', text = "Out of combat:|c0000FA9A if your target is friendly and dead will use Revive to ress|r"},
	--{type = "text", text = "To Do , PRO PVP CR"},

}

local exeOnLoad = function()

 	print('|c0000FA9A ----------------------------------------------------------------------|r')
	print('|c0000FA9A --- |r|c00FF7F00 DRUID - Feral |r')
	print('|c0000FA9A ------------------------PVP-------------------------------------------|r')
	print('|c0000FA9A --- |rRecommended Talents: 1/2 - 2/3 - 3/1 - 4/1 - 5/2 - 6/2 - 7/2')
    print('|c0000FA9A')
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
	print('|c0000FA9A --- |rRecommended Talents: 1/1 - 2/3 - 3/1 - 4/1 - 5/1 - 6/2 - 7/3')
	print('|c0000FA9A ----------------------------------------------------------------------|r')
	
	
		NeP.Interface:AddToggle({
		key = 'dot',
		icon = 'Interface\\Icons\\ability_ghoulfrenzy',
		name = 'Rip',
		text = 'Include Rip in rotation',
	})
	
--	NeP.Interface:AddToggle({
--		key = 'BEAR',
--		icon = 'Interface\\Icons\\ability_racial_bearform',
--		name = 'Bear Form Rotation(PVP MODE)',
--		text = "ON/OFF atm it's not yet finalized",
--	})
	
	NeP.Interface:AddToggle({
		key = 'travelform',
		icon = 'Interface\\Icons\\ability_druid_travelform',
		name = 'Auto Travel Form',
		text = 'ON/OFF Auto Travel Form',
	})
	
end

local Moonfire = {

    {"%pause", "player.energy <= 29"},
	{"Moonfire", nil, "target"},

}

local Rip = {

    {"%pause", "player.energy <= 29"},
	{"Rip", nil, "target"},

}

local Savage_Roar = {

    {"%pause", "player.energy <= 39"},
	{"Savage Roar", nil, "player"},
	
}

local Maim = {

    {"%pause", "player.energy <= 34"},
	{"Maim", nil, "target"},

}

local Swipe = {

    {"%pause", "player.energy <= 44 & !player.buff(Clearcasting)"},
    {"Swipe", nil, "target"},
	
}	
	
local Thrash = {

    {"%pause", "player.energy <= 49 & !player.buff(Clearcasting)"},
	{"Thrash", nil, "target"},
	
}

local Rake = {

    {"%pause", "player.energy <= 34"},
    {"Rake", nil, "target"},

}

local Shapeshift = {

    {"Cat Form", "!buff(Cat Form) & !keybind(alt) & {!swimming & !toggle(travelform) || indoors || state(root) & UI(root) || target.enemy & target.alive || player.area(10).enemies >= 1}", "player"},
	{"Bear Form", "!buff(Bear Form) & !buff(Prowl) & {state(root) & UI(root) || toggle(BEAR) & !buff(Dash) & !spell(Prowl).usable & target.alive & target.enemy & player.pvp & target.player & targettarget.is(player) & target.range > 7}", "player"},

	{"/cancelform", "!buff(Prowl) & !indoors & swimming & !buff(Travel Form) & !area(20).enemies >= 1 & {buff(Cat Form) || buff(Bear Form) || buff(Moonkin Form)}", "player"},
	{"Travel Form", "!buff(Cat Form) & !indoors & !buff(Prowl) & !buff(Travel Form) & !area(20).enemies >= 1 & swimming", "player"},
	{"/cancelform", "toggle(travelform) & !indoors & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & buff(Cat Form) & {!target.enemy || target.enemy & !target.alive}", "player"},
    {"Travel Form", "toggle(travelform) & !keybind(alt) & !indoors & !buff(Prowl) & !buff(Travel Form) & !buff(Cat Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive}", "player"},

}

local pvp = {

	{"Gladiator's Medallion", "UI(medal) & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
    
	--{"Incarnation: King of the Jungle", "toggle(cooldowns) & talent(5,2) & !player.buff(Shadowmeld) & !player.buff(Prowl) & player.combat & target.range <= 7 & ", "player"},
    --{"Prowl", "!player.buff(Prowl) & player.buff(Cat Form) & player.buff(Incarnation: King of the Jungle).duration <= 15"},
    --{Rake, "target.range <= 7 & target.enemy & target.alive & player.buff(Prowl) & !target.state(stun)", "target"},

}

local Keybinds = {

    {"%pause", "target.enemy & target.immune_all", "player"},
    {"/cancelform", "!player.buff(Prowl) & !player.moving & !player.buff(Predatory Swiftness) & lowest.health <= 90 & lowest.range <= 40 & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Travel Form)} & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}"}, -- & player.mana.actual >= 49100 & target.pvp & player.pvp
	{"Regrowth", "!player.buff(Prowl) & range <= 40  & lowest.health <= 90 & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}", "lowest"}, -- & player.mana.actual >= 49100 & target.pvp & player.pvp
	
    {"Prowl", "!player.buff(Prowl) & player.buff(Cat Form) & player.buff(Incarnation: King of the Jungle) & {keybind(alt) & UI(list)==3 || keybind(shift) & UI(list)==1 || keybind(control) & UI(list)==2}", "player"},
    {Rake, "target.range <= 7 & target.enemy & target.alive & player.buff(Prowl) & !target.state(stun)", "target"},
	
	{"Berserk", "!talent(5,2) & target.range <= 6.2 & player.combat & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "player"},	
	{"Incarnation: King of the Jungle", "talent(5,2) & !player.buff(Shadowmeld) & !player.buff(Prowl) & player.combat & target.range <= 7 & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "player"}, -- || player.spell(Prowl).cooldown <= 0.4 & keybind(alt)}

    {"&Mighty Bash", "!player.buff(Prowl) & player.combat & !target.rake.stun & !target.state(stun) & target.range <= 7 & target.enemy & target.alive & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || target.player & player.pvp & UI(stun)}", "target"},
	{Maim, "!player.buff(Prowl) & player.combopoints >= 3 & !target.rake.stun & !player.lastcast(Mighty Bash) & player.spell(Mighty Bash).cooldown >= gcd & target.debuff(Mighty Bash).duration <= 0.6 & target.range <= 7 & target.enemy & target.alive & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"}, -- || target.player & player.pvp & UI(stun) & !target.state(stun)
	
	{"Skull Bash", "player.spell(Wild Charge).cooldown < 13.5 & !player.buff(Prowl) & target.range > 5 & target.range <= 18 & target.enemy & target.alive & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	{"Wild Charge", "target.range > 5 & target.range <= 30 & target.enemy & target.alive & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	
}

local PreCombat = {

    {"/targetenemyplayer", "!target.exists & keybind(control)"},
	{Rake, "range <= 7 & infront & target.enemy & target.alive & !target.immune_all & {!target.player || target.player & player.pvp} & {player.buff(Prowl) || player.spell(Prowl).cooldown > 0.5 & !player.buff(Shadowmeld) || player.buff(Shadowmeld)}", "target"},

 	{"Prowl", "!buff(Prowl) & buff(Cat Form) & {target.enemy & target.alive & {!target.player || target.player & player.pvp} || player.buff(Shadowmeld)}", "player"},  --|| player.area(15).enemies >= 1
    {"%pause", "target.state(fear) & !player.buff(Prowl) || target.debuff(Polymorph) & !player.buff(Prowl) || target.immune_all", "player"},

	{"Revive", "!target.enemy & target.dead & target.player", "target"},
    {"%dispelself", "!player.buff(Prowl)", "player"},

	{"Regrowth", "player.health <= 66 & !player.buff(Prowl) & !player.moving & player.level < 80", "player"},
    {"Regrowth", "player.buff(Predatory Swiftness) & !player.buff(Prowl) & !player.moving & player.health <= 75", "player"},

}

local Survival = {

	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"}, --Health Stone
	
    {"Regrowth", " player.health <= UI(rps_spin) & UI(rps_check) & player.buff(Predatory Swiftness).duration >= 10 & !player.lastcast(Regrowth) & !target.pvp", "player"},
	{"Regrowth", "player.buff(Predatory Swiftness).duration >= 10 & !player.lastcast(Regrowth) & range <= 40 & target.player & player.pvp & target.enemy & target.alive & health <= 85", "lowest"},	
	{"!Entangling Roots", "player.buff(Predatory Swiftness) & !player.lastcast(Entangling Roots) & target.player & player.pvp & target.enemy & target.alive & target.range <= 37 & {target.range >= 12 || target.buff(Incarnation: King of the Jungle) || target.buff(Berserk)", "target"},

    {"Survival Instincts", 	"player.health <= UI(suin_spin) & UI(suin_check) & !player.buff(Survival Instincts) & player.incdmg(5) >= player.health.max*0.05", "player"},

	{"%dispelself", "!player.buff(Prowl) & !player.area(10).enemies >= 1", "player"},
    {"Rebirth", "!target.enemy & target.dead & target.player & player.ingroup(target)", "target"},

}

local Interrupts = {

    --{"Bear Form", "target.interruptAt(90) & targettarget.is(player) & target.player & player.spell(Skull Bash).cooldown > 0.5 & !player.buff(Bear Form) & target.range > 2"},

	{"&Skull Bash", "target.interruptAt(77) & range > 7", "target"},
	{"&Skull Bash", "interruptAt(77) & range <= 7", "enemies"},
	
	{"Typhoon", "talent(4,3) & target.interruptAt(45) & player.spell(Skull Bash).cooldown > gcd"},
	
}

local Cooldowns = {

	{"Tiger's Fury", "target.range <= 7 & !player.buff(Prowl) & player.combat & {player.buff(Berserk) || player.buff(Incarnation: King of the Jungle)}", "player"},

	{"Berserk", "!talent(5,2) & target.range <= 6.2 & player.combat & target.deathin >= 11.2", "player"},
	
	{"#trinket1", "UI(trk1) & target.inmelee & target.deathin >= 10"},
	{"#trinket2", "UI(trk2) & target.inmelee & target.deathin >= 10"},

}

local Cat_Combat = {

	{"Tiger's Fury", "target.range <= 7 & player.energy < 40 & {talent(1,1) & target.debuff(Rake) || talent(1,1) & target.debuff(Rip) || talent(1,1) & target.debuff(Thrash) || !talent(1,1) & target.deathin >= 7}", "player"},
    {"Regrowth", "talent(7,2) & !player.buff(Prowl) & !player.debuff(Scent of Blood) & player.buff(Predatory Swiftness) & !player.buff(Bloodtalons) & !player.lastcast(Regrowth) & {talent(5,3) & player.combopoints >= 4 & target.debuff(Rip).duration < player.buff(Savage Roar).duration & !player.buff(Savage Roar).duration <= 10 || !talent(5,3) & player.combopoints >= 4}", "lowest"},
    {Rake, "target.range <= 7 & target.infront & target.enemy & target.alive & player.buff(Prowl)", "target"}, --sometimes you enter in combat but you are still in stealth
	
    {"/startattack", "!isattacking & target.range <= 6.5 & target.enemy & target.alive", "target"},	

	{Thrash, "toggle(AoE) & {!artifact.enabled(Scent of Blood) & target.debuff(Thrash).duration <= 3.5 & player.area(10).enemies >= 3 || target.debuff(Thrash).duration <= 3.5 & player.area(10).enemies >= 3 & player.area(10).enemies <= 5 & artifact.enabled(Shadow Thrash) || talent(7,3) & !player.debuff(Scent of Blood) & artifact.enabled(Scent of Blood) & player.area(10).enemies >= 6 & talent(7,3) & player.spell(Brutal Slash).cooldown >= 1 || !talent(7,3) & !player.debuff(Scent of Blood) & artifact.enabled(Scent of Blood) & player.area(10).enemies >= 6}"},
	{"Brutal Slash", "talent(7,3) & player.combopoints <= 4 & {toggle(AoE) & player.area(7).enemies >= 3 || toggle(BOSS) & !target.debuff(Rake).duration <= 4 & player.area(7).enemies >= 1 || toggle(cooldowns) & !target.debuff(Rake).duration <= 4 & player.area(7).enemies >= 1 & {talent(5,3) & player.buff(Savage Roar) || !talent(5,3)}}"},
	{Swipe, "toggle(AoE) & !talent(7,3) & player.debuff(Scent of Blood) & player.area(10).enemies >= 6"}, -- & player.combopoints < 5
	{"Rake", "toggle(AoE) & player.area(7).enemies.infront <= 5 & player.area(7).enemies.infront >= 2 & player.combopoints <= 4 & {infront & range <= 4.5 & !pvp & !debuff}", "enemies"},
	
	{Savage_Roar, "talent(5,3) & player.combopoints >= 4 & player.buff(Savage Roar).duration <= 10", "player"},
	{Rip, "toggle(dot) & target.range <= 7 & target.deathin >= 12 & !target.pvp & {talent(6,1) & player.combopoints == 5 & !target.debuff(Rip) || !talent(6,1) & player.combopoints >= 4 & target.debuff(Rip).duration <= 9 & target.health >= 25 || player.combopoints >= 4 & !target.debuff(Rip) & target.health < 25}", "target"},
	{Rip, "toggle(dot) & target.range <= 7 & target.pvp & {talent(6,1) & player.combopoints == 5 & !target.debuff(Rip) || !talent(6,1) & player.combopoints >= 4 & target.debuff(Rip).duration <= 9 & target.health >= 25 || player.combopoints >= 4 & !target.debuff(Rip) & target.health < 25}", "target"},
	{Rake, "target.range <= 7 & player.combopoints < 5 & target.debuff(Rake).duration <= 4", "target"},	
	{Rake, "target.range <= 7 & player.combopoints < 5 & player.buff(Bloodtalons) & !player.lastcast(Rake)", "target"},
	{Moonfire, "talent(1,3) & target.range <= 40 & target.infront & !player.buff(Prowl) & target.debuff(Moonfire).duration <= 4 & player.combopoints < 5", "target"},	
	{"Ashamane's Frenzy", "target.range <= 7 & target.deathin >= 5 & player.combopoints <= 2", "target"},
	{"Ferocious Bite", "target.range <= 7 & {player.combopoints == 5 || talent(6,1) & player.combopoints >= 4 & target.debuff(Rip).duration <= 6 & target.debuff(Rip).duration >= 0.1}", "target"},
	{"Ferocious Bite", "target.range <= 7 & player.combopoints >= 4 & player.buff(Bloodtalons)", "target"},
	{"Shred", "!player.buff(Prowl) & target.range <= 7 & player.combopoints < 5 & !player.buff(Bloodtalons)", "target"},

}

local Bear_Combat = {
    
	{"/startattack", "!isattacking & target.inmelee & target.enemy & target.alive", "target"},
	
	{"&Maul", "target.range <= 7", "target"},
    {"Frenzied Regeneration", "talent(3,2) & player.incdmg(5) > player.health *0.20 & !player.buff(Frenzied Regeneration)", "player"},
	{"Ironfur", "talent(3,2) & player.rage > 44 & player.incdmg.phys(3.5) > player.health *0.20", "player"},
	{"Mangle", "talent(3,2)", "target"},
	{"Thrash", "player.area(10).enemies >= 1 || target.range <= 5"},

}

local inCombat = {

    {Shapeshift},
	{pvp, "player.pvp & target.player & target.enemy & target.alive"},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & !player.buff(Prowl) & target.enemy & {!target.player || player.pvp & target.player}"},
    {Survival, "player.health < 100 & !player.buff(Prowl)"},		
	{Cooldowns, "toggle(cooldowns)"},
	{Cat_Combat, "player.buff(Cat Form) & target.alive & target.enemy & {!target.player || player.pvp & target.player}"},
	{Bear_Combat, "player.buff(Bear Form) & target.enemy & target.alive & {!target.player || player.pvp & target.player}"},
	
}

local outCombat = {	

    {Shapeshift},
	{Keybinds},
	{PreCombat},

}

NeP.CR:Add(103, {
	name = "[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Feral",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
