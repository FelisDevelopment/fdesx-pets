local ESX = exports.es_extended:getSharedObject()

-- Callbacks
ESX.RegisterServerCallback('fdesx-pets:HasPet', function(source, cb, pet)
    if not pet then return end

    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getInventoryItem(pet).count >= 1 then
      return cb(true)
    end

    return cb(false)
end)

-- Subscribed events
RegisterServerEvent("fd-pets:server:recallPet", function()
    TriggerClientEvent("fdesx-pets:client:endThread", source)
end)

RegisterServerEvent("fd-pets:server:entityDead", function()
    TriggerClientEvent("fdesx-pets:client:endThread", source)
end)

------- Useables
-- Rottweiler
ESX.RegisterUsableItem("rottweiler1", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "rottweiler1")
end)

ESX.RegisterUsableItem("rottweiler2", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "rottweiler2")
end)

ESX.RegisterUsableItem("rottweiler3", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "rottweiler3")
end)

-- Cats
ESX.RegisterUsableItem("cat1", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "cat1")
end)
ESX.RegisterUsableItem("cat2", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "cat2")
end)
ESX.RegisterUsableItem("cat3", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "cat3")
end)

-- Chicken
ESX.RegisterUsableItem("chicken", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "chicken")
end)

-- Husky
ESX.RegisterUsableItem("husky1", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "husky1")
end)
ESX.RegisterUsableItem("husky2", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "husky2")
end)
ESX.RegisterUsableItem("husky3", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "husky3")
end)

-- Mountain Lion
ESX.RegisterUsableItem("mtlion1", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "mtlion1")
end)

-- Panther
ESX.RegisterUsableItem("panther", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "panther")
end)

-- Poodle
ESX.RegisterUsableItem("poodle", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "poodle")
end)

-- Shepherd
ESX.RegisterUsableItem("shepherd1", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "shepherd1")
end)

-- Pug
ESX.RegisterUsableItem("pug1", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "pug1")
end)
ESX.RegisterUsableItem("pug2", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "pug2")
end)
ESX.RegisterUsableItem("pug3", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "pug3")
end)
ESX.RegisterUsableItem("pug4", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "pug4")
end)

-- Retriever
ESX.RegisterUsableItem("retriever1", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "retriever1")
end)
ESX.RegisterUsableItem("retriever2", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "retriever2")
end)
ESX.RegisterUsableItem("retriever3", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "retriever3")
end)
ESX.RegisterUsableItem("retriever4", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "retriever4")
end)

-- Westy
ESX.RegisterUsableItem("westy1", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "westy1")
end)
ESX.RegisterUsableItem("westy2", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "westy2")
end)
ESX.RegisterUsableItem("westy3", function(source)
    TriggerClientEvent("fd-pets:actions:spawnpet", source, "westy3")
end)
