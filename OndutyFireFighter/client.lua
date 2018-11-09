-- DO NOT CHANGE ANY OF THIS CODE! IF SOMETHING DOESNT WORK CONTACT @lukepollie ON THE FIVEM FORUMS!!!
-- DO NOT CHANGE ANY OF THIS CODE! IF SOMETHING DOESNT WORK CONTACT @lukepollie ON THE FIVEM FORUMS!!!
-- DO NOT CHANGE ANY OF THIS CODE! IF SOMETHING DOESNT WORK CONTACT @lukepollie ON THE FIVEM FORUMS!!!
-- DO NOT CHANGE ANY OF THIS CODE! IF SOMETHING DOESNT WORK CONTACT @lukepollie ON THE FIVEM FORUMS!!!

RegisterNetEvent('proxOnduty')
AddEventHandler('proxOnduty', function(id, name)
  local ID = PlayerId()
  local plyID = GetPlayerFromServerId(id)
    if plyID == ID then
        local model = GetHashKey("S_M_Y_Fireman_01") -- Change model name here <--
        RequestModel(model)
        while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
        end
        SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HATCHET"), 1000, false) -- Change weapon hash here <--
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false) -- Change weapon hash here <--
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FIREEXTINGUISHER"), 1000, false) -- Change weapon hash here <--
        SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)
        TriggerEvent('chatMessage', "^*FireFighter", { 255, 26, 71 }, name .. " IS NOW ONDUTY!") -- Change chatmessage here <--
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(ID)), GetEntityCoords(GetPlayerPed(plyID)), true) < 49.999 then
        local model = GetHashKey("S_M_Y_Fireman_01") -- Change model name here <--
        RequestModel(model)
        while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
        end
        SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HATCHET"), 1000, false) -- Change weapon hash here <--
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false) -- Change weapon hash here <--
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FIREEXTINGUISHER"), 1000, false) -- Change weapon hash here <--
        SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)
        TriggerEvent('chatMessage', "^*FireFighter", { 255, 26, 71 }, name .. " IS NOW ONDUTY!") -- Change chatmessage here <--
    end
end)

RegisterNetEvent('proxOffduty')
AddEventHandler('proxOffduty', function(id, name)
  local ID = PlayerId()
  local plyID = GetPlayerFromServerId(id)
    if plyID == ID then
        local model = GetHashKey("a_m_m_business_01") -- Change model name here <--
        RequestModel(model)
        while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
        end
        SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)
        RemoveAllPedWeapons(GetPlayerPed(-1))
        TriggerEvent('chatMessage', "^*FireFighter", { 255, 26, 71 }, name .. " IS NOW OFFDUTY!") -- Change chatmessage here <--
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(ID)), GetEntityCoords(GetPlayerPed(plyID)), true) < 49.999 then
        local model = GetHashKey("a_m_m_business_01") -- Change model name here <--
        RequestModel(model)
        while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
        end
        SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)
        RemoveAllPedWeapons(GetPlayerPed(-1))
        TriggerEvent('chatMessage', "^*FireFighter", { 255, 26, 71 }, name .. " IS NOW OFFDUTY!") -- Change chatmessage here <--  
    end
end)

RegisterCommand('spawn', function(source, args, rawCommand)
    
    local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
    local hash = GetHashKey(args[1])  
    local ped = GetPlayerPed(-1)
        
    RequestModel(hash)
        
    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Citizen.Wait(0)
    end

    local ve = CreateVehicle(hash,plyCoords, true, false)
    SetPedIntoVehicle(ped, ve, -1)

end) -- Credits to @woopi for fixing so you spawn in the vehicle