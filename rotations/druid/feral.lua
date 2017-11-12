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
    {type = 'checkbox',	text = "Unroot: |c0000FA9A Auto unroot Shapeshifting (working on PVE).|r", align = 'left', key = 'root', default = true},
    {type = 'checkbox',	text = "Stun:|c0000FA9A Auto stun PVP Target [Chaos Nova] or [Imprison].|r", align = 'left', key = 'stun', default = true},		
    {type = 'checkbox',	text = "Gladiator's Medallion:|c0000FA9A Remove stun/fear/disorient/charm.|r", align = 'left', key = 'medal', default = true},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
 
	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
	
	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = 'checkspin', text = 'Use Survival Instincts:', key = 'suin', check = true, spin = 75, width = 100, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 100, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Regrowth(Predatory Swiftness):', key = 'rps', check = true, spin = 40, width = 100, step = 5, max = 95, min = 1, desc ="|c0000FA9A in PVP default 85%"},	
    {type = 'ruler'}, {type = 'spacer'},
	
    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 10 sec|r", align = 'center'}, 
    {type = 'text', text = "Berserk|c0000FA9A if not talented(5,2)|r"},
    {type = 'text', text = "Tiger Fury|c0000FA9A if Berserk buff is on|r"},
    {type = 'text', text = "Brutal Slash"},
    {type = 'text', text = "Trinkets"},	
    {type = 'spacer'}, {type = 'ruler'}, {type = 'spacer'},
    {type = 'text', text = "In combat:|c0000FA9A if your target is friendly and dead will use Rebirth to ress|r"},
    {type = 'text', text = "Out of combat:|c0000FA9A if your target is friendly and dead will use Revive to ress|r"},
	--{type = 'text', text = 'Alt keybind in combat = Shadowmeld then Prowl and then will Pause.'},
	--{type = 'text', text = 'Alt keybind in combat = if Shadowmeld is on CD = [Incarnation: King of the Jungle] then Prowl and then will Pause.'},

}

local exeOnLoad = function()

	print('|c0000FA9A --- |r|c00FF7F00 DRUID - Feral |r')
	
	print('|c0000FA9A ------------------------PVP-------------------------------------------|r')
	print('|c0000FA9A --- |rRecommended Talents: 1/2 - 2/3 - 3/1 - 4/1 - 5/2 - 6/2 - 7/2')
	print('|c0000FA9A ----------------------------------------------------------------------|r')
	
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
	print('|c0000FA9A --- |rRecommended Talents: 1/1 - 2/3 - 3/1 - 4/1 - 5/1 - 6/2 - 7/3')
	print('|c0000FA9A ----------------------------------------------------------------------|r')
	
	
		NeP.Interface:AddToggle({
		key = 'dot',
		icon = 'Interface\\Icons\\ability_ghoulfrenzy',
		name = 'Rip',
		text = 'Include Rip in rotation',
	})
	
	-- Next Toggle is for botting , don't use it if you don't use bot for farm mobs.
--	NeP.Interface:AddToggle({
--		key = 'auto',
--		icon = 'Interface\\Icons\\ability_siege_engineer_automatic_repair_beam',
--		name = 'Auto TargetNearestEnemy',
--		text = 'ON/OFF Auto TargetNearestEnemy Botting and no Stealth',
--	})
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

