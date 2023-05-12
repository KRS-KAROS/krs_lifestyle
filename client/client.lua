ESX = exports["es_extended"]:getSharedObject()

-- Function Close 
RegisterNUICallback('close', function(data, cb)
   SetNuiFocus(false,false)
    cb('ok')
end)

-- Function Open 
function openLife()
    SendNUIMessage({
      type = "openLife",
     
    })
    SetNuiFocus(true, true)
end

RegisterNetEvent('krs_lifestyle:openLifeStyle',function()
    openLife()
    cb('ok')
end)


RegisterCommand('life',function()
    openLife()
end)

RegisterNUICallback('civil', function(data, cb)
   TriggerServerEvent('giveItemCivil')
   SetNuiFocus(false, false)
     cb('ok')
end)

RegisterNUICallback('gangster', function(data, cb)
 TriggerServerEvent('giveItemGangster')
 SetNuiFocus(false, false)
   cb('ok')
end)

RegisterNUICallback('mafia', function(data, cb)
   TriggerServerEvent('giveItemMafia')
   SetNuiFocus(false, false)
     cb('ok')
end)

RegisterNUICallback('entrepreneur', function(data, cb)
   TriggerServerEvent('giveItemEntrepreneur')
   SetNuiFocus(false, false)
     cb('ok')
end)



