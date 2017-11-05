local GUI = {

    {type = 'header', text = 'Settings', align = 'center'},
	{type = 'checkbox',	text = 'Auto UN_ROOT by form', align = 'left', 	key = 'root', default = true},
	{type = 'checkbox',	text = "Remove stun/fear/disorient/charm by Gladiator's Medallion", align = 'left', key = 'medal', default = true},
	

	{type = 'header', text = 'Keybinds', align = 'center'},
	{type = 'text', text = 'Shift keybind in meelee will use Mighty Bash or Maim(if Mighty Bash is on CD). in PVP it will auto use STUN if target is not stuned.'},
	{type = 'text', text = 'Shift keybind in range > 10 will use Wild Charge or  Skull Bash(if Wild Charge is on CD).'},
	{type = 'text', text = "Cooldowns(toggle) = 'Berserk' + 'Tiger Fury' if target is about to die in more than 10 sec."},
	{type = 'text', text = 'Control keybind = Berserk.'},
	{type = 'text', text = "Control keybind = [Incarnation: King of the Jungle] while 5/2 talent is set."},
	{type = 'text', text = 'Alt keybind = Shadowmeld.'},
	{type = 'text', text = 'Alt keybind = Pause.'},
	{type = 'text', text = 'In combat if your target is friendly and dead will use Rebirth to ress him.'},
	{type = 'text', text = 'In out of combat if your target is friendly and dead will use Revive to ress him.'},

}

