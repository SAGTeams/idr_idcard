RegisterNetEvent('um-idcard:server:sendData', function(src,metadata)
    if metadata.mugShot ~= 'none' then
        lib.callback('um-idcard:client:callBack:getClosestPlayer', src, function(player)
            if player ~= 0 then
                TriggerClientEvent('um-idcard:client:notifyOx', src, {
                    title = 'Anda menunjukkan KTP Anda', 
                    desc = 'Anda menunjukkan KTP Anda ke pemain terdekat',
                    icon = 'id-card',
                    iconColor = 'green'
                })
                src = player
            end
            TriggerClientEvent('um-idcard:client:sendData', src, metadata)
        end)
        TriggerClientEvent('um-idcard:client:startAnim', src, metadata.cardtype)
    else
        NewMetaDataLicense(src,metadata.cardtype)
    end
end)

for k,_ in pairs(Config.Licenses) do
    CreateRegisterItem(k)
end