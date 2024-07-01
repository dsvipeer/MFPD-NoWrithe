local handledPeds = {}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)

        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local pedList = GetGamePool('CPed')

        for _, ped in ipairs(pedList) do
            if not handledPeds[ped] then
                local pedCoords = GetEntityCoords(ped)
                local distance = #(playerCoords - pedCoords)

                if distance <= 100.0 and ped ~= playerPed and IsPedHuman(ped) and not IsPedAPlayer(ped) then
                    SetPedConfigFlag(ped, 281, true)
                    SetPedConfigFlag(ped, 33, false)
                    handledPeds[ped] = true
                end
            end
        end
    end
end)
