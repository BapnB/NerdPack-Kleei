local _G = _G
local NeP = NeP

function Kleei.ObjectValid(Obj)
	return _G.UnitInPhase(Obj)
	and _G.UnitIsVisible(Obj)
	and NeP.Protected.Distance("player", Obj) < 50
	and NeP.Protected.LineOfSight("player", Obj)
end

--/dump NeP.DSL.Parse("rake.stun", "", "")
NeP.DSL:Register("rake.stun", function(target)
    if NeP.DSL:Get("debuff.many")(target, "Rake") == 2 then
      return true
    end
end)

--/dump NeP.DSL.Parse("player.immune_all", "", "")
--/dump NeP.DSL.Parse("target.immune_all", "", "")
NeP.DSL:Register("immune_all",function(target)
 local immunallbuff = { 642, 133093, 63148, 186265, 19263, 122464, 122465, 122470, 124280, 125174, 45438, 145533, 41590, 36911, 27619, 47585 }
  for i = 1, #immunallbuff do
    local BuffName = _G.GetSpellInfo(immunallbuff[i])
	 if _G.UnitBuff(target, BuffName) then
    	return true end
  end
   local immunalldebuff = { 33786, 209753, 88010 }
      for i = 1, #immunalldebuff do
	    local DebuffName = _G.GetSpellInfo(immunalldebuff[i])
	      if _G.UnitDebuff(target, DebuffName) then
    	   return true end
	  end
end)

--/dump NeP.DSL.Parse("target.immune_stun", "", "")
NeP.DSL:Register("immune_stun",function(target)
--[[                Buff immune to stun
---------------------------PvP----------------------------
----------------------------------------------------------
    "48792",     -- Icebound Fortitude                  -- Death Knight
    "115018",    -- Desecrated Ground                   -- Death Knight
    "46924",     -- Bladestorm                          -- Warrior
    "19574",     -- Bestial Wrath                       -- Hunter
    "213658",    -- Craft: Nimble Brew                  -- Monk
    "204336",    -- Grounding Totem (Player Spell)      -- Shaman
	"8178",      -- Grounding Totem (Totem Spell)       -- Shaman
]]
 local immunstun = { 48792, 115018, 46924, 19574, 213658, 204336, 8178 }
  for i = 1, #immunstun do
    local immunstunName = _G.GetSpellInfo(immunstun[i])
	 if _G.UnitBuff(target, immunstunName) then
    	return true end
  end
end)

--/dump NeP.DSL.Parse("target.immune_spell", "", "")
NeP.DSL:Register("immune_spell",function(target)
 local immunspell = { 31224, 65961, 81549, 213915, 114028, 23920, 216890, 57643, 48707 }
  for i = 1, #immunspell do
    local immunspellName = _G.GetSpellInfo(immunspell[i])
	 if _G.UnitBuff(target, immunspellName) then
    	return true end
  end
end)

--/dump NeP.DSL.Parse("target.Garrote_Silence", "", "")
NeP.DSL:Register("Garrote_Silence", function(target)
   if _G.UnitDebuff(target, _G.GetSpellInfo(1330)) then
     return true
   end
end)

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

--/dump NeP.DSL.Parse("target.enemy_totem", "", "")
NeP.DSL:Register("enemy_totem", function(target)

--[[  TOTEMS
-----------------------------------
  -- 2630   -- Earthbind Totem
  -- 113845 -- Totem Mastery
  -- 102392 -- Resonance Totem
  -- 106317 -- Storm Totem
  -- 106319 -- Ember Totem
  -- 106321 -- Tailwind Totem
  -- 3527   -- Healing Stream Totem
  -- 59764  -- Healing Tide Totem
  -- 5925   -- Grounding Totem	   
  -- 53006  -- Spirit Link Totem
----------------------------------
]]
 local Ktotems = { 2630, 113845, 102392, 106317, 106319, 106321, 3527, 59764, 5925, 53006 }
  for i = 1, #Ktotems do
    local totemsName = Ktotems[i]
	 if NeP.DSL:Get("id")(target, totemsName) then
    	return true end
  end
end)

--/dump NeP.DSL.Parse("isgcd", "", "")
NeP.DSL:Register("isgcd", function()
    if NeP.DSL:Get("spell.cooldown")("player", "61304") > 0.0000 then
	  return true
	end
end)

