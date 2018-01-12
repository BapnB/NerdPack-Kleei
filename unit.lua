local _G = _G

--- Highest Health Enemy
NeP.FakeUnits:Add("highestenemy", function(num)
	local tempTable = {}
	for _, Obj in pairs(NeP.OM:Get("Enemy")) do
		if _G.UnitExists(Obj.key) and _G.UnitIsVisible(Obj.key) and NeP.DSL:Get("combat")(Obj.key) and NeP.DSL:Get("alive")(Obj.key) and not NeP.DSL:Get("player")(Obj.key) then
			tempTable[#tempTable+1] = {
				key = Obj.key,
				health = NeP.DSL:Get("health")(Obj.key)
			}
		end
	end
	table.sort( tempTable, function(a,b) return a.health > b.health end )
	return tempTable[num] and tempTable[num].key
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
      if _G.UnitExists(Obj.key) and _G.UnitIsVisible(Obj.key) and NeP.DSL:Get("combat")(Obj.key) and NeP.DSL:Get("alive")(Obj.key) and NeP.DSL:Get("range")(Obj.key, "<=40") then
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

--/dump NeP.DSL.Parse("target.faction.negative", "", "") -----------   if select(1, _G.UnitFactionGroup("player")) ~= select(1, _G.UnitFactionGroup(target)) and NeP.DSL:Get("player")(target) then
NeP.DSL:Register("faction.negative", function(target)
  if not _G.UnitExists then return false end
  if _G.UnitFactionGroup("player") ~= _G.UnitFactionGroup(target) and NeP.DSL:Get("player")(target) then
  return true
  end
  return false
end)

--[[/run _G.TargetUnit("player")]]