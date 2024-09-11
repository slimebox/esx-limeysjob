local ESX = exports['es_extended']:getSharedObject()


RegisterServerEvent("qb-limeysjob:bill:player")
AddEventHandler("qb-limeysjob:bill:player", function(playerId, amount)
    TriggerEvent("esx_billing:sendBill", playerId, nil, "Limeys Cocktail Bar", amount)
end)

----DRINKS------------------------------------------------

cocktailItems = { "cherrycocktail", "applecocktail", "bananacocktail", "kiwicocktail", "paradisecocktail"}
drinkItems = { "cherrydrink", "watermelondrink", "lemondrink", "limedrink", "orangedrink"}
foodItems = { "limeysgum", "limeyschocolate", "limeyschocolate2", "limeysdonut", "limeysdonut2"}

for k in pairs(cocktailItems) do
    ESX.RegisterUsableItem(k, function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(k, 1)
        TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
        TriggerClientEvent('esx_status:add', source, 'drunk', 220000)
        TriggerClientEvent('esx_basicneeds:onDrink', source)
        TriggerClientEvent('esx:showNotification', source, _U('used_drink'))
    end)
end


for k in pairs(drinkItems) do
    ESX.RegisterUsableItem(k, function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(k, 1)
        TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
        TriggerClientEvent('esx_basicneeds:onDrink', source)
        TriggerClientEvent('esx:showNotification', source, _U('used_drink'))
    end)
end


for k in pairs(strongFoodItems) do
    ESX.RegisterUsableItem(k, function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(k, 1)
        TriggerClientEvent('esx_status:add', source, 'hunger', 220000)
        TriggerClientEvent('esx_basicneeds:onDrink', source)
        TriggerClientEvent('esx:showNotification', source, _U('used_food'))
    end)
end



ESX.RegisterServerCallback('qb-limeysjob:server:get:ingredientcherrydrink', function(source, cb)
    local src = source
    local cherry = exports.ox_inventory:GetItemCount(src, "cherry") > 0
    local glass = exports.ox_inventory:GetItemCount(src, "drink-glass") > 0
    if cherry and glass then
        cb(true)
    else
        cb(false)
    end
end)
ESX.RegisterServerCallback('qb-limeysjob:server:get:ingredientlemondrink', function(source, cb)
    local src = source
    local lemon = exports.ox_inventory:GetItemCount(src, "lemon") > 0
    local glass = exports.ox_inventory:GetItemCount(src, "drink-glass") > 0
    if lemon and glass then
        cb(true)
    else
        cb(false)
    end
end)
ESX.RegisterServerCallback('qb-limeysjob:server:get:ingredientlimedrink', function(source, cb)
    local src = source
    local lime = exports.ox_inventory:GetItemCount(src, "lime") > 0
    local glass = exports.ox_inventory:GetItemCount(src, "drink-glass") > 0
    if lime and glass then
        cb(true)
    else
        cb(false)
    end
end)
ESX.RegisterServerCallback('qb-limeysjob:server:get:ingredientorangedrink', function(source, cb)
    local src = source
    local watermelon = exports.ox_inventory:GetItemCount(src, "orange") > 0
    local glass = exports.ox_inventory:GetItemCount(src, "drink-glass") > 0
    if watermelon and glass then
        cb(true)
    else
        cb(false)
    end
end)
ESX.RegisterServerCallback('qb-limeysjob:server:get:ingredientwatermelondrink', function(source, cb)
    local src = source
    local watermelon = exports.ox_inventory:GetItemCount(src, "watermelon") > 0
    local glass = exports.ox_inventory:GetItemCount(src, "drink-glass") > 0
    if watermelon and glass then
        cb(true)
    else
        cb(false)
    end
end)



-----COCKTAIL----------------------------------------------------

ESX.RegisterServerCallback('qb-limeysjob:server:get:ingredientapplecocktail', function(source, cb)
    local src = source
    local glass = exports.ox_inventory:GetItemCount(src, "cocktailglass") > 0
    local apple = exports.ox_inventory:GetItemCount(src, "apple") > 0
    local whiskey = exports.ox_inventory:GetItemCount(src, "whiskey") > 0
    if glass and apple and whiskey then
        cb(true)
    else
        cb(false)
    end
end)
ESX.RegisterServerCallback('qb-limeysjob:server:get:ingredientbananacocktail', function(source, cb)
    local src = source
    local glass = exports.ox_inventory:GetItemCount(src, "cocktailglass") > 0
    local banana = exports.ox_inventory:GetItemCount(src, "banana") > 0
    local whiskey = exports.ox_inventory:GetItemCount(src, "whiskey") > 0
    if glass and banana and whiskey then
        cb(true)
    else
        cb(false)
    end
end)
ESX.RegisterServerCallback('qb-limeysjob:server:get:ingredientcherrycocktail', function(source, cb)
    local src = source
    local glass = exports.ox_inventory:GetItemCount(src, "cocktailglass") > 0
    local cherry = exports.ox_inventory:GetItemCount(src, "cherry") > 0
    local whiskey = exports.ox_inventory:GetItemCount(src, "whiskey") > 0
    if glass and cherry and whiskey then
        cb(true)
    else
        cb(false)
    end
end)
ESX.RegisterServerCallback('qb-limeysjob:server:get:ingredientkiwicocktail', function(source, cb)
    local src = source
    local glass = exports.ox_inventory:GetItemCount(src, "cocktailglass") > 0
    local kiwi = exports.ox_inventory:GetItemCount(src, "kiwi") > 0
    local whiskey = exports.ox_inventory:GetItemCount(src, "whiskey") > 0
    if glass and kiwi and whiskey then
        cb(true)
    else
        cb(false)
    end
end)
ESX.RegisterServerCallback('qb-limeysjob:server:get:ingredientparadisecocktail', function(source, cb)
    local src = source
    local glass = exports.ox_inventory:GetItemCount(src, "cocktailglass")
    local apple = exports.ox_inventory:GetItemCount(src, "apple")
    local cherry = exports.ox_inventory:GetItemCount(src, "cherry")
    local kiwi = exports.ox_inventory:GetItemCount(src, "kiwi")
    local banana = exports.ox_inventory:GetItemCount(src, "banana")
    local watermelon = exports.ox_inventory:GetItemCount(src, "watermelon")
    local orange = exports.ox_inventory:GetItemCount(src, "orange")
    local lemon = exports.ox_inventory:GetItemCount(src, "lemon")
    local lime = exports.ox_inventory:GetItemCount(src, "lime")
    local whiskey = exports.ox_inventory:GetItemCount(src, "whiskey")
    if glass and cherry and apple and kiwi and banana and watermelon and orange and lemon and lime then
        cb(true)
    else
        cb(false)
    end
end)

