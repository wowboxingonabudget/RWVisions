local POWER_EventFrame = CreateFrame("Frame")
POWER_EventFrame:RegisterEvent("UNIT_POWER_UPDATE")
POWER_EventFrame:SetScript("OnEvent",
	function(self, event, ...)
		local unitPower = UnitPower("player" , 10)
		--print(unitPower)
		arg1, arg2 = ...
		if arg2 == "ALTERNATE" then
			if unitPower < 400 then 
				PlaySound(8959)
			end
		end
	end)
