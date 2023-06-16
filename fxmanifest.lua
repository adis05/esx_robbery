fx_version 'cerulean'
games { 'gta5' }
author 'After Duty Sleep'
description 'Warung'
lua54 'yes'

shared_scripts {
     '@ox_lib/init.lua',
     '@es_extended/imports.lua'
}

server_scripts {
     'server/sv_warung.lua',
} 
client_scripts {
     'client/cl_warung.lua',
     'client/targets_warung.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/styles.css',
    'html/script.js'
}

client_script 'client.lua'
 
 dependencies {
     'ox_lib',
     'ox_target',
     'es_extended'
}
