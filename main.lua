ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterServerEvent('MailDelivery:DeliveryMade')
AddEventHandler('MailDelivery:DeliveryMade', function(amount)
    local _source = source

    local player = ESX.GetPlayerFromId(_source)
    player.addMoney(tonumber(amount))
end)

RegisterServerEvent('MailDelivery:VanRented')
AddEventHandler('MailDelivery:VanRented', function(amount)
    local _source = source

    local player = ESX.GetPlayerFromId(_source)
    player.removeMoney(tonumber(amount))
end)
