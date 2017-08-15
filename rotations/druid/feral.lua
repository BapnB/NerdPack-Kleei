local GUI = {

	{type = 'header', text = 'Keybinds', align = 'center'},
	{type = 'text', text = 'Shift keybind in meelee will use Mighty Bash or Maim(if Mighty Bash is on CD).'},
	{type = 'text', text = 'Shift keybind in range > 10 will use Wild Charge or  Skull Bash(if Wild Charge is on CD).'},
	{type = 'text', text = 'Control keybind = Incarnation: King of the Jungle and then  will cast Prowl.'},
	{type = 'text', text = 'Control keybind = Rake if Incarnation: King of the Jungle is active.'},
	{type = 'text', text = 'Alt keybind = Pause.'},
	{type = 'text', text = 'In combat if your target is friendly and dead will use Rebirth to ress him.'},
	{type = 'text', text = 'In out of combat if your target is friendly and dead will use Revive to ress him.'},

}

local exeOnLoad = function()

	print('|cffADFF2F ------------------------PVE-------------------------------------------|r')
	print('|cffADFF2F --- |r|c00FF7F00 DRUID - Feral |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/1 - 2/3 - 3/1 - 4/1 - 5/1 - 6/1 - 7/3')
	print('|cffADFF2F ----------------------------------------------------------------------|r')
	
	print('|cffADFF2F ------------------------PVP-------------------------------------------|r')
	print('|cffADFF2F --- |r|c00FF7F00 DRUID - Feral |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/1 - 2/3 - 3/1 - 4/1 - 5/2 - 6/2 - 7/2')
	print('|cffADFF2F ----------------------------------------------------------------------|r')
	
	
		NeP.Interface:AddToggle({
		key = 'Dotting',
		icon = 'Interface\\Icons\\ability_druid_disembowel',
		name = 'Auto Dotting',
		text = 'ON/OFF Dotting rotation',
	})
	
	-- Next Toggle is for botting , don't use it if you don't use bot for farm mobs.
	NeP.Interface:AddToggle({
		key = 'auto',
		icon = 'Interface\\Icons\\ability_siege_engineer_automatic_repair_beam',
		name = 'Auto TargetNearestEnemy',
		text = 'ON/OFF Auto TargetNearestEnemy Botting and no Stealth',
	})

end

local Swipe = {

    {"%pause", "player.energy <= 44"},
    {"Swipe", nil, "target"},
	
}	
	
local Thrash = {

    {"%pause", "player.energy <= 49"},
	{"Thrash", nil, "target"},
	
}

local Rake = {

    {"%pause", "player.energy <= 34"},
    {"Rake", nil, "target"},

}

local Keybinds = {

    {"Prowl", "player.buff(Incarnation: King of the Jungle) & keybind(control)", "player"},
	{"Incarnation: King of the Jungle", "keybind(control)", "player"},
    {"Rake", "target.range < 10 & target.enemy & target.alive & player.buff(Incarnation: King of the Jungle) & keybind(control)", "target"},	

	{"%pause", "keybind(alt)"},
	
    {"Mighty Bash", "!player.buff(Prowl) & !player.lastcast(Rake) & !target.debuff(163505) & keybind(shift) & target.range < 10 & target.enemy & target.alive", "target"},
	
	{"Maim", "!player.buff(Prowl) & keybind(shift) & player.combopoints >=3 &player.spell(Mighty Bash).cooldown > gcd & !player.lastcast(Mighty Bash) & target.range < 10 & target.enemy & target.alive", "target"},
	
	{"Skull Bash", "keybind(shift) & player.spell(Wild Charge).cooldown > gcd & !player.lastcast(Wild Charge) & target.range > 8 & target.range <= 18 & target.enemy & target.alive", "target"},
	
	{"Wild Charge", "keybind(shift) & target.range > 8 & target.range <= 30 & target.enemy & target.alive", "target"},
	
}

local PreCombat = {

    {"Prowl", "player.buff(Incarnation: King of the Jungle)", "player"},
	
    --{Thrash, 'toggle(auto) & !isattacking & target.range <6 & target.enemy & target.alive', 'target'},   

 	{"Prowl", "!player.buff(Prowl) & !toggle(auto) & target.enemy & target.alive", "player"}, -- || player.area(20).enemies >= 1}
	
 	{"Rake", "player.buff(Prowl) & target.range < 10 & target.infront & target.enemy & target.alive", "target"},

}

local Survival = {

	{"#5512", "item(5512).count >= 1 & player.health <= 60", "player"}, --Health Stone
	
    {"Regrowth", "player.buff(Predatory Swiftness).duration >= 10 & !lastcast(Regrowth) & player.health <= 90", "player"},
	
    {"Survival Instincts", "player.health <= 75 & !player.buff(Survival Instincts)", "player"},
	
}

local Interrupts = {

	{"Skull Bash",  "target.range <= 18", "target"},
	
	{"Typhoon", "talent(4,3) & player.spell(Skull Bash).cooldown > gcd"},
	
	--{"Mighty Bash", "talent(4,1) & player.spell(Skull Bash).cooldown > gcd & target.range <= 10"},
	
	--{"Maim", "player.spell(Skull Bash).cooldown > gcd & player.spell(Mighty Bash).cooldown > gcd & target.range <= 10"},
	
}

