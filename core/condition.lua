local _G = _G
local NeP = NeP

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("MainDaggerEquipped", "", "")
NeP.DSL:Register("MainDaggerEquipped", function()
  local _,_,_,_,_,_,MainItemType = GetItemInfo(GetInventoryItemLink("player",GetInventorySlotInfo("MainHandSlot")))
  return MainItemType == "Daggers"
end)

--/dump NeP.DSL.Parse("SecondaryDaggerEquipped", "", "")
NeP.DSL:Register("SecondaryDaggerEquipped", function()
  local _,_,_,_,_,_,SecondaryItemType = GetItemInfo(GetInventoryItemLink("player",GetInventorySlotInfo("SecondaryHandSlot")))
  return SecondaryItemType == "Daggers"
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("islooting", "", "")
NeP.DSL:Register("islooting", function()
  return (_G.GetNumLootItems() > 0)
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("shadow_dance_timing", "", "")
NeP.DSL:Register("shadow_dance_timing", function()
  local chargeTime = NeP.DSL:Get("spell.recharge")(nil, "Shadow Dance")
    chargeTime = chargeTime - 10
  if NeP.DSL:Get("canAttack")("target") then
   if NeP.DSL:Get("debuff.duration")("target", "Nightblade") < 7 then
    chargeTime = chargeTime - 9
   end
   if not NeP.DSL:Get("buff")("player", "Finality: Eviscerate") then
    chargeTime = chargeTime - 9
   end
  end
  if chargeTime <= 0 then chargeTime = 0 end
  return chargeTime == 0
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("combopoints.deficit", "", "")
NeP.DSL:Register("combopoints.deficit", function()
  return (UnitPowerMax("player", SPELL_POWER_COMBO_POINTS)) - (UnitPower("player", SPELL_POWER_COMBO_POINTS))
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

local immunallbuff = { 642, 133093, 63148, 186265, 19263, 122464, 122465, 122470, 124280, 125174, 45438, 145533, 41590, 36911, 27619, 47585 }
local immunalldebuff = { 33786, 209753, 88010 }
  
--/dump NeP.DSL.Parse("player.immune_all", "", "")
--/dump NeP.DSL.Parse("target.immune_all", "", "")
NeP.DSL:Register("immune_all",function(target)
  for i = 1, #immunallbuff do
  local BuffName = _G.GetSpellInfo(immunallbuff[i])
   if NeP.DSL:Get("buff.any")(target, BuffName) then
    return true 
   end
  end
  for i = 1, #immunalldebuff do
   local DebuffName = _G.GetSpellInfo(immunalldebuff[i])
   if NeP.DSL:Get("debuff.any")(target, DebuffName) then
    return true 
   end
  end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

local immunstun = { 
   48792,   -- Icebound Fortitude                  -- Death Knight
   115018,  -- Desecrated Ground                   -- Death Knight
   46924,   -- Bladestorm                          -- Warrior
   19574,   -- Bestial Wrath                       -- Hunter
   213658,  -- Craft: Nimble Brew                  -- Monk
   204336,  -- Grounding Totem (Player Spell)      -- Shaman
   8178,    -- Grounding Totem (Totem Spell)       -- Shaman
}

--/dump NeP.DSL.Parse("target.immune_stun", "", "")
NeP.DSL:Register("immune_stun",function(unit)
  for i = 1, #immunstun do
  local immunstunName = _G.GetSpellInfo(immunstun[i])
   if NeP.DSL:Get("buff.any")(unit, immunstunName) then
    return true 
   end
  end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

local immunspell = { 31224, 65961, 81549, 213915, 114028, 23920, 216890, 57643, 48707 }
 
--/dump NeP.DSL.Parse("target.immune_spell", "", "")
NeP.DSL:Register("immune_spell",function(unit)
  for i = 1, #immunspell do
  local immunspellName = _G.GetSpellInfo(immunspell[i])
   if NeP.DSL:Get("buff.any")(unit, immunspellName) then
    return true
   end
  end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("target.immune_heal", "", "")
NeP.DSL:Register("immune_heal", function(target)
  return NeP.DSL:Get("debuff.count.any")(target, GetSpellInfo(209858)) > 29 or NeP.DSL:Get("buff.any")(target, GetSpellInfo(20711))
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("target.Garrote_Silence", "", "")
NeP.DSL:Register("Garrote_Silence", function(unit)
  return NeP.DSL:Get("debuff")(unit, _G.GetSpellInfo(1330))
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("buff_of_the_bones", "", "")
NeP.DSL:Register("buff_of_the_bones", function()
  local roll = 0
   if NeP.DSL:Get("buff.duration")("player", _G.GetSpellInfo(193357)) > 1.5 then  roll = roll + 2 end -- Shark Infested Waters
   if NeP.DSL:Get("buff.duration")("player", _G.GetSpellInfo(193359)) > 1.5 then  roll = roll + 2 end -- True Bearing
   if NeP.DSL:Get("buff.duration")("player", _G.GetSpellInfo(199603)) > 1.5 then  roll = roll + 1 end -- Jolly Roger
   if NeP.DSL:Get("buff.duration")("player", _G.GetSpellInfo(193358)) > 1.5 then  roll = roll + 1 end -- Grand Melee
   if NeP.DSL:Get("buff.duration")("player", _G.GetSpellInfo(199600)) > 1.5 then  roll = roll + 1 end -- Buried Treasure
   if NeP.DSL:Get("buff.duration")("player", _G.GetSpellInfo(193356)) > 1.5 then  roll = roll + 2 end -- Broadsides
   if _G.UnitDebuff("player", _G.GetSpellInfo(202665)) then roll = roll + 1 end -- Curse of the Dreadblades
   if roll > 1 then
    return true
   end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

local TotemsID = { 
   2630,   -- Earthbind Totem
   113845, -- Totem Mastery
   102392, -- Resonance Totem
   106317, -- Storm Totem
   106319, -- Ember Totem
   106321, -- Tailwind Totem
   3527,   -- Healing Stream Totem
   59764,  -- Healing Tide Totem
   5925,   -- Grounding Totem
   53006,  -- Spirit Link Totem
}

--/dump NeP.DSL.Parse("target.enemy_totem", "", "")
NeP.DSL:Register("enemy_totem", function(unit)
  for i = 1, #TotemsID do
  local TotemsName = TotemsID[i]
   if NeP.DSL:Get("id")(unit, TotemsName) then
    return true
   end
  end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("isgcd", "", "")
NeP.DSL:Register("isgcd", function()
  return NeP.DSL:Get("spell.cooldown")("player", "61304") > 0.0
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--USAGE UNIT.inRange(SPELL_NAME).spell
NeP.DSL:Register("inRange.spell", function(unit, spell)
  local spellIndex, spellBook = NeP.Core:GetSpellBookIndex(spell)
  return spellIndex and _G.IsSpellInRange(spellIndex, spellBook, unit) == 1
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

local cast = { 
    196392, 226206, 226269, 226285, 211007, 203176,  -- Arcway
    194657, 199514, 198405, 194266, 195293, 198407, 198495,  -- MoS
    225573, 196883, 200248, -- BrH
    202181, 193585, -- NL
    215204, 211299, 211470, 211401, 208165, 209413, 209485, 209404, 225100, -- CoS
    200658, 200642, 204243, 201411, -- DHT
    218532, 196870, 195108, 195129, 195046, 197502, 196027, 196175, 192003, -- EoA
    198595, 198931, 198934, 198962, 198959, 192563, 192288, 199726, 198750, -- HoV
    193069, 191595, 191823, 194675, 202661, 201488, 195332, -- VotW
    --228255, 228239, 227917, 232115, 228280, 228279, 228277, 226316, 228625, 227823, 227800, 227545, 227616, 227542, 228606, 229307, 36247, 227628, 227592, 229714, 211464, 229083, 230084, -- Karazhan (Upper + Lower)
    --205112, 224453, 224460, 204963, -- VH
    221059, 205070, 223392, 225042, 223565, 208697, 225079, 205300, 211368, 223038, 223590, 222939,  -- EN Raid
}

--/dump NeP.DSL.Parse("dungeon.interrupts", "", "")
NeP.DSL:Register("dungeon.interrupts", function(unit)
  for i = 1, #cast do
  local SpellName = _G.GetSpellInfo(cast[i])
   if NeP.DSL:Get("casting")(unit, SpellName) and NeP.DSL:Get("indungeon")(nil) then
    return true
   end
  end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

local dangerous = { 196376, 204611, 71443, 191855, 194325, 196838, 199176, 195791 }

--/dump NeP.DSL.Parse("player.inDanger", "", "")
NeP.DSL:Register("inDanger",function(target)
  for i = 1, #dangerous do
  local dangerousName = _G.GetSpellInfo(dangerous[i])
   if NeP.DSL:Get("debuff.any")(target, dangerousName) and NeP.DSL:Get("indungeon")(nil) then
    return true
   end
  end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--[[USAGE: instanceType == none --when outside an instance
pvp --when in a battleground
arena --when in an arena
party --when in a 5-man instance
raid --when in a raid instance
nil --when in an unknown kind of instance, eg. in a scenario]]

--/dump NeP.DSL.Parse("instanceType", "", "")
NeP.DSL:Register("instanceType", function()
  if select(1, _G.IsInInstance()) then
   return select(2, _G.IsInInstance())
  end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("pvp.area", "", "")
NeP.DSL:Register("pvp.area", function()
  return NeP.DSL:Get("instanceType")(nil) == "arena" or NeP.DSL:Get("instanceType")(nil) == "pvp"
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("indungeon", "", "")
NeP.DSL:Register("indungeon", function()
  return NeP.DSL:Get("instanceType")(nil) == "party" or NeP.DSL:Get("instanceType")(nil) == "raid"
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("isPartyDungeon", "", "")
NeP.DSL:Register("isPartyDungeon", function()
  return NeP.DSL:Get("instanceType")(nil) == "party"
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("isRaidDungeon", "", "")
NeP.DSL:Register("isRaidDungeon", function()
  return NeP.DSL:Get("instanceType")(nil) == "raid"
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("PetUIExists", "", "")
NeP.DSL:Register("PetUIExists", function()
  return select(1, _G.HasPetUI())
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump GetSpellAutocast("Waterbolt")
--/dump NeP.DSL.Parse("PetSpell(Waterbolt).autocast", "", "")
NeP.DSL:Register("PetSpell.autocast", function(_, spell)
  if select(1, _G.HasPetUI()) then
   return select(2, _G.GetSpellAutocast(spell)) 
  end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("target.fixRange", "", "")
NeP.DSL:Register("fixRange", function(unit)
  return NeP.Protected.Distance("player", unit)
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("player.rangebetween(target)", "", "")
NeP.DSL:Register("rangebetween", function(unit, unit2)
  return NeP.Protected.Distance(unit, unit2)
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

-- Checks if the player has autoattack toggled currently (Hunters Specificaly)
-- Use {'/startattack', '!isshooting'}, at the top of a CR to force autoattacks

NeP.DSL:Register("isshooting", function(unit)
  return _G.IsCurrentSpell(75)
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("IsMounted", "", "")
NeP.DSL:Register("IsMounted", function()
  return SecureCmdOptionParse("[overridebar][vehicleui][possessbar,@vehicle,exists][mounted]true")
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("IsStealthed", "", "")
NeP.DSL:Register("IsStealthed", function()
  return _G.IsStealthed()
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("artifact(TraitName).traits_count", "", "")
NeP.DSL:Register("artifact.traits_count", function(_, spell)
  return select(9, NeP.Artifact:TraitInfo(spell)) or 0
end)

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------

--/dump NeP.DSL.Parse("lastcast(SpellName).interrupted", "", "")
-- Added to the NeP Core

--------------------------------------------------------------------------------
------------------------------ Xeer-TRAVEL SPEED--------------------------------
--------------------------------------------------------------------------------

-- List of know spells travel speed. Non charted spells will be considered traveling 40 yards/s
-- To recover travel speed, open up /eventtrace, calculate difference between SPELL_CAST_SUCCESS and SPELL_DAMAGE events

-- Return the time a spell will need to travel to the current target

local Travel_Chart = {
  [116]    = 23.174, -- Frostbolt
  [228597] = 23.174, -- Frostbolt
  [133]    = 45.805, -- Fireball
  [11366]  = 52, -- Pyroblast
  [29722]  = 18, -- Incinerate
  [30455]  = 25.588, -- Ice Lance
  [105174] = 33, -- Hand of Gul'dan
  [120644] = 10, -- Halo
  [122121] = 25, -- Divine Star
  [127632] = 19, -- Cascade
  [210714] = 38, -- Icefury
  [51505]  = 38.090, -- Lava Burst
  [205181] = 32.737, -- Shadowflame
}

-- /dump NeP.DSL.Parse("target.spell(Pyroblast).traveltime", "", "")
NeP.DSL:Register("spell.traveltime", function(unit, spell)
  local spellID = NeP.Core:GetSpellID(spell)
  if Travel_Chart[spellID] then
   TravelSpeed = Travel_Chart[spellID]
   return NeP.DSL:Get("distance")(unit) / TravelSpeed
  else
   return 0
  end
end)
