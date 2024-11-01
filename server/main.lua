RegisterNetEvent('um-idcard-npc:server:AddItemtoExport', function(args)
    local src = source
    exports['idr_idcard']:CreateMetaLicense(src, args.itemName)
    TriggerClientEvent('um-idcard-npc:client:OxNotify', src, args.itemName)
end)



RegisterNetEvent('sag-npc:server:AddItemtoExport', function(args, targetPlayerId)
    local src = source
    -- Memastikan bahwa targetPlayerId valid
    if targetPlayerId and GetPlayerName(targetPlayerId) then
        -- Memberikan item kepada target player
        exports['idr_idcard']:CreateMetaLicense(targetPlayerId, args.itemName)
        
        -- Mengirimkan notifikasi kepada pemain yang diberi item
        TriggerClientEvent('um-idcard-npc:client:OxNotify', targetPlayerId, args.itemName)
        
        -- Notifikasi kepada pemain yang memberikan item
        TriggerClientEvent('um-idcard-npc:client:OxNotify', src, 'Licensi berhasil diberikan ke ID ' .. targetPlayerId)
    else
        -- Kirimkan error jika ID tidak valid
        TriggerClientEvent('um-idcard-npc:client:OxNotify', src, 'ID Player tidak valid.')
    end
end)

