local _G = _G

--Dead group member that can be resurrected (not ghost) 
NeP.FakeUnits:Add({"deadgroupmember", "deadfriend"}, function()
   for _, Obj in pairs(NeP.OM:Get("Dead")) do
    if _G.UnitExists(Obj.key) and not _G.UnitIsGhost(Obj.key) and
        (_G.UnitInParty(Obj.key) or _G.UnitInRaid(Obj.key)) and
        _G.UnitIsPlayer(Obj.key) and not NeP.DSL:Get("alive")(Obj.key) and not 
	    _G.UnitHasIncomingResurrection(Obj.key) and not _G.UnitDebuff(Obj.key, GetSpellInfo(160029)) and not
        _G.UnitDebuff(Obj.key, GetSpellInfo(72221)) then
      return Obj.key
    end
   end
end)

--- Highest Health Enemy
NeP.FakeUnits:Add("highestenemy", function(num)
	local tempTable = {}
	for _, Obj in pairs(NeP.OM:Get("Enemy")) do
		if _G.UnitExists(Obj.key) and _G.UnitIsVisible(Obj.key) and 
		   NeP.DSL:Get("combat")(Obj.key) and 
		   NeP.DSL:Get("alive")(Obj.key) and 
		   NeP.DSL:Get("infront")(Obj.key) and not 
		   NeP.DSL:Get("player")(Obj.key) and not 
		   NeP.DSL:Get("pvp")(Obj.key) and NeP.DSL:Get("range")(Obj.key) <= 40 then
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

--/dump NeP.DSL.Parse("target.BuffToSteal", "", "")
NeP.DSL:Register("BuffToSteal",function(target)
 local BuffToSteal = { 235450, 12042, 11426, 12472, 190319, 198111, 29166, 1044, 184662, 47536, 17, 152118, 212295, 196098, 222477, 197892, 198745 }
  for i = 1, #BuffToSteal do
    local BuffToStealName = _G.GetSpellInfo(BuffToSteal[i])
	 if _G.UnitBuff(target, BuffToStealName) then
    	return true end
  end
end)

--Enemies with buffs that needs to be stolen
NeP.FakeUnits:Add("enemystbuff", function(_, buff)
  for _, Obj in pairs(NeP.OM:Get("Enemy")) do
    if _G.UnitExists(Obj.key) and _G.UnitIsVisible(Obj.key) and 
	    NeP.DSL:Get("BuffToSteal")(Obj.key) then
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
    if NeP.DSL:Get("class")(target, "Priest") or NeP.DSL:Get("class")(target, "Mage") or NeP.DSL:Get("class")(target, "Warlock") then
      return true
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
      if _G.UnitExists(Obj.key) and _G.UnitIsVisible(Obj.key) and 
	      NeP.DSL:Get("combat")(Obj.key) and NeP.DSL:Get("alive")(Obj.key) and 
		    NeP.DSL:Get("range")(Obj.key) <= 40 then
          encombat = encombat + 1
      end
  end
  return encombat
end)

--/dump NeP.DSL.Parse("target.area().enemies.nocombat", "", "")
NeP.DSL:Register("area.enemies.nocombat", function(unit, distance)
  for _, Obj in pairs(NeP.OM:Get('Enemy', true)) do
    if not NeP.DSL:Get('combat')(Obj.key) and NeP.DSL:Get("rangefrom")(unit, Obj.key) < tonumber(distance) then
        return true
    end
  end
end)

--/dump NeP.DSL.Parse("target.faction.positive", "", "")
NeP.DSL:Register("faction.positive", function(target)
    if _G.UnitFactionGroup("player") == _G.UnitFactionGroup(target) and NeP.DSL:Get("player")(target) and NeP.DSL:Get("enemy")(target) and NeP.DSL:Get("alive")(target) then
      return true 
    end
end)

--/dump NeP.DSL.Parse("target.faction.negative", "", "")
NeP.DSL:Register("faction.negative", function(target)
    if _G.UnitFactionGroup("player") ~= _G.UnitFactionGroup(target) and NeP.DSL:Get("player")(target) and NeP.DSL:Get("enemy")(target) and NeP.DSL:Get("alive")(target) then
      return true 
    end
end)

--/dump NeP.DSL.Parse("target.flying", "", "")
NeP.DSL:Register("flying", function()
  return _G.IsFlying()
end)

local last_fall = 0;
local falling_for = 0;
function buildFallTime()
    -- if we´re not falling then reset the counter and return 0
  if not _G.IsFalling() then
    last_fall = 0
        falling_for = 0
        return;
  end
  -- if we have a time set then return the difference
  local time = _G.GetTime()
  if last_fall > 0 then
    falling_for = time - last_fall
        return;
  end
  -- otherwise set time and return 0
  last_fall = time
    falling_for = 0
end

_G.C_Timer.NewTicker(0.1, buildFallTime)

NeP.DSL:Register({"falling.duration", "fall.duration"}, function()
  return falling_for
end)