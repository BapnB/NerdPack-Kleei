local _G = _G
local NeP = NeP

--  /dump NeP.DSL.Parse("player.all.enemies(100).area", "", "")
-- USAGE: UNIT.all.enemies(DISTANCE).area >= # all enemies (out of combat included)
NeP.DSL:Register("all.enemies.area", function(unit, distance)
 if not _G.UnitExists(unit) then return 0 end
  local total = 0
  for i=1, _G.GetObjectCount() do
	local Obj = _G.GetObjectWithIndex(i)
	if Kleei.ObjectValid(Obj)
	 and _G.UnitCanAttack("player", Obj)
	 and NeP.Protected.Distance(unit, Obj) < (tonumber(distance) or 60) then
       total = total +1
    end
  end
  return total
end)

-- USAGE: UNIT.is.tank (even if he is dead)
--[[NeP.DSL:Register("is.tank", function(Obj, num)
 local tmp = {}
    for i=1, _G.GetObjectCount() do
	 local Obj = _G.GetObjectWithIndex(i)
	  if Kleei.ObjectValid(Obj)
	   and _G.UnitIsFriend("player", Obj)
	   and (_G.UnitInRaid(Obj) or _G.UnitInParty(Obj))
	   and _G.UnitGroupRolesAssigned(Obj) == "TANK" then
			tmp[#tmp+1] = {
				key = Obj,
				prio = _G.UnitHealthMax(Obj)
			}
		end
	end
	table.sort( tmp, function(a,b) return a.prio > b.prio end )
	return tmp[num] and tmp[num].key
end)]]

--Dead group member that can be resurrected (not ghost) 
NeP.FakeUnits:Add({"deadgroupmember", "deadfriend"}, function()
  local tmp = {}
	for i=1, _G.GetObjectCount() do
		local Obj = _G.GetObjectWithIndex(i)
	  if Kleei.ObjectValid(Obj)
	   and _G.UnitIsDead(Obj)
	   and not _G.UnitIsGhost(Obj)
	   and (_G.UnitInRaid(Obj) or _G.UnitInParty(Obj))
	   and _G.UnitIsPlayer(Obj)
	   and not _G.UnitHasIncomingResurrection(Obj) then
	    tmp[#tmp+1] = Obj
	  end
	end
	return Obj
end)

--- Highest Health Enemy
NeP.FakeUnits:Add("highestenemy", function(num)
	local tempTable = {}
	for i=1, _G.GetObjectCount() do
	  local Obj = _G.GetObjectWithIndex(i)
		if Kleei.ObjectValid(Obj) 
		 and _G.UnitExists(Obj)
		 and _G.UnitAffectingCombat(Obj) 
		 and not _G.UnitIsDeadOrGhost(Obj)
		 and not _G.UnitIsPlayer(Obj)
		 and not _G.UnitIsPVP(Obj, "player")
	     and _G.UnitCanAttack("player", Obj)
         and NeP.Protected.Infront("player", Obj) then
			tempTable[#tempTable+1] = {
				key = Obj,
				health = UnitHealth(Obj)
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
	"182327"     -- Mrgggrrrll! (Haste increased by %50)
]]

function BuffToSteal(Obj)
 local BuffToSteal = { 235450, 12042, 11426, 12472, 190319, 198111, 29166, 1044, 184662, 47536, 17, 152118, 212295, 196098, 222477, 197892, 198745, 182327 }
  for i = 1, #BuffToSteal do
   local BuffToStealName = _G.GetSpellInfo(BuffToSteal[i])
	if _G.UnitBuff(Obj, BuffToStealName) then
    	return true
	end
  end
end

--Enemies with buffs that needs to be stolen
NeP.FakeUnits:Add("enemystbuff", function(_, buff)
local tmp = {}
 for i=1, _G.GetObjectCount() do
  local Obj = _G.GetObjectWithIndex(i)
	if Kleei.ObjectValid(Obj) 
	  and _G.UnitExists(Obj)
      and _G.UnitCanAttack("player", Obj)
	  and not _G.UnitIsDeadOrGhost(Obj)
      and BuffToSteal(Obj)
      and not NeP.DSL:Get("immune_all")(Obj)
      and not NeP.DSL:Get("immune_spell")(Obj) then
	    tmp[#tmp+1] = Obj
	end
 end
	return Obj
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
    local class = select(2, _G.UnitClass(target))
    if class == "Priest" or class == "Mage" or class == "Warlock" then
      return true
    end
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
NeP.DSL:Register("count.enemies.combat", function()
  local encombat = 0
  for i=1, _G.GetObjectCount() do
	local Obj = _G.GetObjectWithIndex(i)
      if Kleei.ObjectValid(Obj)
	   and _G.UnitCanAttack("player", Obj)
	   and NeP.Protected.Distance("player", Obj) < 40
	   and _G.UnitAffectingCombat(Obj)
       and not _G.UnitIsDeadOrGhost(Obj) then
          encombat = encombat + 1
      end
  end
  return encombat
end)

--/dump NeP.DSL.Parse("target.area().enemies.nocombat", "", "")
NeP.DSL:Register("area.enemies.nocombat", function(unit, distance)
  for i=1, _G.GetObjectCount() do
	local Obj = _G.GetObjectWithIndex(i)
      if _G.UnitCanAttack("player", Obj)
	   and NeP.Protected.Distance(unit, Obj) < (tonumber(distance) or 40)
       and not _G.UnitAffectingCombat(Obj) then
        return true
    end
  end
end)

--/dump NeP.DSL.Parse("target.faction.positive", "", "")
NeP.DSL:Register("faction.positive", function(target)
    if _G.UnitFactionGroup("player") == _G.UnitFactionGroup(target)
	and _G.UnitIsPlayer(target)
	and _G.UnitCanAttack("player", target)
	and not _G.UnitIsDeadOrGhost(target) then
      return true 
    end
end)

--/dump NeP.DSL.Parse("target.faction.negative", "", "")
NeP.DSL:Register("faction.negative", function(target)
    if _G.UnitFactionGroup("player") ~= _G.UnitFactionGroup(target)
	and _G.UnitIsPlayer(target)
	and _G.UnitCanAttack("player", target)
	and not _G.UnitIsDeadOrGhost(target) then
      return true 
    end
end)

--/dump NeP.DSL.Parse("flying", "", "")
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

C_Timer.NewTicker(0.1, buildFallTime)

--/dump NeP.DSL.Parse("falling.duration", "", "") -- dump when you fall
NeP.DSL:Register({"falling.duration", "fall.duration"}, function()
  return falling_for
end)

--/dump NeP.DSL.Parse("IsStealthed", "", "")
NeP.DSL:Register("IsStealthed", function()
  return _G.IsStealthed()
end)
