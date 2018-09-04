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

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\warlock.blp", width = 256, height = 256, offset = 90, y = -80, align = "center"},
	{type = "spacer"}, {type = "spacer"}, {type = "spacer"}, {type = "ruler"},

}

local GUI = {
    
	unpack(Logo_GUI),
	
	{type = "spacer"},{type = "spacer"},{type = "spacer"},{type = "spacer"},{type = "spacer"},
	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
    {type = "combo", default = "1", key = "list1", list = keybind_list_1, width = 100},	
    {type = "text", text = "Fear:|c0000FA9A the target|r"},
	--[[{type = "combo", default = "1", key = "list1", list = keybind_list_1, width = 100},	
	{type = "text", text = "Use Polymorph:|c0000FA9A "},
	{type = "text", text = "      |c0000FA9A on target or on focus if exist:"},	
    {type = "text", text = ""},
	{type = "combo", default = "10", key = "list4", list = target_list, width = 100},
    {type = "text", text = "Use Meteor:|c0000FA9A on:|r"},
	{type = "combo", default = "8", key = "list3", list = keybind_list_3, width = 100},	
]]
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

    {type = "header", size = 16,  text = "PVP", align = "center"},
    --[[{type = "checkbox",	text = "Burst: |c0000FA9A Burst PVP enemy|r", align = "left", key = "burst_key", default = true},
    {type = "checkbox",	text = "Spellsteal: |c0000FA9A steal good buffs enemies around|r", align = "left", key = "st_buff", default = true},]]
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
	{type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Survival", align = "center"},
	--[[{type = "checkbox", text = "Use Ice Block:|c0000FA9A then you are stuned and all in CD", key = "ice_stun", default = false},
	{type = "checkbox", text = "Use Ice Block:|c0000FA9A debuff Cauterize is up", key = "cool_down", default = true},]]
	{type = "checkspin", text = "Use Mortal Coil:|c0000FA9A talent 3/2", key = "mc_key", check = true, spin = 65, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Drain Soul:|c0000FA9A ", key = "drain_key", check = true, spin = 40, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 55, width = 100, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "AoE Toggle", align = "center"},
	--[[{type = "checkspin", text = "Flamestrike:|c0000FA9A target enemies nearby >=", key = "flstrike_AoE", check = true, spin = 4, width = 100, step = 1, max = 10, min = 1},
	{type = "checkspin", text = "Meteor:|c0000FA9A target enemies nearby >=", key = "mete_AoE", check = true, spin = 5, width = 100, step = 1, max = 10, min = 1},]]
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},
	--[[{type = "text", text = "Use Time Warp|c0000FA9A if toggle is on|r"},
	{type = "checkbox", text = "Use Rune of Power|c0000FA9A you can disable|r", key = "rop", default = true},
	{type = "checkbox", text = "Use Combustion|c0000FA9A you can disable|r", key = "fire_man", default = true},
	{type = "checkbox", text = "Use Meteor|c0000FA9A you can disable|r", key = "mete", default = true},]]
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Trinkets", align = "center"},
	{type = "text", text = "|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r", align = "center"},
	{type = "checkbox", text = "Trinket #1", key = "trk1",	default = false},
	{type = "checkbox", text = "Trinket #2", key = "trk2",   default = false},
	{type = "text", text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

}

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A --- |r|cff9482C9 Warlock - Affliction |r|c00FF0000 for Advanced Unlocker|r")
	print("|c0000FA9A ------------------------PVP-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/1 - 2/1 - 3/1 - 4/2 - 5/1 - 6/1 - 7/3")
	print("|c0000FA9A --- |rHonor Talents: 1/1 - 2/1 - 3/1 - 4/1 - 5/3 - 6/2")
    print("|c0000FA9A")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/3 - 2/1 - 3/2 - 4/2 - 5/1 - 6/1 - 7/3")
	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")
	
	NeP.Interface:AddToggle({key = "pet_key", icon = "Interface\\Icons\\spell_shadow_summoninfernal", name = "Auto Summon Pet (Imp or Infernal)", text = "ON/OFF"})
	
end

local pvp = {
	
    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & target.player & target.alive & target.canAttack & {player.state(stun) & player.spell(Every Man for Himself)cooldown > 0 & player.race = Human || player.state(stun) & !player.race = Human || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Keybinds = {

    {"!Fear", "inRange.spell & alive & canAttack & !player.moving & !immune_all & !immune_spell & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},

}

local PreCombat = {

    --level >= 5
	--Pet Function
    {"!/stopcasting", "pet.exists & {player.casting(Summon Imp) || player.casting(Summon Infernal)}", "player"},
	--Imp
    {"Summon Imp", "!pet.exists & !player.moving & !talent(6,1) & toggle(pet_key)", "player"},
    {(function() _G.PetAssistMode() print("Pet was set to Assist you: |c0010ef4fsuccessfully|r") end), "!PetSpell(Firebolt).autocast & pet.exists & !talent(6,1)", "player"},
	{(function() _G.ToggleSpellAutocast("Firebolt") print("Pet Auto Spell |c0000BFFF[Firebolt]|r: |c0010ef4factivated|r") end), "!PetSpell(Firebolt).autocast & pet.exists & !talent(6,1)", "player"},
	--Infernal
    {"Summon Infernal", "!pet.exists & !player.moving & talent(6,1) & toggle(pet_key)"},
    {(function() _G.PetAssistMode() print("Pet was set to Assist you: |c0010ef4fsuccessfully|r") end), "!PetSpell(Meteor Strike).autocast & pet.exists & talent(6,1)", "player"},
	{(function() _G.ToggleSpellAutocast("Meteor Strike") print("Pet Auto Spell |c0000BFFF[Meteor Strike]|r: |c0010ef4factivated|r") end), "!PetSpell(Meteor Strike).autocast & pet.exists & talent(6,1)", "player"},
	{(function() _G.ToggleSpellAutocast("Torch Magic") print("Pet Auto Spell |c0000BFFF[Torch Magic]|r: |c0010ef4factivated|r") end), "!PetSpell(Torch Magic).autocast & pet.exists & talent(6,1)", "player"},
	--End Pet Function
	
    --Leveling
	{"Shadow Bolt", "inRange.spell & alive & canAttack & !player.moving & player.level < 13", "target"},
	{"Corruption", "inRange.spell & alive & canAttack & !debuff & player.level == 13", "target"},
	--End

	{"!Seed of Corruption", "toggle(AoE) & alive & canAttack & inRange.spell & !player.lastcast & target.all.enemies(8).area >= 3 & infront & !player.moving & !debuff & rangebetween(target) <= 10", "mostenemies"},
	{"Unstable Affliction", "inRange.spell  & alive & canAttack & !debuff & !player.moving", "target"},
	
	--[get ready]
    {"Create Healthstone", "item(5512).count < 1 & !player.moving", "player"},
	{"Unending Breath", "player.swimming & !player.buff(Unending Breath)", "player"},
	{"Soulstone", "!player.moving & !player.buff(Soulstone)", "player"},

}

local Survival = {

	{"Mortal Coil", "inRange.spell & talent(3,2) & player.health <= UI(mc_key_spin) & UI(hs_check)", "target"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.area(40).enemies >= 1", "player"}, --Health Stone
	{"!Drain Soul", "inRange.spell & infront & !player.moving & player.health <= UI(drain_key_spin) & UI(drain_key_check)", "target"},

}

local Interrupts = {

	{"!Arcane Torrent", "interruptAt(1) & fixRange <= 7.5 & !player.casting(Barrage) & dungeon.interrupts & player.level > 99", "enemies"},
	{"!Arcane Torrent",	"interruptAt(60) & fixRange <= 7.5 & !player.casting(Barrage) & {player.level < 100 || !indungeon}", "target"},

}

local Cooldowns = {

    {"!Reap Souls", "target.inRange(Agony).spell & target.alive & target.canAttack & player.buff(Tormented Souls).count >= 1 & !player.buff(Deadwind Harvester) & count.enemies.debuffs(Agony) > 2 & player.lastcast(Seed of Corruption)", "player"},

    {"!Reap Souls", "target.inRange(Agony).spell & target.alive & target.canAttack & player.buff(Tormented Souls).count >= 3 & !player.buff(Deadwind Harvester) & count.enemies.debuffs(Agony) > 0 & count.enemies.debuffs(Corruption) > 0", "player"},
    {"!Reap Souls", "target.inRange(Agony).spell & target.alive & target.canAttack & player.buff(Tormented Souls).count >= 2 & !player.buff(Deadwind Harvester) & count.enemies.debuffs(Agony) > 0 & count.enemies.debuffs(Corruption) > 0 & count.enemies.debuffs(Unstable Affliction) > 0", "player"},
    {"!Reap Souls", "target.inRange(Agony).spell & target.alive & target.canAttack & player.buff(Tormented Souls).count >= 1 & !player.buff(Deadwind Harvester) & count.enemies.debuffs(Agony) > 0 & count.enemies.debuffs(Corruption) > 0 & target.debuff(Unstable Affliction).many >= 3", "player"},
	
}

local Combat = {
    --Pet Function--
	--Imp
    {(function() _G.PetAssistMode() print("Pet was set to Assist you: |c0010ef4fsuccessfully|r") end), "!PetSpell(Firebolt).autocast & pet.exists & !talent(6,1)"},
	{(function() _G.ToggleSpellAutocast("Firebolt") print("Pet Auto Spell |c0000BFFF[Firebolt]|r: |c0010ef4factivated|r") end), "!PetSpell(Firebolt).autocast & pet.exists & !talent(6,1)"},
    --Infernal
    {(function() _G.PetAssistMode() print("Pet was set to Assist you: |c0010ef4fsuccessfully|r") end), "!PetSpell(Meteor Strike).autocast & pet.exists & talent(6,1)"},
	{(function() _G.ToggleSpellAutocast("Meteor Strike") print("Pet Auto Spell |c0000BFFF[Meteor Strike]|r: |c0010ef4factivated|r") end), "!PetSpell(Meteor Strike).autocast & pet.exists & talent(6,1)"},
	{(function() _G.ToggleSpellAutocast("Torch Magic") print("Pet Auto Spell |c0000BFFF[Torch Magic]|r: |c0010ef4factivated|r") end), "!PetSpell(Torch Magic).autocast & pet.exists & talent(6,1)"},
	--End Pet Funtion--

    --AoE--
	{"!Seed of Corruption", "toggle(AoE) & alive & canAttack & inRange.spell & infront & !player.moving & !player.lastcast & target.area(8).enemies >= 3 & !debuff & rangebetween(target) <= 15 & count.enemies.debuffs < 3 & {player.health >= UI(drain_key_spin) + 10 & UI(drain_key_check) || !UI(drain_key_check)}", "mostenemies"},
	
	{"Agony", "toggle(AoE) & alive & canAttack & inRange.spell & target.area(15).enemies >= 2 & deathin >= 7 & rangebetween(target) <= 15 & debuff & debuff.duration <= 6", "enemies"},
	{"!Agony", "toggle(AoE) & alive & canAttack & inRange.spell & player.channeling(Drain Soul) & target.area(15).enemies >= 2 & deathin >= 7 & rangebetween(target) <= 15 & debuff & debuff.duration <= 6 & {player.health >= UI(drain_key_spin) + 10 & UI(drain_key_check) || !UI(drain_key_check)}", "enemies"},
	
	{"Agony", "toggle(AoE) & alive & canAttack & inRange.spell & target.area(15).enemies >= 2 & rangebetween(target) <= 15 & !debuff & count.enemies.debuffs(Agony) < 3", "enemies"},
	{"!Agony", "toggle(AoE) & alive & canAttack & inRange.spell & player.channeling(Drain Soul) & target.area(15).enemies >= 2 & rangebetween(target) <= 15 & !debuff & count.enemies.debuffs(Agony) < 3 & {player.health >= UI(drain_key_spin) + 10 & UI(drain_key_check) || !UI(drain_key_check)}", "enemies"},

	{"Corruption", "toggle(AoE) & alive & canAttack & inRange.spell & target.area(15).enemies == 2 & deathin >= 7 & rangebetween(target) <= 15 & debuff & debuff.duration <= 4 & !debuff(Seed of Corruption) & !player.lastcast(Seed of Corruption)", "enemies"},
	{"Corruption", "toggle(AoE) & alive & canAttack & inRange.spell & target.area(15).enemies == 2 & deathin >= 7 & rangebetween(target) <= 15 & !debuff & count.enemies.debuffs < 2 & !debuff(Seed of Corruption) & !player.lastcast(Seed of Corruption)", "enemies"},
	
	--{"Unstable Affliction", "toggle(AoE) & alive & canAttack & inRange.spell & deathin >= 7 & infront & !player.moving & !debuff & count.enemies.debuffs(Unstable Affliction) == 0 & debuff(Seed of Corruption).duration > gcd + 1.5 & player.soulshards > 1", "enemies"},
	--{"!Unstable Affliction", "toggle(AoE) & alive & canAttack & inRange.spell & deathin >= 7 & player.channeling(Drain Soul) & infront & !player.moving & !debuff & count.enemies.debuffs(Unstable Affliction) == 0 & debuff(Seed of Corruption).duration > gcd + 1.5 & player.soulshards > 1 & {player.health >= UI(drain_key_spin) + 10 & UI(drain_key_check) || !UI(drain_key_check)}", "enemies"},
	
	--Single--
	{"Agony", "inRange.spell & alive & canAttack & debuff.duration <= 4.5 & {target.deathin >= 4 || player.combat.time <= 4} & {target.area(15).enemies <= 1 || !toggle(AoE) || target.boss}", "target"},
	{"!Agony", "inRange.spell & alive & canAttack & debuff.duration <= 4.5 & {target.deathin >= 4 || player.combat.time <= 4} & player.channeling(Drain Soul) & {target.area(15).enemies <= 1 || !toggle(AoE) || target.boss} & {player.health >= UI(drain_key_spin) + 10 & UI(drain_key_check) || !UI(drain_key_check)}", "target"},
	
	{"Corruption", "inRange.spell & alive & canAttack & debuff.duration <= 4 & {target.deathin >= 4 || player.combat.time <= 4} & count.enemies.debuffs(Seed of Corruption) < 1 & !player.lastcast(Seed of Corruption) & {target.area(8).enemies <= 1 || !toggle(AoE) || target.boss}", "target"},
	
	{"Unstable Affliction", "inRange.spell & alive & canAttack & debuff(Unstable Affliction).many <= 2 & {target.deathin >= 6 || player.combat.time <= 4} & {target.area(8).enemies <= 2 || !toggle(AoE) || target.boss}", "target"},
	{"!Unstable Affliction", "inRange.spell & alive & canAttack & player.channeling(Drain Soul) & debuff(Unstable Affliction).many <= 2 & {target.deathin >= 6 || player.combat.time <= 4} & {target.area(8).enemies <= 2 || !toggle(AoE) || target.boss} & {player.health >= UI(drain_key_spin) + 10 & UI(drain_key_check) || !UI(drain_key_check)}", "target"},
	
	--Leveling--
	{"Shadow Bolt", "inRange.spell & alive & canAttack & infront & !player.moving & player.level < 13", "target"},
	--End-------
	
	{"Life Tap", "player.mana < 20 & player.health > 30", "player"},
	
	{"Drain Soul", "toggle(AoE) & alive & canAttack & inRange.spell & infront & !player.moving & debuff(Seed of Corruption)", "mostenemies"},
	{"Drain Soul", "inRange.spell & alive & canAttack & infront & !player.moving & !player.lastcast(Seed of Corruption)", "target"},

}

local inCombat = {

	{pvp},
	{Keybinds},
	{Interrupts, "toggle(interrupts) & !target.immune_all & !target.immune_spell"},
    {Survival, "player.health <= 100 & !target.isdummy"},
	{"!/stopattack", "target.immune_all || target.immune_spell", "player"},
	{Cooldowns, "toggle(cooldowns) & !player.casting(Unstable Affliction) & !player.casting(Seed of Corruption) & target.deathin >= 4"},
    {Combat},
	
}

local outCombat = {

	{pvp},
	{Keybinds},
	{PreCombat},

}

NeP.CR:Add(265, {
	name = "[|cff9482C9Kleei|r]|cff9482C9 Warlock - Affliction",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.1.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})