--USAGE UNIT.inRange(SPELL_NAME).spell
NeP.DSL:Register("inRange.spell", function(target, spell)
  local spellIndex, spellBook = NeP.Core:GetSpellBookIndex(spell)
   if not spellIndex then return false end
   if spellIndex and _G.IsSpellInRange(spellIndex, spellBook, target) == 1 then
  return true end
end)

-- Arcane Mage 3x(Arcane Missile!) Condition 
--/dump NeP.DSL.Parse("missile.ready", "", "")
NeP.DSL:Register("missile.ready", function()
  if NeP.DSL:Get("buff.count")("player", _G.GetSpellInfo(79683)) == 3 then
	return true
  end
end)

--/dump NeP.DSL.Parse("dungeon.interrupts", "", "")
NeP.DSL:Register("dungeon.interrupts", function(target)
local cast = { 196392, 226206, 226269, 226285, 211007, 203176, 194657, 199514, 198405, 194266, 195293, 198407, 198495, 225573, 196883, 200248, 202181, 193585, 215204, 211299, 211470, 211401, 208165, 209413, 209485, 209404, 225100, 200658, 200642, 204243, 201411, 218532, 196870, 195108, 195129, 195046, 197502, 196027, 196175, 192003, 198595, 198931, 198934, 198962, 198959, 192563, 192288, 199726, 198750, 193069, 191595, 191823, 194675, 202661, 201488, 195332, 228255, 228239, 227917, 232115, 228280, 228279, 228277, 226316, 228625, 227823, 227800, 227545, 227616, 227542, 228606, 229307, 36247, 227628, 227592, 229714, 229083, 230084, 205112, 205121, 224453, 224460, 204963, 221059, 205070, 223392, 225042, 223565, 208697, 225079, 205300, 211368, 223038, 223590, 222939 }
  for i = 1, #cast do
    local SpellName = _G.GetSpellInfo(cast[i])
    if NeP.DSL:Get("casting")(target, SpellName) and not _G.UnitIsPlayer(target) and NeP.DSL:Get("indungeon")(nil) then
      return true end
  end
end)

--[[USAGE: instanceType == none --when outside an instance
pvp --when in a battleground
arena --when in an arena
party --when in a 5-man instance
raid --when in a raid instance
nil --when in an unknown kind of instance, eg. in a scenario]]

--/dump NeP.DSL.Parse("instanceType", "", "")
NeP.DSL:Register("instanceType", function()
  return select(2, _G.IsInInstance())
end)

--/dump NeP.DSL.Parse("indungeon", "", "")
NeP.DSL:Register("indungeon", function()
  if NeP.DSL:Get("instanceType")(nil) == "party" or NeP.DSL:Get("instanceType")(nil) == "raid" then 
    return true 
  end 
   return false
end)

--/dump GetSpellAutocast("Waterbolt")
--/dump NeP.DSL.Parse("PetSpell(Waterbolt).autocast", "", "")
NeP.DSL:Register("PetSpell.autocast", function(_, spell)
  return select(2, _G.GetSpellAutocast(spell))
end)

--/dump NeP.DSL.Parse("PetUIExists", "", "")
NeP.DSL:Register("PetUIExists", function()
  return select(1, _G.HasPetUI())
end)

--/dump NeP.DSL.Parse("target.fixRange", "", "")
NeP.DSL:Register("fixRange", function(target)
   return NeP.Protected.Distance("player", target)
end)

-- Checks if the player has autoattack toggled currently (Hunters Specificaly)
-- Use {'/startattack', '!isshooting'}, at the top of a CR to force autoattacks
NeP.DSL:Register("isshooting", function(target)
  return _G.IsCurrentSpell(75)
end)

--/dump NeP.DSL.Parse("IsMounted", "", "")
NeP.DSL:Register("IsMounted", function()
  return SecureCmdOptionParse("[overridebar][vehicleui][possessbar,@vehicle,exists][mounted]true")
end)

--/dump NeP.DSL.Parse("target.InLOS", "", "")
NeP.DSL:Register("InLOS", function(target)
  if _G.UnitExists(target) and _G.UnitIsVisible(target) then
  return NeP.Protected.LineOfSight("player", target) end
end)