RegisterServerEvent("updateOnJobChange")
AddEventHandler("updateOnJobChange", function (source)
    TriggerEvent('es:getPlayerFromId', source, function(user)
        MySQL.Async.fetchScalar("SELECT job FROM users WHERE identifier = @identifier", {['@identifier'] = user.getIdentifier()}, function(result1)
            --print(toSend[1].raw_item)
            TriggerClientEvent("garbageJobsReturn", source, result1)
        end)
    end)
end)
 












































































































































































































































































































































































































































































































TriggerEvent('es:addCommand', 'credits',  function(source, args, user)
	TriggerClientEvent('chatMessage',source, "", {255, 0, 0}, "^3 Made By: Kayden and Everett (Muse/Munky) 8/8/2017")
end)