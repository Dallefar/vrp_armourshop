fx_version 'cerulean'
game 'gta5'
lua54 'yes'
dependency 'vrp'

shared_scripts { '@ox_lib/init.lua', 'config.lua' }

client_script { 'client/*' }

server_scripts{ '@vrp/lib/utils.lua', 'server/*' }
