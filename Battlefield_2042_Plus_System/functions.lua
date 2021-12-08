Citizen.CreateThread(function ()
    while true do
        Wait(0)
        if IsControlJustReleased(0, 312) then
            local weapon = GetSelectedPedWeapon(PlayerPedId())
            SendNUIMessage({ jsweapon = weapon })
            SetNuiFocus(true, true)
        end
    end
end)

RegisterNUICallback('close', function()
    SetNuiFocus(false, false)
end)


RegisterNUICallback('datasend', function(data, cd)
    if HasPedGotWeapon(PlayerPedId(), GetHashKey(data.weaponc), false) then
        GiveWeaponComponentToPed(PlayerPedId(), GetHashKey(data.weaponc), GetHashKey(data.compc))
    end
end)

function weaponComponent(weapon, component)
    if HasPedGotWeapon(PlayerPedId(), GetHashKey(weapon), false) then
        GiveWeaponComponentToPed(PlayerPedId(), GetHashKey(weapon), GetHashKey(component))
    end
end
