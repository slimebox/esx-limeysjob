local ESX = exports['es_extended']:getSharedObject()

isLoggedIn = false
PlayerJob = {}


Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("LimeysDuty", vector3(252.78, -1018.57, 29.46), 0.25, 0.3, {
		name = "LimeysDuty",
		heading = 132.0,
		debugPoly = Config.PolyZoneTest,
		minZ=29.465,
		maxZ=29.6,
	}, {
		options = {
		    {  
			event = "qb-limeysjob:DutyB",
			icon = "far fa-clipboard",
			label = "Clock On/Off",
			job = Config.JobName,
		    },
		},
		distance = 1.5
	})  
    exports['qb-target']:AddBoxZone("LimeysTray1", vector3(252.98, -1023.48, 29.68), 0.5, 0.5, {
		name = "LimeysTray1",
		heading = 70.0,
		debugPoly = Config.PolyZoneTest,
		minZ=29.5,
		maxZ=29.7,
	}, {
		options = {
		    {
			event = "qb-limeysjob:Tray1",
			icon = "fas fa-box",
			label = "Tray 1",
		    },
		},
		distance = 1.5
	})

    exports['qb-target']:AddBoxZone("LimeysTray2", vector3(254.0, -1020.8, 29.61), 0.75, 0.35, {
		name = "LimeysTray2",
		heading = 160.0,
		debugPoly = Config.PolyZoneTest,
		minZ=29.5,
		maxZ=29.62,
	}, {
		options = {
		    {
			event = "qb-limeysjob:Tray2",
			icon = "fas fa-box",
			label = "Tray 2",
		    },
		},
		distance = 1.5
	})

    exports['qb-target']:AddBoxZone("LimeysCustomerMenu", vector3(252.90, -1018.45, 29.48), 1.0, 3.25, {
		name = "LimeysCustomerMenu",
		heading = 70.0,
		debugPoly = Config.PolyZoneTest,
		minZ=31.0,
		maxZ=32.5,
	}, {
		options = {
            {
            event = "qb-menu:ViewLimeysMenu",
            icon = "fas	fa-cocktail",
            label = "View Menu",
            },
		},
		distance = 20.0
	})

        



	exports['qb-target']:AddBoxZone("limeysdrinkmenu", vector3(251.7, -1023.13, 29.98), 0.6, 1.6, {
		name="limeysdrinkmenu",
		heading=160,
		debugPoly=Config.PolyZoneTest,
		minZ=29.5,
		maxZ=30.3,
	}, {
		options = {
			{
				event = "qb-menu:LimeysDrinkMenu",
				icon = "fas	fa-cocktail",
				label = "Drink Menu",
				job = Config.JobName,
			},
		},
		distance = 1.5
	})



        exports['qb-target']:AddBoxZone("limeysstoragecabinet", vector3(253.69, -1020.99, 29.5), 4.6, 0.3, {
            name="limeysstoragecabinet",
            heading=160,
            debugPoly=Config.PolyZoneTest,
            minZ=28.54,
            maxZ=29.45,
        }, {
                options = {
                    {
                        event = "qb-menu:LimeysStorage",
                        icon = "fas fa-box",
                        label = "Storage",
                        job = Config.JobName,
                    },
                },
                distance = 1.5
            })

            exports['qb-target']:AddBoxZone("limeysfridge", vector3(252.53, -1019.25, 29.46), 0.55, 2.0, {
                name="limeysfridge",
                heading=70,
                debugPoly=Config.PolyZoneTest,
                minZ=28.54,
                maxZ=29.465,
            }, {
                    options = {
                        {
                            event = "qb-limeysjob:Fridge",
                            icon = "fas	fa-cocktail",
                            label = "Drinks Fridge",
                            job = Config.JobName,
                        },
                    },
                    distance = 1.5
                })


            
                exports['qb-target']:AddBoxZone("limeysmanagerpc", vector3(253.2, -1022.87, 29.51), 0.4, 0.45, {
                    name="limeysmanagerpc",
                    heading=50,
                    debugPoly=Config.PolyZoneTest,
                    minZ=29.5,
                    maxZ=29.75,
                }, {
                        options = {
                            {
                                event = "qb-menu:LimeysManagerPC",
                                icon = "fas fa-laptop",
                                label = "Managers Laptop",
                                job = Config.JobName,
                            },
                        },
                        distance = 1.5
                    })

                    exports['qb-target']:AddBoxZone("limeyscandyshop", vector3(254.87, -1018.85, 29.61), 0.75, 0.4, {
                        name="limeyscandyshop",
                        heading=160,
                        debugPoly=Config.PolyZoneTest,
                        minZ=29.5,
                        maxZ=29.7,
                    }, {
                            options = {
                                {
                                    event = "qb-menu:CandyShop",
                                    icon = "fas	fa-bolt",
                                    label = "Candy Shop",
                                    job = Config.JobName,
                                },
                            },
                            distance = 1.5
                        })

                        exports['qb-target']:AddBoxZone("limeysdonutshop", vector3(254.2, -1016.75, 29.61), 0.6, 0.9, {
                            name="limeysdonutshop",
                            heading=160,
                            debugPoly=Config.PolyZoneTest,
                            minZ=28.55,
                            maxZ=30.3,
                        }, {
                                options = {
                                    {
                                        event = "qb-menu:DonutShop",
                                        icon = "fas	fa-cookie",
                                        label = "Donut Shop",
                                        job = Config.JobName,
                                    },
                                },
                                distance = 1.5
                            })

                        exports['qb-target']:AddBoxZone("LimeysAlarm", vector3(252.71, -1023.00, 28.54), 0.2, 0.2, {
			                name = "LimeysAlarm",
			                heading = 70.0,
			                debugPoly = Config.PolyZoneTest,
			                minZ=29.0,
			                maxZ=29.4,
		                }, {
			                options = {
			                    {
				                event = "qb-limeysjob:LimeysAlarm",
				                icon = "fas	fa-mask",
				                label = "Hit Emergency Panic Alarm",
                                job = Config.JobName,
			                    },
			                },
			                distance = 2.5
		                })


        exports['qb-target']:AddBoxZone("LimeysRegister", vector3(253.39, -1022.33, 29.8), 0.375, 0.475, {
            name="LimeysRegister",
            debugPoly=Config.PolyZoneTest,
            heading=70,
            minZ=29.5,
            maxZ=29.82,
        }, {
                options = {
                    {
                        event = "qb-limeysjob:bill",
                        parms = "1",
                        icon = "fas fa-credit-card",
                        label = "Send an Invoice",
                        job = Config.JobName,
                    },
                },
                distance = 1.5
            })
