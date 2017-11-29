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
NeP.DSL:Register("rake.stun", function()
    if NeP.DSL:Get("debuff.many")("target", "Rake") == 2 then
    return true
end
    return false
end)

--/dump NeP.DSL.Parse("target.immune_all", "", "")
NeP.DSL:Register("immune_all", function(target)
    if UnitBuff("target", GetSpellInfo(45438)) or UnitBuff("target", GetSpellInfo(642)) or UnitBuff("target", GetSpellInfo(19263)) or UnitBuff("target", GetSpellInfo(186265)) then
    return true
end
    return false
end)

--/dump NeP.DSL.Parse("target.Garrote_Silence", "", "")
NeP.DSL:Register("Garrote_Silence", function()
    if UnitDebuff("target", GetSpellInfo(1330)) then
    return true
end
    return false
end)

--/dump NeP.DSL.Parse("!roll_the_bones", "", "")
NeP.DSL:Register("roll_the_bones", function()
    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(193357)) > 3 then -- Shark Infested Waters
    return true
end

    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(193359)) > 3 then  -- True Bearing
    return true
end

    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(199603)) > 3 then  -- Jolly Roger
    return true
end

    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(193358)) > 3 then  -- Grand Melee
    return true
end

    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(199600)) > 3 then  -- Buried Treasure
    return true
end

    if NeP.DSL:Get("buff.duration")("player", GetSpellInfo(193356)) > 3 then  -- Broadsides
    return true
end
    return false
end)