local _G = _G

--/dump NeP.DSL.Parse("rake.stun", "", "")
NeP.DSL:Register("rake.stun", function(target, spell)
    if NeP.DSL:Get("debuff.many")("target", "Rake") == 2 then
    return true
end
    return false
end)

--/dump NeP.DSL.Parse("player.immune_all", "", "")
--/dump NeP.DSL.Parse("target.immune_all", "", "")
NeP.DSL:Register("immune_all",function(target, spell)
    if UnitBuff(target, GetSpellInfo(642)) or
	   UnitBuff(target, GetSpellInfo(133093)) or
	   UnitBuff(target, GetSpellInfo(63148)) or
	   UnitBuff(target, GetSpellInfo(186265)) or
	   UnitBuff(target, GetSpellInfo(19263)) or
	   UnitBuff(target, GetSpellInfo(122464)) or
	   UnitBuff(target, GetSpellInfo(122465)) or
	   UnitBuff(target, GetSpellInfo(122470)) or
	   UnitBuff(target, GetSpellInfo(124280)) or
	   UnitBuff(target, GetSpellInfo(125174)) or
	   UnitBuff(target, GetSpellInfo(45438)) or
	   UnitBuff(target, GetSpellInfo(145533)) or
	   UnitBuff(target, GetSpellInfo(41590)) or
	   UnitBuff(target, GetSpellInfo(36911)) or
	   UnitBuff(target, GetSpellInfo(27619)) or
	   UnitBuff(target, GetSpellInfo(47585)) or
	   UnitDebuff(target, GetSpellInfo(33786)) or
	   UnitDebuff(target, GetSpellInfo(209753)) or
	   UnitDebuff(target, GetSpellInfo(88010)) then
       return true
    end
       return false
end)

--/dump NeP.DSL.Parse("target.immune_stun", "", "")
NeP.DSL:Register("immune_stun",function(target, spell)
--[[------------------------------------------------------
----------------PVE , don't stun the bosses---------------
----------------------------------------------------------
                    Buff immune to stun
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
    if NeP.DSL:Get("boss")(target) or
       UnitBuff(target, GetSpellInfo(48792)) or
	   UnitBuff(target, GetSpellInfo(115018)) or
	   UnitBuff(target, GetSpellInfo(46924)) or
	   UnitBuff(target, GetSpellInfo(19574)) or
	   UnitBuff(target, GetSpellInfo(213658)) or
	   UnitBuff(target, GetSpellInfo(204336)) or
	   UnitBuff(target, GetSpellInfo(8178)) then
	   return true
	end
       return false
end)

--/dump NeP.DSL.Parse("target.immune_spell", "", "")
NeP.DSL:Register("immune_spell",function(target, spell)
    if UnitBuff(target, GetSpellInfo(31224)) or
	   UnitBuff(target, GetSpellInfo(65961)) or
	   UnitBuff(target, GetSpellInfo(81549)) or
	   UnitBuff(target, GetSpellInfo(213915)) or
	   UnitBuff(target, GetSpellInfo(114028)) or
	   UnitBuff(target, GetSpellInfo(23920)) or
	   UnitBuff(target, GetSpellInfo(216890)) or
	   UnitBuff(target, GetSpellInfo(57643)) or
	   UnitBuff(target, GetSpellInfo(48707)) then
	   return true
	end
       return false
end)

--/dump NeP.DSL.Parse("target.steal_buff", "", "")
NeP.DSL:Register('steal_buff',function(target, spell)

--[[------------------------------------------------------
                         Buff to Steal
---------------------------PvP-------------------------
----------------------------------------------------------
    "235450",    -- Prismatic Barrier    -- Mage Arcane
    "12042",     -- Arcane Power         -- Mage Arcane
    "11426",     -- Ice Barrier          -- Mage Frost
    "12472",     -- Ice Veins            -- Mage Frost
    "190319",    -- Combustion           -- Mage Fire
    "198111",    -- Temporal Shield      -- Mage Fire PVP Talent
    "29166",     -- Innervate            -- Druid
    "1044",      -- Blessing of Freedom  -- Paladin
    "184662",    -- Shield of Vengeance  -- Paladin
    "47536",     -- Rapture              -- Priest
    "17",        -- Power Word: Shield   -- Priest
    "152118",    -- Clarity of Will      -- Priest
    "212295",    -- Nether Ward          -- Warlock
    "196098",    -- Soul Harvest         -- Warlock
    
---------------------------PVE------------------------
    "222477"     -- Vengeful Wail (+50% DMG)
    "197892"     -- Runic Empowerment (Damage done increased by 30%.Damage taken reduced by 30%.)
    "198745"     -- Protective Light (Absorbs 1.500.000 damage)
]]

    if UnitBuff(target, GetSpellInfo(235450)) or
	   UnitBuff(target, GetSpellInfo(12042)) or
	   UnitBuff(target, GetSpellInfo(11426)) or
	   UnitBuff(target, GetSpellInfo(12472)) or
	   UnitBuff(target, GetSpellInfo(190319)) or
	   UnitBuff(target, GetSpellInfo(198111)) or
	   UnitBuff(target, GetSpellInfo(29166)) or
	   UnitBuff(target, GetSpellInfo(1044)) or
	   UnitBuff(target, GetSpellInfo(184662)) or
	   UnitBuff(target, GetSpellInfo(47536)) or
	   UnitBuff(target, GetSpellInfo(17)) or
	   UnitBuff(target, GetSpellInfo(152118)) or
	   UnitBuff(target, GetSpellInfo(212295)) or
	   UnitBuff(target, GetSpellInfo(196098)) or
	   UnitBuff(target, GetSpellInfo(222477)) or
	   UnitBuff(target, GetSpellInfo(197892)) or
	   UnitBuff(target, GetSpellInfo(198745)) then
       return true
    end
       return false
end)

--/dump NeP.DSL.Parse("target.Garrote_Silence", "", "")
NeP.DSL:Register("Garrote_Silence", function(target, spell)
    if UnitDebuff("target", GetSpellInfo(1330)) then
    return true
end
    return false
end)

--/dump NeP.DSL.Parse("roll_the_bones", "", "")
NeP.DSL:Register("buff_of_the_bones", function(target, spell)
  local roll = 0
    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(193357)) > 3 then  roll = roll + 2 -- Shark Infested Waters
end

    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(193359)) > 3 then  roll = roll + 1  -- True Bearing
end

    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(199603)) > 3 then  roll = roll + 1  -- Jolly Roger
