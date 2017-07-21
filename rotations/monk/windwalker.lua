local GUI = {

	--------------------------------
	-- Coming Soon
	--------------------------------

} 

local exeOnLoad = function()
	
	print('|cffADFF2F ----------------------------------------------------------------------|r')
 	print('|cffADFF2F --- |r|cffADFF2FMonk - WindWalker|r')
 	print('|cffADFF2F --- |rRecommended Talents: 1/3 - 2/1 - 3/1 - 4/3 - 5/1 - 6/3 - 7/2')
 	print('|cffADFF2F ----------------------------------------------------------------------|r')

end

local Survival = {
    {'Gift of the Naaru', 'player.health <= 40 & target.enemy & target.alive', 'player'},
	--{'#Healthstone', 'player.health<=60'},
	{'!Touch of Karma', 'target.enemy & target.alive & {player.health <= 60 & target.deathin >7 & || player.health <= 35}'},
	{'Chi Wave', 'talent(1,3) & player.health <= 60', 'player'},
	{'Healing Elixir', 'player.health <= 70'},
	
}

local Cooldowns = {
	{'Touch of Death', 'keybind(control)'},
	{'Serenity', 'player.spell(Fists of Fury).cooldown <gcd'},
	--{'Storm, Earth, and Fire', '!player.buff(Storm, Earth, and Fire)'},
}

local AoE = {
    --{'Rushing Jade Wind' ,{'player.chi >= 1', 'player.spell(Fists of Fury).cooldown > 1'}},
    
}

local Interrupts = {

    {'Spear Hand Strike', 'target.range <=5'},
	{'Paralysis', 'target.range >=6 || player.spell(Spear Hand Strike).cooldown >gcd'},
	
}

local Actions = {

	{'Whirling Dragon Punch'},
    {'Energizing Elixir', 'target.deathin >6 & target.infront & player.energy <40 & player.chi <=2 & player.spell(Fists of Fury).cooldown <gcd'},
    {'Rushing Jade Wind', 'player.spell(Fists of Fury).cooldown >gcd & player.area(8).enemies >=2'},
	{'Blackout Kick', 'player.buff(Blackout Kick!) & target.infront'},
    {'Strike of the Windlord'}, --'target.health > = player.spell(Strike of the Windlord)},
    {'Fists of Fury', 'target.deathin >4 & target.infront'},
    {'Rising Sun Kick', 'player.spell(Fists of Fury).cooldown >gcd || target.deathin <=6'},
	{'Blackout Kick', 'player.spell(Fists of Fury).cooldown >gcd || target.deathin <=6'},
	{'Tiger Palm'},
	
}

local Keybinds = {
	-- Pause
	{'%pause', 'keybind(alt)'},
	{'Leg Sweep', 'keybind(shift) & target.range <=5 & target.enemy & target.alive'},
	{'Paralysis', 'keybind(shift) & target.range >=10 & target.enemy & target.alive'},
	--keybind(control)
}

local inCombat = {
    {'/startattack', '!isattacking & target.range <10 & target.enemy & target.alive'},
	{Keybinds},
	{Survival, 'player.health <100'},
	{Interrupts, 'target.interruptAt(40) & toggle(interrupts)'},
	{Cooldowns, 'toggle(cooldowns)'},
	{AoE, 'toggle(AoE) & player.area(8).enemies >= 2'},
	{Actions, 'target.range <=5 & target.enemy & target.alive'},
    {'Chi Wave', 'talent(1,3) & player.chi =0 & player.energy <47 || target.range >10', 'target'},
}

local outCombat = {
	{Keybinds},
	{'Resuscitate', '!target.enemy & target.dead', 'target'},
	--{'Effuse', '!player.moving & player.health<90', 'player'},
	
}

NeP.CR:Add(269, {
	name = '[|cffADFF2FKleei|r]|cffADFF2F Monk - Windwalker',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})
