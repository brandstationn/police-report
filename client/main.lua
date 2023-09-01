RegisterNUICallback("submit", function(data)
    TriggerServerEvent("brandstation:reportlogs", data)
end)