end)


-- QB-MENU --

lib.registerMenu({
    id = 'LimeysMenu',
    title = '| Limeys Menu |',
    options = {
        { label = '• Drinks', description = 'A lovely cocktail awaits' },
    }
}, function(selected, scroll, args)
    if selected == 1 then
        lib.showMenu('LimeysDrinks')
    end
end)

RegisterNetEvent('qb-menu:ViewLimeysMenu', function(data)
    lib.showMenu("ViewLimeysMenu")
end)

DrinksMenuOptions = {
    { label = "• Cherry Cocktail", description = "A lovely cocktail." },
    { label = "• Apple Cocktail", description = "Rumor has it that Sir Isaac Newton's apple made this."},
    { label = "• Banana Cocktail", description = "Brought to you by the minions."},
    { label = "• Kiwi Cocktail", description = "Enjoyed by most!"},
    { label = "• Paradise Cocktail", description = "Livin' the paradise."},
    { label = "• Cherry Drink", description = "Cherries! Non-alcoholic." },
    { label = "• Lemon Drink", description = "We all know it's lemonade. Non-alcoholic!"},
    { label = "• Lime Drink", description = "Limes. Non-alcoholic!"},
    { label = "• Orange Drink", description = "Fancy orange juice. Indubitably. Non-alcoholic!"},
    { label = "• Watermelon Drink", description = "Fancy treat."},
    { label = "Back"}
}

