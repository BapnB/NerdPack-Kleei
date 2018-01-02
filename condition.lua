local _G = _G

--/dump NeP.DSL.Parse("player.mana.actual", "", "")
NeP.DSL:Register("mana.actual", function(target)
	return _G.UnitMana(target)
end)

--/dump NeP.DSL.Parse("player.mana.max", "", "")
NeP.DSL:Register("mana.max", function(target)
	return _G.UnitManaMax(target)
end)

--/dump NeP.DSL.Parse("target.caster", "", "")
NeP.DSL:Register("caster", function(target)
    if NeP.DSL:Get("class")("target", "Priest") or NeP.DSL:Get("class")("target", "Mage") or NeP.DSL:Get("class")("target", "Warlock") then
      return true --Need To Add a few more specs not whole Class, Monk Mistweaver, Druid Balance, Druid Restoration, Paladin Holy
    end
      return false
end)

--/dump NeP.DSL.Parse("target.player", "", "")
NeP.DSL:Register("player", function(target)
  return _G.UnitIsPlayer(target)
end)

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

--/dump NeP.DSL.Parse("target.steal_buff", "", "")
NeP.DSL:Register('steal_buff',function(target, spell)
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

--/dump NeP.DSL.Parse("enemy_totem", "", "")
NeP.DSL:Register("enemy_Earthbind_Totem", function(target)
    if not _G.UnitExists(target) then 
	return 
	end
    if _G.UnitName(target) == "Earthbind Totem" then
	return true
	end
	return false
end)

--/dump NeP.DSL.Parse("enemy_totem", "", "")
NeP.DSL:Register("enemy_totem", function(target)
    if not _G.UnitExists(target) then 
	return 
	end
    if _G.UnitName(target) == "Earthbind Totem" or
	   _G.UnitName(target) == "Totem Mastery" or
	   _G.UnitName(target) == "Resonance Totem" or
	   _G.UnitName(target) == "Storm Totem" or
	   _G.UnitName(target) == "Ember Totem" or
	   _G.UnitName(target) == "Tailwind Totem" or
	   _G.UnitName(target) == "Healing Stream Totem" or
	   _G.UnitName(target) == "Healing Tide Totem" or
	   _G.UnitName(target) == "Spirit Link Totem" then
	return true
	end
	return false
end)

--- Highest Health Enemy
NeP.FakeUnits:Add("highestenemy", function(num)
	local tempTable = {}
	for _, Obj in pairs(NeP.OM:Get("Enemy")) do
		if _G.UnitExists(Obj.key) and _G.UnitIsVisible(Obj.key) and NeP.DSL:Get("combat")(Obj.key) and NeP.DSL:Get("alive")(Obj.key) and not NeP.DSL:Get("pvp")(Obj.key) then
			tempTable[#tempTable+1] = {
				key = Obj.key,
				health = NeP.DSL:Get("health")(Obj.key)
			}
		end
	end
	table.sort( tempTable, function(a,b) return a.health > b.health end )
	return tempTable[num] and tempTable[num].key
end)

--/dump NeP.DSL.Parse("player.infront.of.target", "", "")
NeP.DSL:Register("infront.of.target", function(target)
    return NeP.Protected.Infront("target", target)
end)

--/dump NeP.DSL.Parse("target.race", "", "")
NeP.DSL:Register("race", function(target)
    return _G.UnitRace(target)
end)