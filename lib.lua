---
--- RESOURCE SPECIFIC
---

--- Convenience function returning if ped current vehicle is an EV
-- ped arg is optional
function IsPedInAnyEVVehicle(ped)
    ped = ped or GetPlayerPed(-1)
    return IsPedInAnyVehicle(ped) and IsEV(GetPedVehicleName(ped))
end

--- Convenience function returining if ped's last vehicle was an EV
function IsPlayersLastVehicleEV()
    return IsEV(GetVehicleDisplayName(GetPlayersLastVehicle()))
end

--- Convenience function returning if vehicle model name is an EV
function IsEV(name)
    for _, evName in ipairs(Config.VehicleNames) do
        if name == evName then
            return true
        end
    end
    return false
end

---
--- API HELPERS
---

--- Returns whether given ped is driving current vehicle
-- ped is optional
function IsPedDriving(ped)
    ped = ped or GetPlayerPed(-1)
    return ped == GetPedInVehicleSeat(GetVehiclePedIsIn(ped, false), -1)
end

--- Get name of vehicle ped is using
-- ped arg is optional
function GetPedVehicleName(ped)
    ped = ped or GetPlayerPed(-1)
    return GetVehicleDisplayName(
            GetVehiclePedIsUsing(ped))
end

--- Return display name for given vehicle
function GetVehicleDisplayName(veh)
    return GetDisplayNameFromVehicleModel(
            GetEntityModel(veh))
end

--- Native convenience function to get epoch
-- Time in seconds
function GetEpoch()
    return Citizen.InvokeNative(0x9a73240b49945c76)
end

--- Loads anim dictionary, waiting until loaded
function LoadAnimDict(dict)
	while(not HasAnimDictLoaded(dict)) do
		Citizen.Wait(1)
		RequestAnimDict(dict)
	end
end


