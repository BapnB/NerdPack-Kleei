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

--/dump NeP.DSL.Parse("player.immune_all", "", "")
--/dump NeP.DSL.Parse("target.immune_all", "", "")
NeP.DSL:Register("immune_all", function(target, spell)
    if UnitBuff(target, GetSpellInfo(45438)) or UnitBuff(target, GetSpellInfo(642)) or UnitBuff(target, GetSpellInfo(19263)) or UnitBuff(target, GetSpellInfo(186265)) then
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
NeP.DSL:Register("roll_the_bones", function(target, spell)
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

--/dump NeP.DSL.Parse("steal_buff", "", "")
NeP.DSL:Register("steal_buff", function(target, spell)
---------------------------Prismatic Barrier-------------------------------Innervate------------------------------Ice Barrier---------------------Blessing of Freedom------------------------Shield of Vengeance---------------------------------Rapture---------------------Power Word: Shield---------------------------Clarity of Will-------------------------------Combustion--------------------------------Icy Veins---------------------------Temporal Shield-----------------------------Arcane Power------------------------------Nether Ward-------------------------------Soul Harvest--
    if UnitBuff(target, GetSpellInfo(235450)) or UnitBuff(target, GetSpellInfo(29166)) or UnitBuff(target, GetSpellInfo(11426)) or UnitBuff(target, GetSpellInfo(1044)) or UnitBuff(target, GetSpellInfo(184662)) or UnitBuff(target, GetSpellInfo(47536)) or UnitBuff(target, GetSpellInfo(17)) or UnitBuff(target, GetSpellInfo(152118)) or UnitBuff(target, GetSpellInfo(190319)) or UnitBuff(target, GetSpellInfo(12472)) or UnitBuff(target, GetSpellInfo(198111)) or UnitBuff(target, GetSpellInfo(12042)) or UnitBuff(target, GetSpellInfo(212295)) or UnitBuff(target, GetSpellInfo(196098)) then
    return true
end
    return false
end)

--/dump NeP.DSL.Parse("enemy_totem", "", "")
NeP.DSL:Register("enemy_totem", function(target)
    if NeP.DSL.Parse("is(2630)", "", "") or NeP.DSL.Parse("is(113845)", "", "") or NeP.DSL.Parse("is(102392)", "", "") or NeP.DSL.Parse("is(106317)", "", "") or NeP.DSL.Parse("is(106319)", "", "") or NeP.DSL.Parse("is(106321)", "", "") or NeP.DSL.Parse("is(3527)", "", "") or NeP.DSL.Parse("is(59764)", "", "") or NeP.DSL.Parse("is(53006)", "", "") then
    return true
end
    return false
end)

--- Highest Health Enemy
NeP.FakeUnits:Add({'highestenemy', 'higheste', 'he'}, function(num)
	local tempTable = {}
	for _, Obj in pairs(NeP.OM:Get('Enemy')) do
		if _G.UnitExists(Obj.key) and _G.UnitIsVisible(Obj.key) and NeP.DSL:Get('combat')(Obj.key) and NeP.DSL:Get('alive')(Obj.key) then
			tempTable[#tempTable+1] = {
				key = Obj.key,
				health = NeP.DSL:Get("health")(Obj.key)
			}
		end
	end
	table.sort( tempTable, function(a,b) return a.health > b.health end )
	return tempTable[num] and tempTable[num].key
end)