-- ITEM ADD/REMOVE FUNCTIONS

RegisterNetEvent('qb-limeysjob:server:CherryCocktail', function()
    local src = source
    exports.ox_inventory:RemoveItem(src, 'cocktailglass', 1)
    exports.ox_inventory:RemoveItem(src, 'whiskey', 1)
    exports.ox_inventory:RemoveItem(src, 'cherry', 1)
    exports.ox_inventory:AddItem(src, 'cherrycocktail', 1)
end)
RegisterNetEvent('qb-limeysjob:server:AppleCocktail', function()
    local src = source
    exports.ox_inventory:RemoveItem(src, 'cocktailglass', 1)
    exports.ox_inventory:RemoveItem(src, 'whiskey', 1)
    exports.ox_inventory:RemoveItem(src, 'apple', 1)
    exports.ox_inventory:AddItem(src, 'applecocktail', 1)
end)
RegisterNetEvent('qb-limeysjob:server:BananaCocktail', function()
    local src = source
    exports.ox_inventory:RemoveItem(src, 'cocktailglass', 1)
    exports.ox_inventory:RemoveItem(src, 'whiskey', 1)
    exports.ox_inventory:RemoveItem(src, 'banana', 1)
    exports.ox_inventory:AddItem(src, 'bananacocktail', 1)
end)
RegisterNetEvent('qb-limeysjob:server:KiwiCocktail', function()
    local src = source
    exports.ox_inventory:RemoveItem(src, 'cocktailglass', 1)
    exports.ox_inventory:RemoveItem(src, 'whiskey', 1)
    exports.ox_inventory:RemoveItem(src, 'kiwi', 1)
    exports.ox_inventory:AddItem(src, 'kiwicocktail', 1)
end)
RegisterNetEvent('qb-limeysjob:server:ParadiseCocktail', function()
    local src = source
    exports.ox_inventory:RemoveItem(src, 'cocktailglass', 1)
    exports.ox_inventory:RemoveItem(src, 'apple', 1)
    exports.ox_inventory:RemoveItem(src, 'cherry', 1)
    exports.ox_inventory:RemoveItem(src, 'kiwi', 1)
    exports.ox_inventory:RemoveItem(src, 'banana', 1)
    exports.ox_inventory:RemoveItem(src, 'watermelonslice', 1)
    exports.ox_inventory:RemoveItem(src, 'orange', 1)
    exports.ox_inventory:RemoveItem(src, 'lemon', 1)
    exports.ox_inventory:RemoveItem(src, 'lime', 1)
    exports.ox_inventory:RemoveItem(src, 'whiskey', 1)
    exports.ox_inventory:AddItem(src, 'paradisecocktail', 1)
end)
RegisterNetEvent('qb-limeysjob:server:CherryDrink', function()
    local src = source
    exports.ox_inventory:RemoveItem(src, 'drink-glass', 1)
    exports.ox_inventory:RemoveItem(src, 'cherry', 1)
    exports.ox_inventory:AddItem(src, 'cherrydrink', 1)
end)
RegisterNetEvent('qb-limeysjob:server:LemonDrink', function()
    local src = source
    exports.ox_inventory:RemoveItem(src, 'drink-glass', 1)
    exports.ox_inventory:RemoveItem(src, 'lemon', 1)
    exports.ox_inventory:AddItem(src, 'lemondrink', 1)
end)
RegisterNetEvent('qb-limeysjob:server:LimeDrink', function()
    local src = source
    exports.ox_inventory:RemoveItem(src, 'drink-glass', 1)
    exports.ox_inventory:RemoveItem(src, 'lime', 1)
    exports.ox_inventory:AddItem(src, 'limedrink', 1)
end)
RegisterNetEvent('qb-limeysjob:server:OrangeDrink', function()
    local src = source
    exports.ox_inventory:RemoveItem(src, 'drink-glass', 1)
    exports.ox_inventory:RemoveItem(src, 'orange', 1)
    exports.ox_inventory:AddItem(src, 'orangedrink', 1)
end)
RegisterNetEvent('qb-limeysjob:server:CherryDrink', function()
    local src = source
    exports.ox_inventory:RemoveItem(src, 'drink-glass', 1)
    exports.ox_inventory:RemoveItem(src, 'watermelonslice', 1)
    exports.ox_inventory:AddItem(src, 'watermelondrink', 1)
end)
QBCore.Functions.CreateUseableItem('watermelon', function(source)
    exports.ox_inventory:RemoveItem(src, 'watermelon', 1)
    exports.ox_inventory:AddItem(src, 'watermelonslice', math.random(10, 16))
    TriggerEvent('qb-limeysjob:WatermelonSlice')
end)
