-- Function to send notification to a specific player
function SendNotificationToPlayer(playerId, message, type)
    TriggerClientEvent('AF_Notification:Show', playerId, message, type)
end

-- Function to send notification to all players
function SendNotificationToAll(message, type)
    TriggerClientEvent('AF_Notification:Show', -1, message, type)
end

-- Export the functions to be used by other resources
exports('SendNotificationToPlayer', SendNotificationToPlayer)
exports('SendNotificationToAll', SendNotificationToAll)

-- Event handlers for other resources to trigger notifications
RegisterServerEvent('AF_Notification:SendToPlayer')
AddEventHandler('AF_Notification:SendToPlayer', function(playerId, message, type)
    SendNotificationToPlayer(playerId, message, type)
end)

RegisterServerEvent('AF_Notification:SendToAll')
AddEventHandler('AF_Notification:SendToAll', function(message, type)
    SendNotificationToAll(message, type)
end)

-- Example usage:
-- exports['AF_Notification']:SendNotificationToPlayer(1, 'Hello Player 1', 'success')
-- exports['AF_Notification']:SendNotificationToAll('Server Announcement', 'info')
-- TriggerEvent('AF_Notification:SendToPlayer', 1, 'Hello Player 1', 'success')
-- TriggerEvent('AF_Notification:SendToAll', 'Server Announcement', 'info') 