end

    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(193358)) > 3 then  roll = roll + 1  -- Grand Melee
end

    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(199600)) > 3 then  roll = roll + 1  -- Buried Treasure
end

    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(193356)) > 3 then  roll = roll + 2  -- Broadsides
end

    if UnitDebuff("player", GetSpellInfo(202665)) then roll = roll + 1
end

    if roll > 1 then
    return true
end
    return false
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

    if NeP.DSL:Get("id")(target, (2630)) or 
	   NeP.DSL:Get("id")(target, (113845)) or 
	   NeP.DSL:Get("id")(target, (102392)) or 
	   NeP.DSL:Get("id")(target, (106317)) or 
	   NeP.DSL:Get("id")(target, (106319)) or 
	   NeP.DSL:Get("id")(target, (106321)) or 
	   NeP.DSL:Get("id")(target, (3527)) or 
	   NeP.DSL:Get("id")(target, (59764)) or
	   NeP.DSL:Get("id")(target, (5925)) or	   
	   NeP.DSL:Get("id")(target, (53006)) then
	  return true
	end
	  return false
end)

--/dump NeP.DSL.Parse("isgcd", "", "")
NeP.DSL:Register("isgcd", function()
    if NeP.DSL:Get("spell.cooldown")("player", "61304") > 0.0000 then
	return true
	end
	return false
end)

--/dump NeP.DSL.Parse("target.inRange(Wild Charge).spell", "", "")
NeP.DSL:Register("inRange.spell", function(target, spell)
  local spellIndex, spellBook = NeP.Core:GetSpellBookIndex(spell)
  if not spellIndex then return false end
  if spellIndex and _G.IsSpellInRange(spellIndex, spellBook, target) == 1 then
  return true end
end)

-- Arcane Mage 3x(Arcane Missile!) Condition 
--/dump NeP.DSL.Parse("missile.ready", "", "")
NeP.DSL:Register("missile.ready", function()
  if NeP.DSL:Get("buff.count")("player", GetSpellInfo(79683)) == 3 then
	return true
	end
	return false
end)