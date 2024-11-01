--------------------------[[INI SCRIPT KTP INDORAELITY YANG SUDAH DIMODIFIKASI]]-------------------------

## CONTOH GAMBAR
https://r2.fivemanage.com/pub/hablza9a5gqg.png

## SCRIPT ASLI
**[Darisini](https://github.com/alp1x/um-idcard-menu)** 

### Setup
* Pastikan Anda memiliki item dalam **Config.Licenses**, jika tidak, tambahkan saja.
* Setelah itu **[ox_lib](https://github.com/overextended/ox_lib/releases)** Dan **[MugShotBase64](https://github.com/BaziForYou/MugShotBase64)** 
* Target : ox_target **[ox_target](https://github.com/overextended/ox_target)**
* `ensure idr_idcard`
* 📄 **[QBCore Starter Setup](https://alp1x.github.io/um-idcard/Starter%20Setup/qbcore)**
* 📄 **[ESX Starter Setup](https://alp1x.github.io/um-idcard/Starter%20Setup/esx)**

### CARA MENGGUNAKANNYA
* Cukup gunakan item tersebut
* Jika ada seseorang di dekat Anda, item tersebut akan terlihat oleh mereka, jika tidak, hanya Anda yang akan melihatnya.
* Item tersebut mengambil foto Anda saat pertama kali menggunakan item tersebut dan menyimpannya dalam metadata.

### Bagaimana cara membuat kartu identitas khusus?
* **[um-idcard-maker](https://alp1x.github.io/um-idcard-maker/)**

### Bagaimana cara menambahkan kartu identitas dengan metadata?
* **[Exports](https://alp1x.github.io/um-idcard/exports)**

### Inventory
* **[ox_inventory](https://github.com/overextended/ox_inventory/releases)** (ESX or QBCore)

-------------------------------[[ITEM OX INVENTORY]]-------------------------------
```
['id_card'] = {
        label = 'KTP',
        weight = 0,
        stack = false,
        close = true,
        description = "Kartu Tanda Kependudukan Indoreality",
        client = {image = 'idcard.png'}
    },
    ['driver_licensea'] = {
        label = 'SIM A',
        weight = 0,
        stack = false,
        close = true,
        description = "Surat Izin Mengemudi Mobil",
        client = {image = 'driverlicense.png'},
        degrade = 30 * 24 * 60
    },
	['driver_licenseb'] = {
        label = 'SIM B',
        weight = 0,
        stack = false,
        close = true,
        description = "Surat Izin Mengemudi Truck/Bus",
        client = {image = 'driverlicense.png'},
        degrade = 30 * 24 * 60
    },
	['driver_licensec'] = {
        label = 'SIM C',
        weight = 0,
        stack = false,
        close = true,
        description = "Surat Izin Mengemudi Motor",
        client = {image = 'driverlicense.png'},
        degrade = 30 * 24 * 60
    },
    ['weaponlicense'] = {
        label = 'License Senjata',
        weight = 0,
        stack = false,
        close = true,
        description = "Licensi Senjata Indoreality",
        client = {image = 'weapon_license.png'},
        degrade = 30 * 24 * 60
    },
    ['kartu_tanda_anggota'] = {
        label = 'Kartu Tanda Anggota',
        weight = 0,
        stack = false,
        close = true,
        description = "Kartu Tanda Anggota Kepolisian Indoreality",
        client = {image = 'kartu_tanda_anggota.png'}
    },
	['licensi_berburu'] = {
		label = 'Licensi Berburu',
		weight = 0,
		stack = false,
		close = true,
		description = 'Licensi Berburu Indoreality',
		client = {image = 'licensi_berburu.png'},
        degrade = 30 * 24 * 60
  	},
	['lawyerpass'] = {
        label = 'Lawyer Pass',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'lawyerpass.png'}
    },
    ['kartuketeranganwargabaru'] = {
          label = 'KARTU KETERANGAN WARGA BARU',
          weight = 1,
          stack = false,
          description = 'Berlaku selama 3 hari & KKWB ini akan tidak berlaku jika nama bersangkutan diketahui melakukan tindakan kriminal.',
          client = {image = 'kartuketeranganwargabaru.png'},
          degrade = 3 * 24 * 60,
		  decay = true,
		  close = true,
		  buttons = {
			{
				label = 'Gratis Perban 10 & 5 Obat Strees (Hanya Dapat Claim 1X)',
				group = 'Benefit',
				action = function(slot)
					print('GRATIS PERBAN 10 PCS DAN 5 PCS OBAT STRESS (HANYA DAPAT DI CLAIM 1X SAJA).')
				end
			},
			{
				label = 'Gratis 5x Repair Ataupun Towing',
				group = 'Benefit',
				action = function(slot)
					print('GRATIS 5 KALI PELAYANAN REPAIR ATAUPUN TOWING.')
				end
			},
			{
				label = 'Gratis 2 Paket Besar (Hanya Dapat Claim 1X)',
				group = 'Benefit',
				action = function(slot)
					print('GRATIS 2 PAKET BESAR (HANYA DAPAT DI CLAIM 1X SAJA).')
				end
			},
			{
				label = 'Diberikan Perlindungan Dalam Segala Jenis Tindak Kriminal Selama KKWB Berlaku',
				group = 'Benefit',
				action = function(slot)
					print('DIBERIKAN PERLINDUNGAN DALAM SEGALA JENIS TINDAK KRIMINAL SELAMA KKWB BERLAKU.')
				end
			}
		},
	},
```
## Contributors 
<a href="https://github.com/alp1x/um-idcard/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=alp1x/um-idcard" />
</a>

## License
[GNU General Public License v3.0](https://choosealicense.com/licenses/gpl-3.0/)

## Star History
[![Star History Chart](https://api.star-history.com/svg?repos=alp1x/um-idcard&type=Date)](https://star-history.com/#alp1x/um-idcard&Date)
