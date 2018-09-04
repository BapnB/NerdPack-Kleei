local _G = _G
local NeP = NeP

local UnitExists                   = UnitExists
local UnitIsDead                   = UnitIsDead
local UnitIsGhost                  = UnitIsGhost
local UnitInRaid                   = UnitInRaid
local UnitInParty                  = UnitInParty
local UnitIsPlayer                 = UnitIsPlayer
local UnitHasIncomingResurrection  = UnitHasIncomingResurrection
local UnitAffectingCombat          = UnitAffectingCombat
local UnitIsPVP                    = UnitIsPVP
local UnitHealth                   = UnitHealth
local GetSpellInfo                 = GetSpellInfo
local UnitBuff                     = UnitBuff
local UnitMana                     = UnitMana
local UnitManaMax                  = UnitManaMax
local UnitClass                    = UnitClass
local UnitRace                     = UnitRace
local UnitFactionGroup             = UnitFactionGroup
local UnitCanAttack                = UnitCanAttack
local UnitIsDeadOrGhost            = UnitIsDeadOrGhost
local IsFlying                     = IsFlying
local IsFalling                    = IsFalling
local GetTime                      = GetTime
local C_Timer                      = C_Timer

--  /dump NeP.DSL.Parse("player.all.enemies(100).area", "", "")
-- USAGE: UNIT.all.enemies(DISTANCE).area >= # all enemies (out of combat included)
NeP.DSL:Register("all.enemies.area", function(unit, distance)
 if not _G.UnitExists(unit) then return 0 end
  local total = 0
  for _, Obj in pairs(NeP.OM:Get("Enemy")) do
	if NeP.Protected.Distance(unit, Obj.key) < (tonumber(distance) or 0)
     and _G.UnitCanAttack(Obj.key, "player") then
       total = total +1
    end
  end
  return total
end)

--Dead group member that can be resurrected (not ghost) 
NeP.FakeUnits:Add({"deadgroupmember", "deadfriend"}, function()
    for _, Obj in pairs(NeP.OM:Get("Dead")) do
	  if NeP.Protected.Distance("player", Obj.key) < 50
	   and _G.UnitIsDead(Obj.key)
	   and not _G.UnitIsGhost(Obj.key)
	   and (_G.UnitInRaid(Obj.key) or _G.UnitInParty(Obj.key))
	   and _G.UnitIsPlayer(Obj.key)
	   and not _G.UnitHasIncomingResurrection(Obj.key) then
	    return Obj.key
	  end
	end
end)

---Enemy UNIT with most enemies around
NeP.FakeUnits:Add("mostenemies", function(num)
   local tempTable = {}
    for _, Obj in pairs(NeP.OM:Get("Enemy")) do
	  if NeP.Protected.Distance("player", Obj.key) < 50
	   and _G.UnitCanAttack(Obj.key, "player")
	   and _G.UnitAffectingCombat(Obj.key)
	   and not _G.UnitIsPlayer(Obj.key)
	   and not _G.UnitIsPVP(Obj.key) then
		tempTable[#tempTable+1] = {
			key = Obj.key,
			prio = NeP.DSL:Get("area.enemies")(Obj.key, "8")
		}
	  end
	end
	table.sort( tempTable, function(a,b) return a.prio > b.prio end )
	return tempTable[num] and tempTable[num].key
end)

--- Highest Health Enemy
NeP.FakeUnits:Add("highestenemy", function(num)
   local tempTable = {}
    for _, Obj in pairs(NeP.OM:Get("Enemy")) do
	  if _G.UnitInPhase(Obj.key)
	   and NeP.Protected.Distance("player", Obj.key) < 50
	   and _G.UnitCanAttack(Obj.key, "player")
	   and _G.UnitAffectingCombat(Obj.key)
	   and not _G.UnitIsPlayer(Obj.key)
	   and not _G.UnitIsPVP(Obj.key)
	   and not NeP.DSL:Get("boss")(Obj.key)
       and NeP.Protected.Infront("player", Obj.key) then
		tempTable[#tempTable+1] = {
			key = Obj.key,
			health = _G.UnitHealth(Obj.key)
		}
	  end
	end
	table.sort( tempTable, function(a,b) return a.health > b.health end )
	return tempTable[num] and tempTable[num].key
end)

--/dump NeP.DSL.Parse("count.enemies.combat", "", "")
NeP.DSL:Register("count.enemies.combat", function()
local encombat = 0
  for _, Obj in pairs(NeP.OM:Get("Enemy", true)) do
      if NeP.Protected.Distance("player", Obj.key) < 40
	   and _G.UnitCanAttack(Obj.key, "player")
	   and NeP.Protected.Infront("player", Obj.key)
	   and _G.UnitAffectingCombat(Obj.key) then
          encombat = encombat + 1
      end
  end
  return encombat
end)

