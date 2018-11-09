-- DO NOT CHANGE ANY OF THIS CODE! IF SOMETHING DOESNT WORK CONTACT @lukepollie ON THE FIVEM FORUMS!!!
-- DO NOT CHANGE ANY OF THIS CODE! IF SOMETHING DOESNT WORK CONTACT @lukepollie ON THE FIVEM FORUMS!!!
-- DO NOT CHANGE ANY OF THIS CODE! IF SOMETHING DOESNT WORK CONTACT @lukepollie ON THE FIVEM FORUMS!!!
-- DO NOT CHANGE ANY OF THIS CODE! IF SOMETHING DOESNT WORK CONTACT @lukepollie ON THE FIVEM FORUMS!!!

RegisterCommand('Onduty', function(source, args, user)
    local name = GetPlayerName(source)
    TriggerClientEvent("proxOnduty", -1, source, name)
end, false)

RegisterCommand('Offduty', function(source, args, user)
    local name = GetPlayerName(source)
    TriggerClientEvent("proxOffduty", -1, source, name)
end, false)