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
    if NeP.DSL:Get("class")("target", "Priest") or NeP.DSL:Get("class")("target", "Shaman") or NeP.DSL:Get("class")("target", "Mage") or NeP.DSL:Get("class")("target", "Warlock") then
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

local immuneallbuff = {
    "33786",     -- Cyclone
    "209753",
    "88010",
    "45438",    -- Ice Block
    "145533",
    "41590",
    "36911",
    "27619",
    "63148",    -- Divine Shield (Paladin)
    "133093",
    "186265",   -- Aspect of the Turtle
	"19263",    -- Deterrence
    "122464",   -- Dematerialize
    "122465",
    "122470",
    "124280",   -- touch of karma
    "125174",
    "642",      -- Divine Shield
}

--/dump NeP.DSL.Parse("player.immune_all", "", "")
--/dump NeP.DSL.Parse("target.immune_all", "", "")
NeP.DSL:Register('immune_all',function(target, spell)
    for i = 1, #immuneallbuff do
        if UnitBuff(target, GetSpellInfo(immuneallbuff[i])) then
            return true
        end
        return false
    end
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

    if UnitDebuff("player", GetSpellInfo(202665)) then roll = roll + 2
end

    if roll > 1 then
    return true
end
    return false
end)

local bufftosteal = {
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
}

--/dump NeP.DSL.Parse("steal_buff", "", "")
NeP.DSL:Register('steal_buff',function(target, spell)
    for i = 1, #bufftosteal do
        if UnitBuff(target, GetSpellInfo(bufftosteal[i])) then
            return true
        end
        return false
    end
end)

--/dump NeP.DSL.Parse("enemy_totem", "", "")
NeP.DSL:Register("enemy_totem", function(target)
    if NeP.DSL.Parse("is(2630)", "", "") or NeP.DSL.Parse("is(113845)", "", "") or NeP.DSL.Parse("is(102392)", "", "") or NeP.DSL.Parse("is(106317)", "", "") or NeP.DSL.Parse("is(106319)", "", "") or NeP.DSL.Parse("is(106321)", "", "") or NeP.DSL.Parse("is(3527)", "", "") or NeP.DSL.Parse("is(59764)", "", "") or NeP.DSL.Parse("is(53006)", "", "") then
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
  return UnitRace(target)
end)
