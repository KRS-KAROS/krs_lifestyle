ESX = exports["es_extended"]:getSharedObject()

-- Funzione Chiudi 
RegisterNUICallback('chiudi', function(data, cb)
   SetNuiFocus(false,false)
    cb('ok')
end)

-- Funzione Apri 
function apriScelta()
    SendNUIMessage({
      type = "apriScelta",
     
    })
    SetNuiFocus(true, true)
end

RegisterNetEvent('krs_lifestyle:openLifeStyle',function()
          apriScelta()
end)


RegisterCommand('vita',function()
    apriScelta()
end)

RegisterNUICallback('civil', function(data, cb)
    print(json.encode(data))
   TriggerServerEvent('giveItemCivil')
   SetNuiFocus(false, false)
     cb('ok')
end)

RegisterNUICallback('gangster', function(data, cb)
  print(json.encode(data))
 TriggerServerEvent('giveItemGangster')
 SetNuiFocus(false, false)
   cb('ok')
end)

RegisterNUICallback('mafia', function(data, cb)
    print(json.encode(data))
   TriggerServerEvent('giveItemMafia')
   SetNuiFocus(false, false)
     cb('ok')
end)

RegisterNUICallback('imprenditore', function(data, cb)
    print(json.encode(data))
   TriggerServerEvent('giveItemImprenditore')
   SetNuiFocus(false, false)
     cb('ok')
end)



