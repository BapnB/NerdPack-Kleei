local _G = _G
local NeP = _G.NeP

--Auto Target PVE enemies (advanced unlocker)
function TargetingPVE()
  if not _G.UnitExists("target") or _G.UnitIsDeadOrGhost("target") or _G.UnitIsFriend("player", "target") then
		local setPrioPVE = {}
		for _, Obj in pairs(NeP.OM:Get("Enemy")) do
			if _G.UnitExists(Obj.key) and NeP.DSL:Get("range")(Obj.key) <= 45 then
				if (_G.UnitAffectingCombat(Obj.key) or NeP.DSL:Get("isdummy")(Obj.key))
				and NeP.DSL:Get("infront")(Obj.key) and not _G.UnitIsPlayer(Obj.key) then
					setPrioPVE[#setPrioPVE+1] = {
						key = Obj.key,
						nearestPVE = NeP.DSL:Get("range")(Obj.key),
						name = Obj.name,
					}
				end
			end
		end
		table.sort(setPrioPVE, function(a,b) return a.nearestPVE < b.nearestPVE end)
		if setPrioPVE[1] then
			_G.TargetUnit(setPrioPVE[1].key)
		end
	end
end

--[[C_Timer.NewTicker(0.02, (function()
	if (UnitAffectingCombat("player") or NeP.DSL:Get("indungeon")(nil))
	and NeP.DSL:Get("toggle")(nil, "mastertoggle")
	and NeP.DSL:Get("toggle")(nil, "auto_target_key") then
			TargetingPVE()
	end
end), nil)]]

--Auto Target Player enemies (advanced unlocker)
function TargetingPVP()
  if _G.UnitExists("target") and not _G.UnitIsPlayer("target") or 
      _G.UnitExists("target") and (_G.UnitIsDeadOrGhost("target") or NeP.DSL:Get("health.actual")("target")) <= 1 or _G.UnitIsFriend("player", "target") then
		local setPrioPVP = {}
		for _, Obj in pairs(NeP.OM:Get("Enemy")) do
			if _G.UnitExists(Obj.key) and NeP.DSL:Get("range")(Obj.key) <= 45 then
				if NeP.DSL:Get("infront")(Obj.key) and _G.UnitIsPlayer(Obj.key) then
					setPrioPVP[#setPrioPVP+1] = {
						key = Obj.key,
						nearestPVP = NeP.DSL:Get("range")(Obj.key),
						name = Obj.name,
					}
				end
			end
		end
		table.sort(setPrioPVP, function(a,b) return a.nearestPVP < b.nearestPVP end)
		if setPrioPVP[1] then
			NeP.Protected.TargetUnit(setPrioPVP[1].key)
		end
	end
end

C_Timer.NewTicker(0.02, (function()
	if NeP.DSL:Get("toggle")(nil, "mastertoggle")
	and NeP.DSL:Get("toggle")(nil, "autopvp_key") then
			TargetingPVP()
	end
end), nil)