local Keybinds = {

    {"/cancelform", "!player.buff(Prowl) & lowest.health <= 90 & lowest.range <= 40 & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Travel Form)} & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}"}, -- & player.mana.actual >= 49100 & target.pvp & player.pvp
	{"Regrowth", "!player.buff(Prowl) & range <= 40  & lowest.health <= 90 & {keybind(alt) & UI(list4)==12 || keybind(shift) & UI(list4)==10 || keybind(control) & UI(list4)==11}", "lowest"}, -- & player.mana.actual >= 49100 & target.pvp & player.pvp
	
	--{"%pause", "keybind(alt) & player.buff(Prowl)", "player"},
	--{"Shadowmeld", "keybind(alt) & !player.moving & player.combat & player.buff(Cat Form) & !player.lastcast(Shadowmeld) & !player.buff(Shadowmeld) & !player.buff(Prowl)", "player"},
	
    {"Prowl", "!player.buff(Prowl) & player.buff(Cat Form) & player.buff(Incarnation: King of the Jungle) & {keybind(alt) & UI(list)==3 || keybind(shift) & UI(list)==1 || keybind(control) & UI(list)==2}", "player"},
	
    {Rake, "target.range <= 7 & target.enemy & target.alive & player.buff(Prowl) & !target.state(stun)", "target"},
	
	{"Berserk", "!talent(5,2) & target.range <= 6.2 & player.combat & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "player"},	
	
	{"Incarnation: King of the Jungle", "talent(5,2) & !player.buff(Shadowmeld) & !player.buff(Prowl) & player.combat & target.range <= 7 & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "player"}, -- || player.spell(Prowl).cooldown <= 0.4 & keybind(alt)}

    {"!Mighty Bash", "!player.buff(Prowl) & !player.lastcast(Rake) & target.range <= 7 & target.enemy & target.alive & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2 || !target.state(stun) & target.pvp & player.pvp & UI(stun)}", "target"},
	
	{Maim, "!player.buff(Prowl) & player.combopoints >= 3 & player.spell(Mighty Bash).cooldown > gcd & !target.debuff(Mighty Bash) & target.range <= 7 & target.enemy & target.alive & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"}, ----{ || !target.state(stun) & target.pvp & player.pvp & UI(stun)}
	
	{"Skull Bash", "player.spell(Wild Charge).cooldown > gcd & player.spell(Wild Charge).cooldown < 14 & !player.buff(Prowl) & target.range > 5 & target.range <= 15 & target.enemy & target.alive & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	
	{"Wild Charge", "target.range > 5 & target.range <= 27 & target.enemy & target.alive & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "target"},
	
}

local PreCombat = { 

    {"Cat Form", "!player.buff(Cat Form) & !keybind(alt) & {target.enemy & target.alive || player.area(10).enemies >= 1 || indoors || !player.swimming & !toggle(travelform)}", "player"},

 	{"Prowl", "!player.buff(Prowl) & player.buff(Cat Form) & {target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp} || player.buff(Shadowmeld)}", "player"},  --|| player.area(15).enemies >= 1
	
 	{Rake, "target.range <= 7 & target.infront & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp} & {player.buff(Prowl) || player.spell(Prowl).cooldown > 0.5 & !player.buff(Shadowmeld) || player.buff(Shadowmeld)}", "target"},

}

local Survival = {

	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"}, --Health Stone
	
    {"Regrowth", " player.health <= UI(rps_spin) & UI(rps_check) & player.buff(Predatory Swiftness).duration >= 10 & !player.lastcast(Regrowth) & !target.pvp", "player"},
	{"Regrowth", "player.buff(Predatory Swiftness).duration >= 10 & !player.lastcast(Regrowth) & range <= 40 & target.pvp & player.pvp & health <= 85", "lowest"},	
	{"!Entangling Roots", "player.buff(Predatory Swiftness) & !player.lastcast(Entangling Roots) & target.pvp & player.pvp & target.range <= 37 & {target.range >= 12 || target.buff(Incarnation: King of the Jungle) || target.buff(Berserk)", "target"},

    {"Survival Instincts", 	"player.health <= UI(suin_spin) & UI(suin_check) &  !player.buff(Survival Instincts) & player.incdmg(5) >= player.health.max*0.05", "player"},
	
}

local Interrupts = {

    {"Bear Form", "target.interruptAt(90) & player.spell(Skull Bash).cooldown > 0.5 & !player.buff(Bear Form) & target.range > 2"},

	{"&Skull Bash", "target.interruptAt(80)& range > 7", "target"},
	{"&Skull Bash", "interruptAt(80)& range <= 7", "enemies"},
	
	{"Typhoon", "talent(4,3) & target.interruptAt(45) & player.spell(Skull Bash).cooldown > gcd"},
	
	--{"Mighty Bash", "talent(4,1) & target.interruptAt(45) & player.spell(Skull Bash).cooldown > gcd & target.inmelee"},
	
	--{"Maim", "target.interruptAt(45) & player.spell(Skull Bash).cooldown > gcd & player.spell(Mighty Bash).cooldown > gcd & target.inmelee"},
	
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
	
    {"/startattack", "!toggle(auto) & !isattacking & target.range <= 6.5 & target.enemy & target.alive", "target"},	

	{Thrash, "toggle(AoE) & {!artifact.enabled(Scent of Blood) & target.debuff(Thrash).duration <= 3.5 & player.area(10).enemies >= 3 || target.debuff(Thrash).duration <= 3.5 & player.area(10).enemies >= 3 & player.area(10).enemies <= 5 & artifact.enabled(Shadow Thrash) || talent(7,3) & !player.debuff(Scent of Blood) & artifact.enabled(Scent of Blood) & player.area(10).enemies >= 6 & talent(7,3) & player.spell(Brutal Slash).cooldown >= 1 || !talent(7,3) & !player.debuff(Scent of Blood) & artifact.enabled(Scent of Blood) & player.area(10).enemies >= 6}"},
    --{Thrash, "toggle(AoE) &  & player.area(10).enemies >= 6"},
	
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
    
	{"/startattack", "!toggle(auto) & !isattacking & target.inmelee & target.enemy & target.alive", "target"},
	
	{"&Maul", "target.range <= 7", "target"},

    {"Frenzied Regeneration", "talent(3,2) & player.incdmg(5) > player.health *0.20 & !player.buff(Frenzied Regeneration)", "player"},
	
	{"Ironfur", "talent(3,2) & player.rage > 44 & player.incdmg.phys(3.5) > player.health *0.20", "player"},
	
	-- {"Cat Form", "", "player"},
	
	{"Mangle", "talent(3,2)", "target"},
	
	{"Thrash", "player.area(10).enemies >= 1 || target.range <= 5"},

}

local inCombat = {

    {"%pause", "target.enemy & {target.state(fear) & target.pvp ||target.debuff(Polymorph) || target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence) || target.buff(Aspect of the Turtle)}", "player"},
	
	{"Gladiator's Medallion", "target.pvp & player.pvp & UI(medal) & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
	{"Bear Form", "!player.buff(Bear Form) & !player.buff(Prowl) & {player.state(root) & UI(root) || toggle(BEAR) & !player.buff(Dash) & !spell(Prowl).usable & target.alive & target.enemy & target.pvp & player.pvp & targettarget.is(player) & target.range > 7}", "player"},

	
	{"Cat Form", "!player.buff(Cat Form) & !keybind(alt) & {!player.swimming || player.state(root) & UI(root) || target.enemy & target.alive || player.area(10).enemies >= 1}", "player"},

	{Keybinds},
	{Interrupts, "toggle(interrupts) & !player.buff(Prowl) & {!target.pvp || target.pvp & player.pvp}"},
    {Survival, "player.health < 100 & !player.buff(Prowl)"},	
	
	{"%dispelself", "!player.buff(Prowl) & !player.area(10).enemies >= 1", "player"},
    {"Rebirth", "!target.enemy & target.dead & player.ingroup(target)", "target"},
	{"Rebirth", "player.area(40).dead.tank & player.area(30).enemies >= 1", "tank"},	
	
	{Cooldowns, "toggle(cooldowns)"},
	{Cat_Combat, "player.buff(Cat Form) & target.alive & target.enemy & {!target.pvp || target.pvp & player.pvp}"},
	{Bear_Combat, "player.buff(Bear Form) & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp}"},
	
	{"/cleartarget", "toggle(auto) & target.range >= 7"},	
	{"/run TargetNearestEnemy()", "toggle(auto) & !target.exists"},  --|| !target.alive || target.range >=5}

	--working on some private servers
	--{"Moonfire", "!toggle(auto) & !talent(1,3) & target.alive & target.enemy & target.range > 8 & target.range <= 40 & target.infront & !player.buff(Prowl) & !target.debuff(Moonfire)"},

 	{"/cancelform", "player.swimming & !player.area(10).enemies >= 1 & !player.buff(Prowl) & !indoors & {player.buff(Cat Form) || player.buff(Bear Form)}"},
	{"Travel Form", "player.swimming & !player.area(10).enemies >= 1 & !player.buff(Cat Form) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form)"},
	
}

local outCombat = {	

    {"%pause", "target.enemy & {target.buff(45438) || target.buff(642) || target.buff(19263)}", "player"},
	
	{Keybinds},
	{PreCombat},
	
	{"Revive", "!target.enemy & target.dead", "target"},
	
    {"%dispelself", "!player.buff(Prowl)", "player"},
	{"/cleartarget", "toggle(auto) & target.range >= 7"},
	
	{"Regrowth", "player.health <= 66 & !player.buff(Prowl) & !player.moving & player.level < 80", "player"},
    {"Regrowth", "player.buff(Predatory Swiftness) & !player.buff(Prowl) & !player.moving & player.health <= 75", "player"},

	--Cancel form when not swimming / Travel Form when swimming
	{"/cancelform", "player.swimming & !player.buff(Prowl) & !indoors &  !target.enemy & {player.buff(Cat Form) || player.buff(Bear Form)}"},
	{"Travel Form", "player.swimming & !player.buff(Cat Form) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form)"},
	
	{"/cancelform", "toggle(travelform) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form) & !player.area(15).enemies >= 1 & player.buff(Cat Form) & {!target.enemy || target.enemy & !target.alive}"},
    {"Travel Form", "toggle(travelform) & !keybind(alt) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form) & !player.buff(Cat Form) & !player.area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive}"},

}

NeP.CR:Add(103, {
	name = "[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Feral",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="787", color="87CEFA"},	
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
