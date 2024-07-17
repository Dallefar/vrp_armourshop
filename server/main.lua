local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_armorshop")

lib.callback.register('vrp_armorshop:getperm', function(source, perms)
    local HasPerm = false

    for k, Perm in pairs(perms) do 
        if vRP.hasPermission({vRP.getUserId({source}), Perm}) then
            HasPerm = true 
            break
        end
    end

    return HasPerm
end)

lib.callback.register('vrp_armorshop:giveweapon', function(source, weapon, shop, amount)
    local user_id = vRP.getUserId({source})
    local price = Config.GunShopTypes[shop].Items[weapon].ItemPrice

    if ItemCode == 'ARMOR' then
        if vRP.tryFullPayment({user_id, price}) then
            return true, TriggerClientEvent('ox_lib:notify', source, { title = 'Armour Shop', description = 'Du har købt en ' .. weapon .. ' for ' .. price .. 'kr!', type = 'success' })
        else
            return false, TriggerClientEvent('ox_lib:notify', source, { title = 'Armour Shop', description = 'Du har ikke nok penge til dette ', type = 'error' })
        end
    end

    if Config.GunShopTypes[shop].Items[weapon] then
        if vRP.tryFullPayment({user_id, price}) then
            vRPclient.giveWeapons(user_id, {{ [weapon] = { ammo = 250 } }})
            TriggerClientEvent('ox_lib:notify', source, { title = 'Armour Shop', description = 'Du har købt en ' .. weapon .. ' for ' .. price .. 'kr!', type = 'success' })
        else
            TriggerClientEvent('ox_lib:notify', source, { title = 'Armour Shop', description = 'Du har ikke nok penge til dette ', type = 'error' })
        end
    else
        vRP.ban({user_id, 'Lua Menu detected! Skrid ud lorteunge.'})
    end
end)