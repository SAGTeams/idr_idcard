Config = {};

Config.IdCardSettings = {
   closeKey = 'Backspace',
   autoClose = {
      status = false, -- or true
      time = 3000
   }
};

Config.Licenses = {
   ['id_card'] = {
      header = 'KARTU TANDA PENDUDUK',
      background = '#ebfdebff',
      prop = 'p_ld_id_card_002',
   },
   ['driver_licensea'] = {
      header = 'SURAT IZIN MENGEMUDI A',
      background = '#6792ffff',
      prop = 'prop_fib_badge',
   },
   ['driver_licenseb'] = {
      header = 'SURAT IZIN MENGEMUDI B',
      background = '#67d6ffff',
      prop = 'prop_cs_r_business_card',
   },
   ['driver_licensec'] = {
      header = 'SURAT IZIN MENGEMUDI C',
      background = '#ff7575ff',
      prop = 'p_ld_id_card_002',
   },
   ['weaponlicense'] = {
      header = 'Licensi Senjata',
      background = '#c7ffe5',
      prop = 'prop_franklin_dl',
   },
   ['lawyerpass'] = {
      header = 'Lawyer Pass',
      background = '#f9c491',
      prop = 'prop_cs_r_business_card'
   },
   ['kartu_tanda_anggota'] = {
      header = 'Kartu Tanda Anggota',
      background = '#03a86eff',
      prop = 'prop_michael_sec_id'
   },
   ['licensi_berburu'] = {
      header = 'Licensi Berburu',
      background = '#535157ff',
      prop = 'p_ld_id_card_002',
    },
    ['kartuketeranganwargabaru'] = {
          header = 'KARTU KETERANGAN WARGA BARU',
          background = '#b085ffff',
          prop = 'p_ld_id_card_002',
        },
}




-----------------------------------------------------------------------------------menu
Config.NPC = {
   coords = vector4(-556.99, -186.38, 38.22, 206.61),
   model = 'a_m_m_business_01'
}

Config.MenuCards = {
   {
       title = 'KTP',
       icon = 'id-card',
       args = {
           itemName = 'id_card'
       }
   },{
       title = 'Kartu Keterangan Warga Baru',
       icon = 'id-card',
       args = {
           itemName = 'kartuketeranganwargabaru'
       }
   },
}

Config.BuatLicensi = {
   coords = vector4(-290.9031, -1046.8403, 28.3441, 65.1363),
   model = 'a_m_m_business_01'
}

Config.MenuKartunya = {
   {
       title = 'SIM A',
       icon = 'car',
       args = {
           itemName = 'driver_licensea'
       }
   },{
       title = 'SIM B',
       icon = 'truck',
       args = {
           itemName = 'driver_licenseb'
       }
   },{
       title = 'SIM C',
       icon = 'motorcycle',
       args = {
           itemName = 'driver_licensec'
       }
   },{
       title = 'Licensi Senjata',
       icon = 'gun',
       args = {
           itemName = 'weaponlicense'
       }
   },{
       title = 'Kartu Tanda Anggota',
       icon = 'police',
       args = {
           itemName = 'kartu_tanda_anggota'
       }
   },{
       title = 'Licensi Berburu',
       icon = 'animals',
       args = {
           itemName = 'licensi_berburu'
       }
   },
}
