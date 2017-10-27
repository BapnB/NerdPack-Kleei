local GUI = {

	{type = 'header', text = 'Coming Soon', align = 'center'},

}

local exeOnLoad = function()

	print('|cffADFF2F --- |r|c00FF7F00 DRUID - Balance |r')

	print('|cffADFF2F ------------------------PVE-------------------------------------------|r')
	print('|cffADFF2F --- |rRecommended Talents: Coming Soon')
	print('|cffADFF2F ----------------------------------------------------------------------|r')
	
end

local Keybinds = {

   --Coming Soon

}

local PreCombat = { 

   {"Moonkin Form", "!player.buff(Moonkin Form)"},

}

local Survival = {



}

local Interrupts = {



}

local Cooldowns = {



}

local Combat = {

    

}

local inCombat = {


    {Combat},
    
}

local outCombat = {	

    {PreCombat},

}

NeP.CR:Add(102, {
	name = '[|c00FF7F00Kleei|r]|c00FF7F00 DRUID - Balance',
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	wow_ver = '7.1.5',
 	nep_ver = '1.11',
	load = exeOnLoad
})