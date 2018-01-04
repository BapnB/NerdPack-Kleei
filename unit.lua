local _G = _G

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
