local GUI = {

	--------------------------------
	-- Coming Soon
	--------------------------------
    --Shift keybind in meelee will use stun Mighty Bash or Maim (if Mighty Bash is on CD)
	--Shift keybind in range > 10 will use Wild Charge or  Skull Bash(if Wild Charge is on CD)
	--Alt keybind = Pause
	}

local exeOnLoad = function()

	print('|cffADFF2F ----------------------------------------------------------------------|r')
	print('|cffADFF2F --- |r|c00FF7F00 DRUID - Feral |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/1 - 2/3 - 3/1 - 4/1 - 5/1 - 6/1 - 7/3')
	print('|cffADFF2F ----------------------------------------------------------------------|r')
	
		NeP.Interface:AddToggle({
		key = 'Dotting',
		icon = 'Interface\\Icons\\Ability_creature_cursed_05.png',
		name = 'Auto Dotting',
		text = 'ON/OFF Dotting rotation',
	})
	
	-- Next Toggle is for botting , don't use it if you don't use bot for mobs farm.
	NeP.Interface:AddToggle({
		key = 'auto',
		icon = 'Interface\\Icons\\ability_siege_engineer_automatic_repair_beam',
		name = 'Auto TargetNearestEnemy',
		text = 'ON/OFF Auto TargetNearestEnemy Botting and no Stealth',
	})

end

local Thrash = {

    {'%pause', 'player.energy <=49'},
	{'Thrash'},
	
}

local Rake = {

    {'%pause', 'player.energy <=34'},
    {'Rake'},

}

local PreCombat = {

    --{Thrash, 'toggle(auto) & !isattacking & target.range <6 & target.enemy & target.alive', 'target'},   

 	{'Prowl', '!player.buff(Prowl) & !toggle(auto) & {target.enemy & target.alive || player.area(20).enemies >=1}'},
	
 	{'Rake', 'player.buff(Prowl) & target.range<5 & target.infront & target.enemy & target.alive'},

}

local Cooldowns = {

	{'Berserk', 'player.buff(Tiger\'s Fury) & target.deathin >=11.2'},

	{'Incarnation: King of the Jungle', 'talent(5,2)&{cooldown(Tiger\'s Fury).duration < gcd}'},

}

local Combat = {
    --Mass
	{Thrash, 'toggle(AoE) & target.debuff(Thrash).duration <= 2.5 & player.area(10).enemies >=2'},
	
	--Dotting
	{'Rip', 'toggle(Dotting) & talent(6,1) & target.deathin >= 10 & player.combopoints =5 & !target.debuff(Rip)'},
	{'Rip', 'toggle(Dotting) & !talent(6,1) & target.deathin >= 10 & player.combopoints >=2 & target.debuff(Rip).duration <=4'},
	
	{Rake, 'toggle(Dotting) & player.combopoints <=4 & target.debuff(Rake).duration <= 3 & {!talent(1,1) & target.deathin >= 6 || talent(1,1)}'},
	
	{'Ashamane\'s Frenzy', 'toggle(Dotting) & target.deathin >= 6 & player.combopoints <=2'},
	
	{'Ferocious Bite', 'player.combopoints >=5 & {talent(6,1) || talent(6,2) & target.debuff(Rip).duration >=4}'},
	
	{'Savage Roar', 'talent(5,3) & player.buff(Savage Roar).duration <=4.5 & player.combopoints >=2'},
	
	{'Tiger\'s Fury', '!player.buff(Clearcasting) & player.energy <=39 & {talent(1,1) & target.debuff(Rake) || talent(1,1) & target.debuff(Rip) || talent(1,1) & target.debuff(Thrash) || !talent(1,1) & target.deathin >=7}'},
	
	{'Brutal Slash', 'talent(7,3) & player.combopoints <=4 & {target.range <=10 || player.area(8).enemies >=1}'},
	
	{'Shred', 'talent(7,3) & !player.spell(Brutal Slash).charges >=1 & player.combopoints <5 || !talent(7,3) & player.combopoints <5'},

}

