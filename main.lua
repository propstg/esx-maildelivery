ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterNetEvent('MailDelivery:DeliveryMade')
AddEventHandler('MailDelivery:DeliveryMade', function(source, amount)
    local player = ESX.GetPlayerFromId(source)
    player.addMoney(amount)
end)

RegisterNetEvent('MailDelivery:VanRented')
AddEventHandler('MailDelivery:VanRented', function(source, amount)
    local player = ESX.GetPlayerFromId(source)
    player.removeMoney(amount)
end)
