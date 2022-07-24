
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
        local pedveh = GetVehiclePedIsIn(ped, false)
        local pedvehclass = GetVehicleClass(pedveh)

        if IsPedInAnyVehicle(ped) then
            if ((pedvehclass ~= 8) and (pedvehclass ~= 13)) then
                if IsPedDoingDriveby(ped) then
                    local context = GetCamActiveViewModeContext()
                    SetCamViewModeForContext(context, 4)
                    changedViewMode = true
                end
            elseif ((pedvehclass == 8) and (pedvehclass == 13)) then
            end
        end

    end

end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)