local Cooldowns = {

	{"Berserk", "!talent(5,2) & player.buff(Tiger's Fury) & target.deathin >= 11.2", "player"},

}

local Combat = {

    {"Rake", "player.buff(Prowl) & target.range < 10 & target.infront & target.enemy & target.alive", "target"}, --sometimes you enter in combat but you are still in stealth

    {"Regrowth", "talent(7,2) & player.buff(Predatory Swiftness).duration >= 10 & !lastcast(Regrowth)", "player"},

    {"/startattack", "!toggle(auto) & !isattacking & target.range < 6 & target.enemy & target.alive", "target"},
    --Mass
	{Thrash, "toggle(AoE) & target.debuff(Thrash).duration <= 3.5 & {player.area(10).enemies > 4 & !artifact.enabled(Shadow Thrash)|| player.area(10).enemies >= 2 & artifact.enabled(Shadow Thrash)}", "target"},
	
	--Dotting
	{"Rip", "toggle(Dotting) & target.deathin >= 5 & {talent(6,1) & player.combopoints == 5 & !target.debuff(Rip) || !talent(6,1) & player.combopoints >= 4 & target.debuff(Rip).duration <= 4}", "target"},
	
	{Rake, "toggle(Dotting) & player.combopoints <= 4 & target.debuff(Rake).duration <= 3 & {!talent(1,1) & target.deathin >= 5 || talent(1,1)}", "target"},
	
	{"Ashamane's Frenzy", "toggle(Dotting) & target.deathin >= 5 & player.combopoints <= 2", "target"},
	
	{"Ferocious Bite", "player.combopoints == 5 & {player.level < 90 || talent(6,1) || talent(6,2) & target.debuff(Rip).duration >= 4 || talent(6,2) & target.deathin < 4}", "target"},
	
	{"Tiger's Fury", "!player.buff(Clearcasting) & player.energy <= 39 & {talent(1,1) & target.debuff(Rake) || talent(1,1) & target.debuff(Rip) || talent(1,1) & target.debuff(Thrash) || !talent(1,1) & target.deathin >= 7}"},
	
	{"Brutal Slash", "talent(7,3) & player.combopoints <= 4 & {target.range <= 10 || player.area(8).enemies >= 1}", "target"},
	
	{Swipe, "toggle(AoE) & !talent(7,3) & player.area(10).enemies > 4 & target.debuff(Thrash) & player.combopoints < 5", "target"},	
	
	{"Shred", "talent(7,3) & !player.spell(Brutal Slash).charges >= 1 & player.combopoints < 5 || !talent(7,3) & player.combopoints < 5", "target"},

}

local inCombat = {

    {"%dispelself", "!player.buff(Prowl) & player.area(15).enemies < 1", "player"},

    {"%pause", "target.enemy & {target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence)}", "player"},
	{"Gladiator's Medallion", "player.state(stun) || player.state(root) & target.range > 4 || player.state(fear) || player.state(disorient) || player.state(charm)", "player"},
	
	{"Cat Form", "!player.buff(Cat Form) & {!player.swimming || target.enemy & target.alive || player.area(10).enemies >= 1}", "player"},
	
    {"Rebirth", "!target.enemy & target.dead", "target"},
	
	{Keybinds},
	{Interrupts, "target.interruptAt(35) & toggle(interrupts)"},
    {Survival, "player.health < 100"},
	{Cooldowns, "toggle(cooldowns)"},
	{Combat, "target.range <= 13 & target.enemy & target.alive"},
	
	{"/cleartarget", "toggle(auto) & target.range >= 7"},	
	{"/run TargetNearestEnemy()", "toggle(auto) & !target.exists"},  --|| !target.alive || target.range >=5}

	--working on some private servers
	--{"Moonfire", "!toggle(auto) & !talent(1,3) & target.alive & target.enemy & target.range > 8 & target.range <= 40 & target.infront & !player.buff(Prowl) & !target.debuff(Moonfire)"},

 	{"/cancelform", "player.swimming & !player.area(10).enemies >= 1 & !player.buff(Prowl) & !indoors & {player.buff(Cat Form) || player.buff(Bear Form)}"},
	{"Travel Form", "player.swimming & !player.area(10).enemies >= 1 & !player.buff(Cat Form) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form)"},
	
}

local outCombat = {	

    {"%pause", "target.enemy & {target.buff(Ice Block) || target.buff(Divine Shield) || target.buff(Deterrence)}", "player"},	
	
	{"Revive", "!target.enemy & target.dead", "target"},
    {"%dispelself", "!player.buff(Prowl)", "player"},
	
	{PreCombat},
	{Keybinds},

	{"/cleartarget", "toggle(auto) & target.range >= 7"},

	--Cancel form when not swimming / Travel Form when swimming
	{"Cat Form", "!player.buff(Cat Form) & {!player.swimming || target.enemy & target.alive || player.area(10).enemies >= 1}"},
	{"Regrowth", "!player.buff(Prowl) & !player.moving & player.health <= 85", "player"},
	{"/cancelform", "player.swimming & !player.buff(Prowl) & !indoors & {player.buff(Cat Form) || player.buff(Bear Form)}"},
	{"Travel Form", "player.swimming & !player.buff(Cat Form) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form)"},

}

NeP.CR:Add(103, {
	name = '[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Feral',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	wow_ver = '7.1.5',
 	nep_ver = '1.8',
	load = exeOnLoad
})
