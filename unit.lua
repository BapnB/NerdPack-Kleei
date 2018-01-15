local _G = _G

--- Highest Health Enemy
NeP.FakeUnits:Add("highestenemy", function(num)
	local tempTable = {}
	for _, Obj in pairs(NeP.OM:Get("Enemy")) do
		if _G.UnitExists(Obj.key) and _G.UnitIsVisible(Obj.key) and 
		   NeP.DSL:Get("combat")(Obj.key) and 
		   NeP.DSL:Get("alive")(Obj.key) and 
		   NeP.DSL:Get("infront")(Obj.key) and not 
		   NeP.DSL:Get("player")(Obj.key) and not 
		   NeP.DSL:Get("pvp")(Obj.key) then
			tempTable[#tempTable+1] = {
				key = Obj.key,
				health = NeP.DSL:Get("health")(Obj.key)
			}
		end
	end
	table.sort( tempTable, function(a,b) return a.health > b.health end )
	return tempTable[num] and tempTable[num].key
end)

--[[
------------------------------------------------------
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
--Enemies with buffs that needs to be stolen
NeP.FakeUnits:Add({"enemystbuff"}, function(_, buff)
  for _, Obj in pairs(NeP.OM:Get("Enemy")) do
    if UnitBuff(Obj.key, GetSpellInfo(235450)) or
	   UnitBuff(Obj.key, GetSpellInfo(12042)) or
	   UnitBuff(Obj.key, GetSpellInfo(11426)) or
	   UnitBuff(Obj.key, GetSpellInfo(12472)) or
	   UnitBuff(Obj.key, GetSpellInfo(190319)) or
	   UnitBuff(Obj.key, GetSpellInfo(198111)) or
	   UnitBuff(Obj.key, GetSpellInfo(29166)) or
	   UnitBuff(Obj.key, GetSpellInfo(1044)) or
	   UnitBuff(Obj.key, GetSpellInfo(184662)) or
	   UnitBuff(Obj.key, GetSpellInfo(47536)) or
	   UnitBuff(Obj.key, GetSpellInfo(17)) or
	   UnitBuff(Obj.key, GetSpellInfo(152118)) or
	   UnitBuff(Obj.key, GetSpellInfo(212295)) or
	   UnitBuff(Obj.key, GetSpellInfo(196098)) or
	   UnitBuff(Obj.key, GetSpellInfo(222477)) or
	   UnitBuff(Obj.key, GetSpellInfo(197892)) or
	   UnitBuff(Obj.key, GetSpellInfo(198745)) then
        return Obj.key
    end
  end
end)

--/dump NeP.DSL.Parse("target.player", "", "")
NeP.DSL:Register("player", function(target)
    return _G.UnitIsPlayer(target)
end)

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

--/dump NeP.DSL.Parse("player.infront.of.target", "", "")
NeP.DSL:Register("infront.of.target", function(target)
    return NeP.Protected.Infront("target", target)
end)

--/dump NeP.DSL.Parse("player.behind.of.target", "", "")
NeP.DSL:Register("behind.of.target", function(target)
  return not NeP.Protected.Infront("target", target)
end)

--/dump NeP.DSL.Parse("target.race", "", "")
NeP.DSL:Register("race", function(target)
    return _G.UnitRace(target)
end)

--/dump NeP.DSL.Parse("count.enemies.combat", "", "")
NeP.DSL:Register("count.enemies.combat", function(num)
  local encombat = 0
  for _, Obj in pairs(NeP.OM:Get("Enemy")) do
      if _G.UnitExists(Obj.key) and _G.UnitIsVisible(Obj.key) and NeP.DSL:Get("combat")(Obj.key) and NeP.DSL:Get("alive")(Obj.key) and NeP.DSL:Get("range")(Obj.key) <= 40 then
          encombat = encombat + 1
      end
  end
  return encombat
end)

--/dump NeP.DSL.Parse("target.faction.positive", "", "")
NeP.DSL:Register("faction.positive", function(target)
  if not _G.UnitExists then return false end
  if _G.UnitFactionGroup("player") == _G.UnitFactionGroup(target) and NeP.DSL:Get("player")(target) then
  return true
  end
  return false
end)

--/dump NeP.DSL.Parse("target.faction.negative", "", "")
NeP.DSL:Register("faction.negative", function(target)
  if not _G.UnitExists then return false end
  if _G.UnitFactionGroup("player") ~= _G.UnitFactionGroup(target) and NeP.DSL:Get("player")(target) then
  return true
  end
  return false
end)

--[[/run _G.TargetUnit("player")]]