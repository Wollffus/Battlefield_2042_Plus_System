fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'https://discord.gg/zGVDppYxfk'
version '1.1.5'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'

ui_page 'HUD/index.html'

server_script {
    'ensure.lua'
}

client_script {
    'functions.lua'
}

files {
    'HUD/index.html',
    'HUD/Cross.png',
    'HUD/style.css',
    'HUD/script.js',
    'HUD/images/*'
}