local exeOnLoad = function()

	print('|cffADFF2F --- |r|c00FF7F00 DRUID - Feral |r')
	
	print('|cffADFF2F ------------------------PVP-------------------------------------------|r')
	print('|cffADFF2F --- |rRecommended Talents: 1/2 - 2/3 - 3/1 - 4/1 - 5/2 - 6/2 - 7/2')
	print('|cffADFF2F ----------------------------------------------------------------------|r')
	
	print('|cffADFF2F ------------------------PVE-------------------------------------------|r')
	print('|cffADFF2F --- |rRecommended Talents: 1/1 - 2/3 - 3/1 - 4/1 - 5/1 - 6/2 - 7/3')
	print('|cffADFF2F ----------------------------------------------------------------------|r')
	
	
		NeP.Interface:AddToggle({
		key = 'Dotting',
		icon = 'Interface\\Icons\\ability_druid_disembowel',
		name = 'Auto Dotting',
		text = 'ON/OFF Dotting rotation',
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
		NeP.Interface:AddToggle({
		key = 'BOSS',
		icon = 'Interface\\Icons\\ability_druid_ravage',
		name = 'Brutal Slash',
		text = 'Use Brutal Slash on 1 or more enemies, BOSS Rotation',
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

	{"%pause", "keybind(alt) & player.buff(Prowl)", "player"},
	
	{"Shadowmeld", "keybind(alt) & !player.moving & player.combat & player.buff(Cat Form) & !player.lastcast(Shadowmeld) & !player.buff(Shadowmeld) & !player.buff(Prowl)", "player"},
	
    {"Prowl", "!player.buff(Prowl) & player.buff(Cat Form) & player.buff(Incarnation: King of the Jungle) & target.pvp & player.pvp & {keybind(control) || keybind(alt)}", "player"},
	
    {Rake, "target.range <= 7 & target.enemy & target.alive & player.buff(Prowl) & !target.state(stun)", "target"},
	
	{"Berserk", "!talent(5,2) & target.range <= 6.2 & player.combat & keybind(control)", "player"},	
	
	{"Incarnation: King of the Jungle", "talent(5,2) & !player.buff(Shadowmeld) & !player.buff(Prowl) & player.combat & {keybind(control) & target.range <= 7 || player.spell(Prowl).cooldown <= 0.4 & keybind(alt)}", "player"},

    {"!Mighty Bash", "!player.buff(Prowl) & !player.lastcast(Rake) & !target.debuff(163505) & target.range <= 7 & target.enemy & target.alive & {keybind(shift) || !target.state(stun) & target.pvp & player.pvp}", "target"},
	
	{Maim, "!player.buff(Prowl) & player.combopoints >= 3 & player.spell(Mighty Bash).cooldown > gcd & !target.debuff(Mighty Bash) & target.range <= 7 & target.enemy & target.alive & {keybind(shift) || !target.state(stun) & target.pvp & player.pvp}", "target"},
	
	{"Skull Bash", "keybind(shift) & player.spell(Wild Charge).cooldown > gcd & player.spell(Wild Charge).cooldown < 14 & !player.buff(Prowl) & target.range > 5 & target.range <= 14.2 & target.enemy & target.alive", "target"},
	
	{"Wild Charge", "keybind(shift) & target.range > 5 & target.range <= 26.2 & target.enemy & target.alive", "target"},
	
}

local PreCombat = { 

    {"Cat Form", "!player.buff(Cat Form) & {target.enemy & target.alive || player.area(10).enemies >= 1 || indoors || !player.swimming & !toggle(travelform)}", "player"},

 	{"Prowl", "!player.buff(Prowl) & player.buff(Cat Form) & {target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp} || player.buff(Shadowmeld)}", "player"},  --|| player.area(15).enemies >= 1
	
 	{Rake, "target.range <= 7 & target.infront & target.enemy & target.alive & {!target.pvp || target.pvp & player.pvp & {player.buff(Prowl) || player.spell(Prowl).cooldown > 0.5 & !player.buff(Shadowmeld) || player.buff(Shadowmeld)}}", "target"},

}

local Survival = {

	{"#5512", "item(5512).count >= 1 & player.health <= 60", "player"}, --Health Stone
	
    {"Regrowth", "player.buff(Predatory Swiftness).duration >= 10 & !player.lastcast(Regrowth) & {player.health <= 85 & target.pvp & player.pvp || !target.pvp & player.health <= 40}", "player"},
	--{"Regrowth", "talent(7,2) & !player.moving & !player.buff(Prowl) & !player.debuff(Scent of Blood) & player.buff(Predatory Swiftness) & !player.buff(Bloodtalons) & !player.lastcast(Regrowth) & {player.health <= 90 & target.pvp & player.pvp || !target.pvp & player.health <= 40}", "player"},	
	
    {"Survival Instincts", "player.health <= 75 & !player.buff(Survival Instincts) & player.incdmg(5) >= player.health.max*0.05", "player"},
	
}

local Interrupts = {

    {"Bear Form", "target.interruptAt(90) & player.spell(Skull Bash).cooldown > 0.5 & !player.buff(Bear Form) & target.range > 2", "player"},

	{"&Skull Bash", "target.interruptAt(45) & target.range <= 14.2", "target"},
	
	{"Typhoon", "talent(4,3) & target.interruptAt(45) & player.spell(Skull Bash).cooldown > gcd"},
	
	--{"Mighty Bash", "talent(4,1) & target.interruptAt(45) & player.spell(Skull Bash).cooldown > gcd & target.inmelee"},
	
	--{"Maim", "target.interruptAt(45) & player.spell(Skull Bash).cooldown > gcd & player.spell(Mighty Bash).cooldown > gcd & target.inmelee"},
	
}

local Cooldowns = {

	{"Tiger's Fury", "target.range <= 7 & !player.buff(Prowl) & player.combat & {player.buff(Berserk) || player.buff(Incarnation: King of the Jungle)}", "player"},

	{"Berserk", "!talent(5,2) & target.range <= 6.2 & player.combat & target.deathin >= 11.2", "player"},

}

local Cat_Combat = {

	{"Tiger's Fury", "target.range <= 7 & player.energy < 40 & {talent(1,1) & target.debuff(Rake) || talent(1,1) & target.debuff(Rip) || talent(1,1) & target.debuff(Thrash) || !talent(1,1) & target.deathin >= 7}", "player"},

    {"Regrowth", "talent(7,2) & !player.buff(Prowl) & !player.debuff(Scent of Blood) & player.buff(Predatory Swiftness) & !player.buff(Bloodtalons) & !player.lastcast(Regrowth) & {talent(5,3) & player.combopoints >= 4 & target.debuff(Rip).duration < player.buff(Savage Roar).duration & !player.buff(Savage Roar).duration <= 10 || !talent(5,3) & player.combopoints >= 4}", "player"},
	
    {Rake, "target.range <= 7 & target.infront & target.enemy & target.alive & player.buff(Prowl)", "target"}, --sometimes you enter in combat but you are still in stealth
	
    {"/startattack", "!toggle(auto) & !isattacking & target.range <= 6.5 & target.enemy & target.alive", "target"},	

	{Thrash, "toggle(AoE) & {!artifact.enabled(Scent of Blood) & target.debuff(Thrash).duration <= 3.5 & player.area(10).enemies >= 3 || target.debuff(Thrash).duration <= 3.5 & player.area(10).enemies >= 3 & player.area(10).enemies <= 5 & artifact.enabled(Shadow Thrash) || talent(7,3) & !player.debuff(Scent of Blood) & artifact.enabled(Scent of Blood) & player.area(10).enemies >= 6 & talent(7,3) & player.spell(Brutal Slash).cooldown >= 1 || !talent(7,3) & !player.debuff(Scent of Blood) & artifact.enabled(Scent of Blood) & player.area(10).enemies >= 6}"},
    --{Thrash, "toggle(AoE) &  & player.area(10).enemies >= 6"},
	
	{"Brutal Slash", "talent(7,3) & player.combopoints <= 4 & {toggle(AoE) & player.area(7).enemies >= 3 || toggle(BOSS) & !target.debuff(Rake).duration <= 4 & player.area(7).enemies >= 1 || toggle(cooldowns) & !target.debuff(Rake).duration <= 4 & player.area(7).enemies >= 1 & {talent(5,3) & player.buff(Savage Roar) || !talent(5,3)}}"},
	
	{Swipe, "toggle(AoE) & !talent(7,3) & player.debuff(Scent of Blood) & player.area(10).enemies >= 6"}, -- & player.combopoints < 5
	
	{"Rake", "toggle(AoE) & player.area(7).enemies.infront <= 5 & player.area(7).enemies.infront >= 2 & player.combopoints <= 4 & {infront & range <= 4.5 & !pvp & !debuff}", "enemies"},
	
	{Savage_Roar, "talent(5,3) & player.combopoints >= 4 & player.buff(Savage Roar).duration <= 10", "player"},

	{Rip, "toggle(Dotting) & target.range <= 7 & target.deathin >= 6 & {talent(6,1) & player.combopoints == 5 & !target.debuff(Rip) || !talent(6,1) & player.combopoints >= 4 & target.debuff(Rip).duration <= 9 & target.health >= 25 || player.combopoints >= 4 & !target.debuff(Rip) & target.health < 25}", "target"},

	{Rake, "toggle(Dotting) & target.range <= 7 & player.combopoints < 5 & target.debuff(Rake).duration <= 4", "target"},	
	{Rake, "toggle(Dotting) & target.range <= 7 & player.combopoints < 5 & player.buff(Bloodtalons) & !player.lastcast(Rake)", "target"},
	
	{Moonfire, "talent(1,3) & toggle(Dotting) & target.range <= 40 & target.infront & !player.buff(Prowl) & !target.debuff(Moonfire) & player.combopoints < 5", "target"},	
	
	{"Ashamane's Frenzy", "toggle(Dotting) & target.range <= 7 & target.deathin >= 5 & player.combopoints <= 2", "target"},
	
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

    {"%pause", "target.enemy & {target.buff(45438) || target.buff(642) || target.buff(19263)}", "player"},
	
	{"Gladiator's Medallion", "target.pvp & player.pvp & UI(medal) & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
	{"Bear Form", "!player.buff(Bear Form) & !player.buff(Prowl) & {player.state(root) & UI(root) || toggle(BEAR) & !player.buff(Dash) & !spell(Prowl).usable & target.alive & target.enemy & target.pvp & player.pvp & targettarget.is(player) & target.range > 7}", "player"},

	
	{"Cat Form", "!player.buff(Cat Form) & {!player.swimming || player.state(root) & UI(root) || target.enemy & target.alive || player.area(10).enemies >= 1}", "player"},

	{Keybinds},
	{Interrupts, "toggle(interrupts) & !player.buff(Prowl) & {!target.pvp || target.pvp & player.pvp}"},
    {Survival, "player.health < 100 & !player.buff(Prowl)"},	
	
	{"%dispelself", "!player.buff(Prowl) & !player.area(10).enemies >= 1", "player"},
    {"Rebirth", "!target.enemy & target.dead & player.pvp", "target"},
	
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
    {"Travel Form", "toggle(travelform) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form) & !player.buff(Cat Form) & !player.area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive}"},

}

NeP.CR:Add(103, {
	name = '[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Feral',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})