local Keybinds = {
	-- Pause
	{'%pause', 'keybind(alt)'},
	
    {'Mighty Bash', '!player.buff(Prowl) & keybind(shift) & target.range <10 & target.enemy & target.alive'},
	
	{'Maim', '!player.buff(Prowl) & keybind(shift) & player.spell(Mighty Bash).cooldown >gcd & !player.lastcast(Mighty Bash) & target.range <10 & target.enemy & target.alive'},
	
	{'Skull Bash', 'keybind(shift) & player.spell(Wild Charge).cooldown >gcd & !player.lastcast(Wild Charge) & target.range >8 & target.range <=18 & target.enemy & target.alive'},
	
	{'Wild Charge', 'keybind(shift) & target.range >8 & target.range <=30 & target.enemy & target.alive'},
}

local Interrupts = {

	{'Skull Bash',  'target.range<=18'},
	
	{'Typhoon', 'talent(4,3) & player.spell(Skull Bash).cooldown >gcd'},
	
	{'Mighty Bash', 'talent(4,1) & player.spell(Skull Bash).cooldown >gcd & target.range<=10'},
	
	{'Maim', 'player.spell(Skull Bash).cooldown >gcd & player.spell(Mighty Bash).cooldown >gcd & target.range<=10'},
	
}

local Survival = {

    --{'#Healthstone', 'player.health <=60'},
	
    {'Regrowth', 'player.buff(Predatory Swiftness).duration >=10 & !lastcast(Regrowth) & player.health <=90', 'player'},
	
	{'Survival Instincts', 'player.health <=75 & !player.buff(Survival Instincts)'},
	
}

local inCombat = {
	
	{'%dispelself'},
	
	{'Cat Form', '!player.buff(Cat Form) & {!player.swimming || target.enemy & target.alive || player.area(10).enemies >=1}'},
	
    {'/startattack', '!toggle(auto) & !isattacking & target.range <6 & target.enemy & target.alive', 'target'},
	
    {'Rebirth', '!target.enemy & target.dead', 'target'},
	
	{Keybinds},
	{Interrupts, 'target.interruptAt(35) & toggle(interrupts)'},
    {Survival, 'player.health <100'},
	{Cooldowns, 'toggle(cooldowns)'},
	{Combat, 'target.range <=13 & target.enemy & target.alive'},
	
	{'/cleartarget', 'toggle(auto) & target.range >=7'},	
	{'/run TargetNearestEnemy()', 'toggle(auto) & !target.exists'},  --|| !target.alive || target.range >=5}

	{'Moonfire', '!toggle(auto) & !talent(1,3) & target.alive & target.enemy & target.range>8 & target.range<=40 & target.infront & !player.buff(Prowl) & !target.debuff(Moonfire)'}, --working on some private servers

 	{'/cancelform', 'player.swimming & player.area(10).enemies >=1 & !player.buff(Prowl) & !indoors & {player.buff(Cat Form) || player.buff(Bear Form)}'},
	{'Travel Form', 'player.swimming & player.area(10).enemies >=1 & !player.buff(Cat Form) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form)'},
	
}

local outCombat = {

    --test
	
	--{'Treant Form', '!player.buff(Treant Form)'},
	--{'/s Я есть груд', 'player.buff(Treant Form) & lastcast(Treant Form)'},
	
    --{'%SendKey(SPACE)'},
	
	{Keybinds},
	
    {'%dispelall'},
	
	{PreCombat},

	{'/cleartarget', 'toggle(auto) & target.range >=7'},
	
	--{'Travel Form', '!indoors & !player.buff(Travel Form) & !player.buff(Prowl) & target.enemy & !target.alive'},
	
	{'Cat Form', '!player.buff(Cat Form) & {!player.swimming || target.enemy & target.alive || player.area(10).enemies >=1}'},
	{'Revive', '!target.enemy & target.dead', 'target'},
	{'Regrowth', '!player.buff(Prowl) & player.health <= 96', 'player'},
	{'/cancelform', 'player.swimming & !player.buff(Prowl) & !indoors & {player.buff(Cat Form) || player.buff(Bear Form)}'},
	{'Travel Form', 'player.swimming & !player.buff(Cat Form) & !indoors & !player.buff(Prowl) & !player.buff(Travel Form)'},

}

NeP.CR:Add(103, {
	name = '[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Feral',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})
