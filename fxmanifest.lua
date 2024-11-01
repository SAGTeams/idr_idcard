
fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'idr_idcard'
author 'SAG_'
version '1.2.8'
license 'GPL-3.0 license'
description 'Ini KTP CardIndoreality'

dependencies {
	'ox_lib',
	'MugShotBase64'
}

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua'
}

--client_script 'main/client.lua'
client_scripts {
	'client/*.lua',
	'main/client.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'bridge/**/*.lua',
	'main/server.lua',
	'main/version.lua',
	--server menu
	'server/main.lua',
	--'version/version.lua'
}

ui_page 'web/index.html'

files {
	'web/index.html',
	'web/css/style.css',
	'web/flags/*.png',
	'lang/global.js',
	'web/js/*.js',
	'web/badges/*.png',
}