MenuEvents = { "qb-limeysjob:CherryCocktail", "qb-limeysjob:AppleCocktail", "qb-limeysjob:BananaCocktail", "qb-limeysjob:KiwiCocktail", "qb-limeysjob:ParadiseCocktail", "qb-limeysjob:CherryDrink", "qb-limeysjob:LemonDrink", "qb-limeysjob:LimeDrink", "qb-limeysjob:OrangeDrink", "qb-limeysjob:WatermelonDrink"}


lib.registerMenu({
    id = "ViewLimeysDrinks",
    title = "| Drinks Menu |",
    options = DrinksMenuOptions
}, function(selected, scroll, args)
    if selected == 11 then
        lib.showMenu("LimeysMenu")
end)

lib.registerMenu({
    id = "LimeysDrinks",
    title = "| Drinks Menu |",
    options = DrinksMenuOptions
}, function(selected, scroll, args)
    if selected = 11 then 
        lib.showMenu("LimeysMenu")
    else
        TriggerEvent(MenuEvents[selected])
    end
end)

lib.registerMenu({
    id = "LimeysStorage",
    title = "| Limeys Storage |",
    options {
        { label = "• Left Cabinet" },
        { label = "• Middle Cabinet" },
        { label = "• Right Cabinet" }
    }
}, function(selected, scroll, args)
    if selected == 1 then
        TriggerEvent("qb-limeysjob:Cabinet1")
    elseif selected == 2 then
        TriggerEvent("qb-limeysjob:Cabinet2")
    else
        TriggerEvent("qb-limeysjob:Cabinet3")
    end
end)

RegisterNetEvent('qb-menu:LimeysStorage', function(data)
    lib.showMenu("LimeysStorage")
end)

lib.registerMenu({
    id = "DonutShop",
    title = "| Donut Rack |",
    options = {
        { label = "• Get Donuts"}
    }
}, function(selected, scroll, args)
    if selected == 1 then TriggerEvent("qb-limeysjob:donutshop") end``
end)

RegisterNetEvent('qb-menu:DonutShop', function(data)
    lib.showMenu("DonutShop")
end)

lib.registerMenu({
    id = "CandyShop",
    title = "| Candy Rack |",
    options = {
        { label = "• Get Candy" }
    }
}, function(selected, scroll, args)
    if selected == 1 then TriggerEvent("qb-limeysjob:candyshop") end
end)

RegisterNetEvent('qb-menu:CandyShop', function(data)
    lib.showMenu("CandyShop")
end)


lib.registerMenu({
    id = "LimeysManager", 
    title = "| Manager's Laptop | ",
    options = {
        { label = "• Order Ingredients", description = "Place an order for ingredients."},
        { label = "• Manage Business", description = "Manage the business and its' workers."}
    }
}, function(selected, scroll, args)
    if selected == 1 then 
        TriggerEvent("qb-limeysjob:shop")
    else
        TriggerEvent('esx_society:openBossMenu', "limeys", function(data, menu) end, { wash = false })
end)

RegisterNetEvent('qb-menu:LimeysManagerPC', function(data)
    lib.showMenu("LimeysManager")
end)

RegisterNetEvent("qb-limeysjob:LimeysAlarm", function()
        TriggerServerEvent('police:server:policeAlert', 'Emergency Button went off at Limeys!')
        QBCore.Functions.Notify("Police will be there soon!", "success")
        print "police alert successful"
end)
-- Till Stuff --
RegisterNetEvent("qb-limeysjob:bill")
AddEventHandler("qb-limeysjob:bill", function()

    local input = lib.inputDialog("Create Invoice", {
        { 
            type = "number", 
            label = "Player ID (#)",
            description = "The numerical ID of the player you want to bill. You may need to ask them for this.",
            required = true 
        },
        {
            type = "number",
            label = "Price to Bill",
            description = "The amount of money to charge the other player.",
            required = true
        }
    })

    if not input then return end

    if input[1] == nil or input[2] == nil then 
        return 
    end
    
    TriggerServerEvent("qb-limeysjob:bill:player", input[1], input[2])
end)
