Config = {}

-- { Om scriptet skal køre med target isteddet for textui } -- 
Config.Target = false 

-- { GunShops } -- 
Config.GunShops = {
    {
        ShopType = "Våbenbutik",
        Coords = vector3(1692.41, 3758.22, 34.7053),
        Blip = true
    },
    {
        ShopType = "Våbenbutik",
        Coords = vector3(252.696, -48.2487, 69.941),
        Blip = true
    },
    {
        ShopType = "Våbenbutik",
        Coords = vector3(844.299, -1033.26, 28.1949),
        Blip = true
    },
    {
        ShopType = "Våbenbutik",
        Coords = vector3(-331.624, 6082.46, 31.4548),
        Blip = true
    },
    {
        ShopType = "Våbenbutik",
        Coords = vector3(-664.147, -935.119, 21.8292),
        Blip = true
    },
    {
        ShopType = "Våbenbutik",
        Coords = vector3(-1305.4624, -392.4640, 36.6957),
        Blip = true
    },
    {
        ShopType = "Våbenbutik",
        Coords = vector3(-1119.4880, 2697.0866, 18.554),
        Blip = true
    },
    {
        ShopType = "Våbenbutik",
        Coords = vector3(2569.62, 294.453, 108.735),
        Blip = true
    },
    {
        ShopType = "Våbenbutik",
        Coords = vector3(-3172.6037, 1085.7481, 20.8387),
        Blip = true
    },
    {
        ShopType = "Våbenbutik",
        Coords = vector3(21.70, -1107.41, 29.79),
        Blip = true
    },
    {
        ShopType = "Våbenbutik",
        Coords = vector3(810.15, -2156.88, 29.61),
        Blip = true
    },
    {
        ShopType = "DVS",
        Coords = vector3(-82.249839782715, -809.95379638672, 243.38580322266),
        Blip = false
    },
    {
        ShopType = "Hitman Våben",
        Coords = vector3(-595.41613769531, -1617.4953613281, 33.01057434082),
        Blip = false
    },
    {
        ShopType = "PolitiStationen",
        Coords = vector3(459.21792602539, -979.71276855469, 30.68957901001),
        Blip = false
    },
    {
        ShopType = "PolitiStationen",
        Coords = vector3(-437.46026611328, 5988.5776367188, 31.616196060181),
        Blip = false
    },
    {
        ShopType = "PolitiStationen",
        Coords = vector3(1853.7529296875, 3689.8930664063, 34.186670684814),
        Blip = false
    },
    {
        ShopType = "DBE",
        Coords = vector3(123.82042694092, -770.14361572266, 242.15197753906),
        Blip = false
    },
    {
        ShopType = "PolitiStationen",
        Coords = vector3(-1111.8388671875, -816.72729492188, -46.270099639893),
        Blip = false
    }
}

