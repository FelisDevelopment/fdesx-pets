local ESX = exports.es_extended:getSharedObject()

Data = {
    item = nil,
    checksThread = false
}

-- Functions
Reset = function()
    Data.checksThread = false
    Data.item = nil
end

MultipleChecksThread = function()
    Data.checksThread = true

    Citizen.CreateThread(function()
        while Data.checksThread do
            Wait(2000)

            -- Check if player is dead, is inlaststand, handcuffed or menu, if so, forcefully close menu
            local PlayerData = ESX.GetPlayerData()
            local ped = PlayerPedId()

            if PlayerData.dead or IsPedRagdoll(ped) or IsPedFalling(ped) then
                exports['fd-pets']:ForceCloseMenu()
            end

            -- Check if player still has item
            ESX.TriggerServerCallback("fdesx-pets:HasPet", function(hasItem)
                if not hasItem then
                    exports['fd-pets']:SpawnPet('recall')
                    Reset()
                end
            end, Data.item)
        end
    end)
end

-- Overrides
exports['fd-pets']:OverrideMethod("OnTryingToSpawnPet", function(pet, config)
    local retval = nil

    ESX.TriggerServerCallback("fdesx-pets:HasPet", function(hasItem)
        if hasItem then
            retval = true
        else
            retval = false
        end
    end, pet)

    while retval == nil do
        Wait(0)
    end

    return retval
end)

exports['fd-pets']:OverrideMethod("OnStartingAction", function(action, netId, config)
    -- Something something
end)

exports['fd-pets']:OverrideMethod("OnOpeningMenu", function(config, selected)
    local PlayerData = ESX.GetPlayerData()
    local ped = PlayerPedId()

    if not PlayerData.dead and not IsPedRagdoll(oed) and not IsPedFalling(oed) then
        return true
    end

    return false
end)

exports['fd-pets']:OverrideMethod("Notification", function(text, notifType)
    ESX.ShowNotification(text)
end)

exports['fd-pets']:OverrideMethod("OnFinishingPetSetup", function(netId, config, pet)
    Data.item = pet
    MultipleChecksThread()
end)

-- Events
RegisterNetEvent("fdesx-pets:client:endThread", function()
    Reset()
end)
