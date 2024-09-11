local ESX = exports['es_extended']:getSharedObject()
isLoggedIn = false
local onDuty = true
PlayerJob = {}

local function SendNotify(msg,type,time,title)
    if not title then title = "Limeys" end
    if not time then time = 5000 end
    if not type then type = 'success' end
    if not msg then print("Notification Sent With No Message.") return end
    lib.notify({ title = title, description = msg, type = type, duration = time})
end


function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
    Limeys = AddBlipForCoord(249.1, -1027.36, 28.28)
    SetBlipSprite (Limeys, 93)
    SetBlipDisplay(Limeys, 4)
    SetBlipScale  (Limeys, 0.7)
    SetBlipAsShortRange(Limeys, true)
    SetBlipColour(Limeys, 46)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Limey's")
    EndTextCommandSetBlipName(Limeys)
end) 

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
   PlayerJob = xPlayer.job
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
   PlayerJob = job
end)


-----Restaurant Stuff

RegisterNetEvent("qb-limeysjob:Tray1")
AddEventHandler("qb-limeysjob:Tray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "LimeysTray1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "LimeysTray1", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-limeysjob:Tray2")
AddEventHandler("qb-limeysjob:Tray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "LimeysTray2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "LimeysTray2", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-limeysjob:Cabinet1")
AddEventHandler("qb-limeysjob:Cabinet1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "limeyscabinet1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "limeyscabinet1", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-limeysjob:Cabinet2")
AddEventHandler("qb-limeysjob:Cabinet2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "limeyscabinet2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "limeyscabinet2", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-limeysjob:Cabinet3")
AddEventHandler("qb-limeysjob:Cabinet3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "limeyscabinet3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "limeyscabinet3", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-limeysjob:Fridge")
AddEventHandler("qb-limeysjob:Fridge", function()
    TriggerEvent("inventory:client:SetCurrentStash", "fridge")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "fridge", {
        maxweight = 250000,
        slots = 40,
    })
end)

function LockInventory(toggle) -- big up to jim for how to do this
	if toggle then
        LocalPlayer.state:set("inv_busy", true, true) -- used by qb, ps and ox
    else 
        LocalPlayer.state:set("inv_busy", false, true) -- used by qb, ps and ox
	end
end

function prepareCocktail(name)
	local success = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy'}, {'e'})
	if success then
		busy = true
		LockInventory(true)
		FreezeEntityPosition(PlayerPedId(), true)
		if lib.progressCircle({ duration = 4000, label = 'Preparing '..name..' Cocktail', position = 'bottom', useWhileDead = false, canCancel = true, disable = { car = true, }, anim = { dict = "mp_common", clip = "givetake1_a", flag = 8}}) then
			busy = false
			LockInventory(false)
			ClearPedTasks(PlayerPedId())
			TriggerServerEvent('qb-limeysjob:server:'..name..'Cocktail')
			SendNotify("Cocktail prepared!", 'success', 2000)
			FreezeEntityPosition(PlayerPedId(), false)
		else 
			busy = false
			LockInventory(false)
			ClearPedTasks(PlayerPedId())
			SendNotify('Action cancelled.', 'error', 2000)
			FreezeEntityPosition(PlayerPedId(), false)
		end
	else
		SendNotify("Action failed.", 'error', 2000)
	end
end

function PrepareDrink(name)
	local success = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy'}, {'e'})
	if success then
		busy = true
		LockInventory(true)
		FreezeEntityPosition(PlayerPedId(), true)
		if lib.progressCircle({ duration = 4000, label = 'Preparing '..name..' Drink', position = 'bottom', useWhileDead = false, canCancel = true, disable = { car = true, }, anim = { dict = "mp_common", clip = "givetake1_a", flag = 8}}) then
			busy = false
			LockInventory(false)
			ClearPedTasks(PlayerPedId())
			TriggerServerEvent('qb-limeysjob:server:'..name..'Drink')
			SendNotify("Cocktail prepared!", 'success', 2000)
			FreezeEntityPosition(PlayerPedId(), false)
		else 
			busy = false
			LockInventory(false)
			ClearPedTasks(PlayerPedId())
			SendNotify('Action cancelled.', 'error', 2000)
			FreezeEntityPosition(PlayerPedId(), false)
		end
	else
		SendNotify("Action failed.", 'error', 2000)
	end
end



---drinks menu--------------------
RegisterNetEvent("qb-limeysjob:CherryCocktail")
AddEventHandler("qb-limeysjob:CherryCocktail", function()
    ESX.TriggerServerCallback('qb-limeysjob:server:get:ingredientcherrycocktail', function(HasItems)  
    		if HasItems then
				prepareCocktail('Cherry')
			end
	end)
end)
RegisterNetEvent("qb-limeysjob:AppleCocktail")
AddEventHandler("qb-limeysjob:AppleCocktail", function()
    ESX.TriggerServerCallback('qb-limeysjob:server:get:ingredientapplecocktail', function(HasItems)  
		if HasItems then
			prepareCocktail('Apple')
		end	
	end)
end)
RegisterNetEvent("qb-limeysjob:BananaCocktail")
AddEventHandler("qb-limeysjob:BananaCocktail", function()
    ESX.TriggerServerCallback('qb-limeysjob:server:get:ingredientbananacocktail', function(HasItems)  
		if HasItems then
			prepareCocktail('Banana')
		end
	end)
end)
RegisterNetEvent("qb-limeysjob:KiwiCocktail")
AddEventHandler("qb-limeysjob:KiwiCocktail", function()
    ESX.TriggerServerCallback('qb-limeysjob:server:get:ingredientkiwicocktail', function(HasItems)  
		if HasItems then
			prepareCocktail('Kiwi')
		end
	end)
end)
RegisterNetEvent("qb-limeysjob:ParadiseCocktail")
AddEventHandler("qb-limeysjob:ParadiseCocktail", function()
    ESX.TriggerServerCallback('qb-limeysjob:server:get:ingredientparadisecocktail', function(HasItems)  
		if HasItems then
			prepareCocktail('Paradise')
		end
	end)
end)


RegisterNetEvent("qb-limeysjob:CherryDrink")
AddEventHandler("qb-limeysjob:CherryDrink", function()
    ESX.TriggerServerCallback('qb-limeysjob:server:get:ingredientcherrydrink', function(HasItems)  
		if HasItems then
			prepareDrink('Cherry')
		end
	end)
end)
RegisterNetEvent("qb-limeysjob:LemonDrink")
AddEventHandler("qb-limeysjob:LemonDrink", function()
    ESX.TriggerServerCallback('qb-limeysjob:server:get:ingredientlemondrink', function(HasItems)  
		if HasItems then
			prepareDrink('Lemon')
		end
	end)
end)
RegisterNetEvent("qb-limeysjob:LimeDrink")
AddEventHandler("qb-limeysjob:LimeDrink", function()
    ESX.TriggerServerCallback('qb-limeysjob:server:get:ingredientlimedrink', function(HasItems)  
		if HasItems then
			prepareDrink('Lime')
		end
	end)
end)
RegisterNetEvent("qb-limeysjob:OrangeDrink")
AddEventHandler("qb-limeysjob:OrangeDrink", function()
    ESX.TriggerServerCallback('qb-limeysjob:server:get:ingredientorangedrink', function(HasItems)  
		if HasItems then
			prepareDrink('Orange')
		end
	end)
end)
RegisterNetEvent("qb-limeysjob:WatermelonDrink")
AddEventHandler("qb-limeysjob:WatermelonDrink", function()
    ESX.TriggerServerCallback('qb-limeysjob:server:get:ingredientwatermelondrink', function(HasItems)  
		if HasItems then
			prepareDrink('Watermelon')
		end
	end)
end)


RegisterNetEvent('qb-limeysjob:WatermelonSlice', function()
	lib.progressCircle({ duration = 4000, label = 'Preparing '..name..' Drink', position = 'bottom', useWhileDead = false, canCancel = true, disable = { car = true, }, anim = { dict = "anim@gangops@facility@servers@", clip = "idle", flag = 16}})
	SendNotify('You sliced the watermelon', 'success', 2000)
    ClearPedTasks(PlayerPedId())
end)



RegisterNetEvent("qb-limeysjob:shop")
AddEventHandler("qb-limeysjob:shop", function()
	if Config.Inventory == 'qb' then
        TriggerServerEvent("inventory:server:OpenInventory", "shop", "limeys", Config.Items)
	elseif Config.Inventory == 'ox' then
		exports.ox_inventory:openInventory('shop', Config.OxItems)
	end
end)

RegisterNetEvent("qb-limeysjob:candyshop")
AddEventHandler("qb-limeysjob:candyshop", function()
	if Config.Inventory == 'qb' then
        TriggerServerEvent("inventory:server:OpenInventory", "shop", "limeyscandy", Config.CandyItems)
	elseif Config.Inventory == 'ox' then
		exports.ox_inventory:openInventory('shop', Config.OxCandyItems)
	end
end)

RegisterNetEvent("qb-limeysjob:donutshop")
AddEventHandler("qb-limeysjob:donutshop", function()
    if Config.Inventory == 'qb' then
        TriggerServerEvent("inventory:server:OpenInventory", "shop", "limeyscandy", Config.DonutItems)
	elseif Config.Inventory == 'ox' then
		exports.ox_inventory:openInventory('shop', Config.OxDonutItems)
	end
end)