Config.GunShopTypes = {
    ["Våbenbutik"] = {
        blipid = 110,
        blipcolor = 1,
        Items = {
            {
                Item = "ARMOR",
                ItemName = "Skudsikker vest",
                ItemPrice = 50000,
            },
            {
                Item = "WEAPON_FLASHLIGHT",
                ItemName = "Lommelygte",
                ItemPrice = 5000,
            },
            {
                Item = "WEAPON_KNIFE",
                ItemName = "Kniv",
                ItemPrice = 12500,
            },
            {
                Item = "WEAPON_BAT",
                ItemName = "Baseballbat",
                ItemPrice = 7500,
            },
            {
                Item = "WEAPON_CROWBAR",
                ItemName = "Brækjern",
                ItemPrice = 5250,
            },
            {
                Item = "WEAPON_KNUCKLE",
                ItemName = "Knojern",
                ItemPrice = 10250,
            },
            {
                Item = "WEAPON_WRENCH",
                ItemName = "Svensknøgle",
                ItemPrice = 9750,
            },
            {
                Item = "WEAPON_SWITCHBLADE",
                ItemName = "Foldekniv",
                ItemPrice = 15250,
            },
            {
                Item = "WEAPON_GOLFCLUB",
                ItemName = "Golfkølle",
                ItemPrice = 7250,
            },
            {
                Item = "WEAPON_HAMMER",
                ItemName = "Hammer",
                ItemPrice = 3250,
            }
        }
    },
    ["Hitman Våben"] = {
        blipid = 0,
        blipcolor = 0,
        permissions = { "hitman.weapon" },
        Items = {
            {
                Item = "ARMOR",
                ItemName = "Skudsikker vest",
                ItemPrice = 20000
            },
            {
                Item = "WEAPON_PISTOL",
                ItemName = "Håndpistol",
                ItemPrice = 1
            }
        }
    },
    ["PolitiStationen"] = {
        blipid = 0,
        blipcolor = 0,
        permissions = {"police.loadshop"},
        Items = {
            {
                Item = "ARMOR",
                ItemName = "Skudsikker vest",
                ItemPrice = 0
            },
            {
                Item = "WEAPON_COMBATPISTOL",
                ItemName = "Tjenestepistol",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_STUNGUN",
                ItemName = "TAZER",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_CARBINERIFLE",
                ItemName = "Carbine Riffel",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_FLASHLIGHT",
                ItemName = "Lommelygte",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_NIGHTSTICK",
                ItemName = "Politi stav",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_BZGAS",
                ItemName = "Tåregas",
                ItemPrice = 5
            },
            {
                Item = "WEAPON_SMG",
                ItemName = "SMG",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_FIREEXTINGUISHER",
                ItemName = "Brandslukker",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_SNIPERRIFLE",
                ItemName = "Sniper",
                ItemPrice = 0
            }
        }
    },
    ["DBE"] = {
        blipid = 0,
        blipcolor = 0,
        permissions = { "police.loadshop" },
        Items = {
            {
                Item = "ARMOR",
                ItemName = "Skudsikker vest",
                ItemPrice = 0
            },
            {
                Item = "WEAPON_COMBATPISTOL",
                ItemName = "Tjenestepistol",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_STUNGUN",
                ItemName = "TAZER",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_CARBINERIFLE",
                ItemName = "Carbine Riffel",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_FLASHLIGHT",
                ItemName = "Lommelygte",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_NIGHTSTICK",
                ItemName = "Politi stav",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_BZGAS",
                ItemName = "Tåregas",
                ItemPrice = 5
            },
            {
                Item = "WEAPON_SMG",
                ItemName = "SMG",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_FIREEXTINGUISHER",
                ItemName = "Brandslukker",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_SNIPERRIFLE",
                ItemName = "Sniper",
                ItemPrice = 0
            }
        }
    },
    ["Bande Enhed"] = {
        blipid = 0,
        blipcolor = 0,
        permissions = {"bande.loadshop"},
        Items = {
            {
                Item = "ARMOR",
                ItemName = "Skudsikker vest",
                ItemPrice = 0
            },
            {
                Item = "WEAPON_COMBATPISTOL",
                ItemName = "Tjenestepistol",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_STUNGUN",
                ItemName = "TAZER",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_CARBINERIFLE",
                ItemName = "M4 CARBINE",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_FLASHLIGHT",
                ItemName = "Lommelygte",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_NIGHTSTICK",
                ItemName = "Politi stav",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_FIREEXTINGUISHER",
                ItemName = "Brandslukker",
                ItemPrice = 1
            }
        }
    },
    ["DVS"] = {
        blipid = 0,
        blipcolor = 0,
        permissions = {"dvs.loadshop"},
        Items = {
            {
                Item = "ARMOR",
                ItemName = "Skudsikker vest",
                ItemPrice = 0
            },
            {
                Item = "WEAPON_STUNGUN",
                ItemName = "Tazer",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_FLASHLIGHT",
                ItemName = "Lommelygte",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_NIGHTSTICK",
                ItemName = "Stav",
                ItemPrice = 1
            },
            {
                Item = "WEAPON_FIREEXTINGUISHER",
                ItemName = "Brandslukker",
                ItemPrice = 1
            }
        }
    }
}