--/dump NeP.DSL.Parse("target.area().enemies.nocombat", "", "")
NeP.DSL:Register("area.enemies.nocombat", function(unit, distance)
  for _, Obj in pairs(NeP.OM:Get("Enemy", true)) do
    if NeP.Protected.Distance(unit, Obj.key) < (tonumber(distance) or 40)
	 and _G.UnitCanAttack(Obj.key, "player")
     and not _G.UnitAffectingCombat(Obj.key) then
      return true
    end
  end
end)

function BuffToSteal(unit)
 local BTS = { 
    235450,  -- Prismatic Barrier    -- Mage Arcane
	12042,   -- Arcane Power         -- Mage Arcane
	11426,   -- Ice Barrier          -- Mage Frost
	12472,   -- Ice Veins            -- Mage Frost
	190319,  -- Combustion           -- Mage Fire
	198111,  -- Temporal Shield      -- Mage Fire PVP Talent
	29166,   -- Innervate            -- Druid
	1044,    -- Blessing of Freedom  -- Paladin
	184662,  -- Shield of Vengeance  -- Paladin
	47536,   -- Rapture              -- Priest
	17,      -- Power Word: Shield   -- Priest
	152118,  -- Clarity of Will      -- Priest
	212295,  -- Nether Ward          -- Warlock
	196098,  -- Soul Harvest         -- Warlock
	222477,     -- Vengeful Wail (+50% DMG)
	197892,     -- Runic Empowerment (Damage done increased by 30%.Damage taken reduced by 30%.)
	198745,     -- Protective Light (Absorbs 1.500.000 damage)
	182327,     -- Mrgggrrrll! (Haste increased by %50)
}
  for i = 1, #BTS do
   local BuffToStealName = _G.GetSpellInfo(BTS[i])
	if _G.UnitBuff(unit, BuffToStealName) then
    	return true
	end
  end
end

--Enemies with buffs that needs to be stolen
NeP.FakeUnits:Add("enemystbuff", function(_, buff)
  for _, Obj in pairs(NeP.OM:Get("Enemy", true)) do
	 if NeP.Protected.Distance("player", Obj.key) < 40
	 and _G.UnitCanAttack(Obj.key, "player")
     and BuffToSteal(Obj.key)
     and not NeP.DSL:Get("immune_all")(Obj.key)
     and not NeP.DSL:Get("immune_spell")(Obj.key) then
	  return Obj.key
	end
  end
end)

--/dump NeP.DSL.Parse("target.player", "", "")
NeP.DSL:Register("player", function(target)
    return _G.UnitIsPlayer(target)
end)

--/dump NeP.DSL.Parse("target.caster", "", "")
NeP.DSL:Register("caster", function(target)
    local class = select(2, _G.UnitClass(target))
    if class == "Priest" or class == "Mage" or class == "Warlock" then
      return true
    end
end)

--/dump NeP.DSL.Parse("target.disarmclass", "", "")
NeP.DSL:Register("disarmclass", function(target)
    local class = select(2, _G.UnitClass(target))
    if class == "WARRIOR" or class == "PALADIN" or class == "HUNTER" or 
	class == "ROGUE" or class == "DEATHKNIGHT" or class == "MONK" or 
	class == "DEMONHUNTER" then
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

--/dump NeP.DSL.Parse("target.canAttack", "", "")
NeP.DSL:Register("canAttack", function(target)
  return _G.UnitCanAttack(target, "player")
end)

--/dump NeP.DSL.Parse("target.faction.positive", "", "")
NeP.DSL:Register("faction.positive", function(target)
    if _G.UnitFactionGroup("player") == _G.UnitFactionGroup(target)
	and _G.UnitIsPlayer(target)
	and not _G.UnitIsDeadOrGhost(target) then
      return true 
    end
end)

--/dump NeP.DSL.Parse("target.faction.negative", "", "")
NeP.DSL:Register("faction.negative", function(target)
    if _G.UnitFactionGroup("player") ~= _G.UnitFactionGroup(target)
	and _G.UnitIsPlayer(target)
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

--[[function Totems(unit)
 local TotemsID = { 59764, 53006, 3527 }
  for i = 1, #TotemsID do
   local TotemsName = TotemsID[i]
	if NeP.DSL:Get("id")(unit, TotemsName) then
    	return true
	end
  end
end

NeP.FakeUnits:Add("totems", function()
  for _, Obj in pairs(NeP.OM:Get("Enemy", true)) do
	 if Totems(Obj.key) then
	  return Obj.key
	end
  end
end)]]