local status = nil
Citizen.CreateThread(function()
    while true do

        Citizen.Wait(100)
     local ped = GetPlayerPed(-1)
     local health = GetEntityHealth(ped)
     local armor = GetPedArmour(ped)
        SendNUIMessage({
            show = IsPauseMenuActive(),
            health = health,
            armor = armor,
            st = status,
        });
    end
end)

RegisterNetEvent('ESX_HealthBAR-UI:updateStatus')
AddEventHandler('ESX_HealthBAR-UI:updateStatus', function(Status)
    status = Status
    SendNUIMessage({
        action = "updateStatus",
        st = Status,
    })
end)