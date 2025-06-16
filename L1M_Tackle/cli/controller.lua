RegisterCommand("TacklePlayer", function()
   TacklePlayer()
end,false)

function TacklePlayer()
    local players = GetActivePlayers()
    local closestPlayer = -1
    local closestDistance = Config.Tacklerange

    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply)

    for _, playerId in ipairs(players) do
        local targetPed = GetPlayerPed(playerId)
        if targetPed ~= ply then
            local targetCoords = GetEntityCoords(targetPed)
            local dist = #(plyCoords - targetCoords)
            if dist < closestDistance then
                closestPlayer = playerId
                closestDistance = dist
            end
        end
    end

    if closestPlayer ~= -1 then
        local coords = GetEntityCoords(GetPlayerPed(closestPlayer))
            local nwplid = closestPlayer
            print(nwplid)
                local serverId = GetPlayerServerId(closestPlayer)
                local serverId2 = ply
                print(serverId2)
        TriggerServerEvent("tackle", serverId,serverId2)
    end

    return closestPlayer, closestDistance
end

RegisterKeyMapping("TacklePlayer", "Tackle", "keyboard", "H")