local _, Kleei = ...

--/dump NeP.DSL.Parse("player.resource.actual", "", "")
NeP.DSL:Register("mana.actual", function(target)
	return _G.UnitMana(target)
end)

--/dump NeP.DSL.Parse("player.resource.max", "", "")
NeP.DSL:Register("mana.max", function(target)
	return _G.UnitManaMax(target)
end)

--/dump NeP.DSL.Parse("target.caster", "", "")
NeP.DSL:Register("caster", function(target)
    if NeP.DSL:Get("class")("target", "Priest") or NeP.DSL:Get("class")("target", "Shaman") or NeP.DSL:Get("class")("target", "Mage") or NeP.DSL:Get("class")("target", "Warlock") or NeP.DSL:Get("class")("target", "Druid") then
      return true --Need To Add a few more specs not whole Class, Monk Mistweaver, Druid Balance, Druid Restoration, Paladin Holy
    end
      return false
end)