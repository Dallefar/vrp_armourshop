CreateThread(function()

    for k, v in pairs(Config.GunShops) do

        local ShopType = Config.GunShopTypes[v.ShopType]

        if v.Blip then
            local blip = AddBlipForCoord(v.Coords)
            SetBlipSprite(blip, ShopType.blipid)
            SetBlipAsShortRange(blip, true)
            SetBlipColour(blip, ShopType.blipcolor)
            SetBlipScale(blip, 0.6)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.ShopType)
            EndTextCommandSetBlipName(blip)
        end
        
        local point = lib.points.new({
            coords = v.Coords,
            distance = 3,
        })
         
        function point:onEnter()
            print('Entered')
            if not ShopType.permissions or ShopType.permissions == {} then
                lib.showTextUI('[E] - For at åbne ' .. v.ShopType)
                print('No perms here')
            else
                if lib.callback.await('vrp_armorshop:getperm', false, ShopType.permissions) then
                    lib.showTextUI('[E] - For at åbne ' .. v.ShopType)
                end
            end
        end
         
        function point:onExit()
            lib.hideTextUI()
        end
         
       function point:nearby()
            if not ShopType.permissions or ShopType.permissions == {} then
                DrawMarker(2, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 0.5, 0.5, 0.5, 20, 20, 200, 50, false, false, 2, true, nil, nil, false)
                if self.currentDistance < 3 and IsControlJustReleased(0, 38) then
                    OpenMenu(v.ShopType)
                end
            else
                if lib.callback.await('vrp_armorshop:getperm', false, ShopType.permissions) then
                    DrawMarker(2, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 0.5, 0.5, 0.5, 20, 20, 200, 50, false, false, 2, true, nil, nil, false)
                    if self.currentDistance < 3 and IsControlJustReleased(0, 38) then
                        OpenMenu(v.ShopType)
                    end
                end
            end
        end
    end
end)

function OpenMenu(Index)
    local options = {}

    for _, Item in pairs(Config.GunShopTypes[Index].Items) do 
        table.insert(options, {
            title = Item.ItemName,
            icon = 'gun',
            description = 'Klik her for at købe en ' .. Item.ItemName .. ' til ' .. Item.ItemPrice .. 'kr',
            metadata = { { label = 'Våben pris', value = Item.ItemPrice } },
            onSelect = function()
                local HasMoney = lib.callback.await('vrp_armorshop:giveweapon', false, v.Item, Index)
                if HasMoney and v.Item == 'ARMOR' then
                    if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") then
                        SetPedComponentVariation(PlayerPedId(), 9, 4, 1, 2)  
                    elseif GetEntityModel(layer) == GetHashKey("mp_f_freemode_01") then
                        SetPedComponentVariation(PlayerPedId(), 9, 6, 1, 2)
                    end
                end
            end
        })
    end

    lib.registerContext({ id = 'WeaponShop', title = Index, options = options })
    lib.showContext('WeaponShop')
end