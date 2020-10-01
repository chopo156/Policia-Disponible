ESX = nil

TriggerEvent('esx:getSharedObjet'), fuction(obj)
    ESX = obj
end)

RegisterCommand(comando, function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then	
        if xPlayer.job.name == "police" then
            if not FlexPT then
                FlexPT = true
                TriggerEvent('maxipolidispo:PTSync')
            elseif FlexPT then
                FlexPT = false
                TriggerEvent('maxipolidispo:PTSync')
            end
        else
            TriggerClientEvent('maxipolidispo:NoPermisos', source)
        end
    end
end
end)
        
RegisterServerEvent('maxipolidispo:PTSync')
AddEventHandler('maxipolidispo:PTSync', function()
    TriggerClientEvent('maxipolidispo:SendPT', -1, FlexPT)
end)