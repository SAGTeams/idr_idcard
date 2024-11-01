----[[BUAT KTP PEMERINTAH]]

RegisterNetEvent('sag:buat:ktp', function()
  local options = {}
  for k, v in pairs(Config.MenuCards) do
      options[#options + 1] = {
          value = v.args.itemName,
          label = v.title,
          icon = v.icon
      }
  end
  
  local input = lib.inputDialog('Pilih Licensi Yang Ingin Dibuat', {
      {
          type = 'select',
          options = options,
          icon = 'id-card',
          default = options[1].value,  -- Set default to the first item in the list
          required = true
      },
  })

  if not input then return end
  
  -- Meminta ID server pemain untuk diberikan item
  local playerIdInput = lib.inputDialog('Masukkan ID Pemain', { 'Nomor Kantong Warga' })
  if not playerIdInput or not tonumber(playerIdInput[1]) then
      TriggerEvent('esx:showNotification', "ID Player tidak valid.")
      return
  end
  
  local targetPlayerId = tonumber(playerIdInput[1])
  
  -- Kirim event ke server untuk memberikan item
  TriggerServerEvent('sag-npc:server:AddItemtoExport', { itemName = input[1] }, targetPlayerId)
end)

----[[BUAT KARTU DI POLISI]]

RegisterNetEvent('sag:buat:licensi', function()
  local options = {}
  for k, v in pairs(Config.MenuKartunya) do
      options[#options + 1] = {
          value = v.args.itemName,
          label = v.title,
          icon = v.icon
      }
  end
  
  local input = lib.inputDialog('Pilih Licensi Yang Ingin Dibuat', {
      {
          type = 'select',
          options = options,
          icon = 'id-card',
          default = options[1].value,  -- Set default to the first item in the list
          required = true
      },
  })

  if not input then return end
  
  -- Meminta ID server pemain untuk diberikan item
  local playerIdInput = lib.inputDialog('Masukkan ID Pemain', { 'Nomor Kantong Warga' })
  if not playerIdInput or not tonumber(playerIdInput[1]) then
      TriggerEvent('esx:showNotification', "ID Player tidak valid.")
      return
  end
  
  local targetPlayerId = tonumber(playerIdInput[1])
  
  -- Kirim event ke server untuk memberikan item
  TriggerServerEvent('sag-npc:server:AddItemtoExport', { itemName = input[1] }, targetPlayerId)
end)

RegisterNetEvent('um-idcard-npc:client:OxNotify', function(itemName)
  TriggerEvent('esx:showNotification', "Identitas Anda telah disetujui:" .. itemName)
end)

-- Add ox_target for interaction
CreateThread(function()
  --ini buat KTP dipemerintah
  exports.ox_target:addBoxZone({
      name = "identity_creation",
      radius = 1.5,
      coords = vector3(-556.99, -186.38, 38.22),
      size = vec3(2.0, 2.0, 10),
      debug = false,
      rotation = 0.0,
      options = {
          {
              icon = "far fa-clipboard",
              label = "Buat KTP",
              event = "sag:buat:ktp",
              groups = "state",
          },
      },
  })

    --ini buat licensidipolisi
    exports.ox_target:addBoxZone({
      name = "buat_licensi",
      radius = 1.5,
      coords = vector3(-291.0170, -1046.8782, 28.3441),
      size = vec3(2.0, 2.0, 10),
      debug = false,
      rotation = 0.0,
      options = {
          {
              icon = "far fa-clipboard",
              label = "Buat Licensi",
              event = "sag:buat:licensi",
              groups = "police",
          },
      },
  })
end)