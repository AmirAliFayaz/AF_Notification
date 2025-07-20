local function ShowNotification(message, type)
    SendNUIMessage({
        type = "notification",
        message = message,
        notifyType = type
    })
end

-- Export the function to be used by other resources
exports('ShowNotification', ShowNotification)

-- Event handler for server-triggered notifications
RegisterNetEvent('AF_Notification:Show')
AddEventHandler('AF_Notification:Show', function(message, type)
    ShowNotification(message, type)
end)

-- Client command to test notifications
RegisterCommand('testnotify', function(source, args, rawCommand)
    local type = args[1] or 'info'
    
    local validTypes = {
        success = true,
        error = true,
        info = true,
        debug = true
    }
    
    if not validTypes[type] then
        ShowNotification('Invalid notification type. Use: success, error, info, or debug', 'error')
        return
    end
    
    ShowNotification('Test Notification', type)
end)

-- Add suggestion for the command
TriggerEvent('chat:addSuggestion', '/testnotify', 'Test notification system', {
    { name = 'type', help = 'Notification type (success, error, info, debug)' },
    { name = 'message', help = 'Message to display' }
})

-- Example usage:
-- exports['AF_Notification']:ShowNotification('Hello World', 'success')
-- TriggerEvent('AF_Notification:Show', 'Hello World', 'success')

-- Available types: 'success', 'error', 'info', 'debug' 