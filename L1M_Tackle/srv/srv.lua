RegisterNetEvent("tackle", function(targetId,ply)
        local src = source
    if not targetId then return end
        SetPedToRagdoll(targetId, 3000, 3000, 0, true, true, false)
        Wait(20)
        SetPedToRagdoll(src, 3000, 3000, 0, true, true, false)
end)
