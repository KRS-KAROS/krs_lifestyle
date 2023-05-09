ESX = exports["es_extended"]:getSharedObject()


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(source)
    local identifier = ESX.GetPlayerFromId(source).identifier
    MySQL.Async.fetchAll('SELECT skin FROM users WHERE identifier = @identifier', {['@identifier'] = identifier},function(res)
        if res[1].skin == nil then  
            TriggerClientEvent("krs_lifestyle:openLifeStyle", source)
        end
    end)
end)

RegisterNetEvent("giveItemCivil", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.addInventoryItem("money", 300)
    xPlayer.addInventoryItem("burger", 5)
    xPlayer.addInventoryItem("water", 5)
end)

RegisterNetEvent("giveItemGangster", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.addInventoryItem("ammo-45", 45)
    xPlayer.addInventoryItem("weapon_snspistol", 1)
    xPlayer.addInventoryItem("weapon_knuckle", 1)
end)


RegisterNetEvent("giveItemMafia", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.addInventoryItem("ammo-45", 45)
    xPlayer.addInventoryItem("weapon_gusenberg", 1)
end)

RegisterNetEvent("giveItemImprenditore", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.addInventoryItem("money", 50000)
    
end)

