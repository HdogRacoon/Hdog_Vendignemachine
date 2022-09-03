ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--------- coffee shit --------

ESX.RegisterServerCallback('Hdog:checkmoney:coffee', function(source,cb, money) 
    local xPlayer = ESX.GetPlayerFromId(source)
    
    local money = xPlayer.getMoney(3)
	
	if money ~= nil then  
        if money >= 3 then
            cb(true)
        else
            cb(false)
        end
	end
end)


RegisterServerEvent('Hdog:Buy:coffee')
AddEventHandler('Hdog:Buy:coffee', function(item,count,money)
    local user = source
    local xPlayer = ESX.GetPlayerFromId(user)

    if xPlayer then
        xPlayer.addInventoryItem(item, count)
        xPlayer.removeMoney(money)
    end
end) 


------------------------------ end coffee shit -------------------------------------------


---------------------------------- coca shit -----------------------------------------

ESX.RegisterServerCallback('Hdog:checkmoney:coca', function(source,cb, money) 
    local xPlayer = ESX.GetPlayerFromId(source)
    
    local money = xPlayer.getMoney(3)
	
	if money ~= nil then  
        if money >= 3 then
            cb(true)
        else
            cb(false)
        end
	end
end)


RegisterServerEvent('Hdog:Buy:coca')
AddEventHandler('Hdog:Buy:coca', function(item,count,money)
    local user = source
    local xPlayer = ESX.GetPlayerFromId(user)

    if xPlayer then
        xPlayer.addInventoryItem(item, count)
        xPlayer.removeMoney(money)
    end
end) 


------------------------ end coca shit --------------------------------------



---------------------------------- sprite shit -----------------------------------------

ESX.RegisterServerCallback('Hdog:checkmoney:sprite', function(source,cb, money) 
    local xPlayer = ESX.GetPlayerFromId(source)
    
    local money = xPlayer.getMoney(3)
	
	if money ~= nil then  
        if money >= 3 then
            cb(true)
        else
            cb(false)
        end
	end
end)


RegisterServerEvent('Hdog:Buy:sprite')
AddEventHandler('Hdog:Buy:sprite', function(item,count,money)
    local user = source
    local xPlayer = ESX.GetPlayerFromId(user)

    if xPlayer then
        xPlayer.addInventoryItem(item, count)
        xPlayer.removeMoney(money)
    end
end) 


------------------------ end coca shit --------------------------------------


---------------------------- candy box shit ---------------------------------

ESX.RegisterServerCallback('Hdog:checkmoney:lays', function(source,cb, money) 
    local xPlayer = ESX.GetPlayerFromId(source)
    
    local money = xPlayer.getMoney(3)
	
	if money ~= nil then  
        if money >= 3 then
            cb(true)
        else
            cb(false)
        end
	end
end)


RegisterServerEvent('Hdog:Buy:lays')
AddEventHandler('Hdog:Buy:lays', function(item,count,money)
    local user = source
    local xPlayer = ESX.GetPlayerFromId(user)

    if xPlayer then
        xPlayer.addInventoryItem(item, count)
        xPlayer.removeMoney(money)
    end
end) 


ESX.RegisterServerCallback('Hdog:checkmoney:caramilk', function(source,cb, money) 
    local xPlayer = ESX.GetPlayerFromId(source)
    
    local money = xPlayer.getMoney(3)
	
	if money ~= nil then  
        if money >= 3 then
            cb(true)
        else
            cb(false)
        end
	end
end)


RegisterServerEvent('Hdog:Buy:caramilk')
AddEventHandler('Hdog:Buy:caramilk', function(item,count,money)
    local user = source
    local xPlayer = ESX.GetPlayerFromId(user)

    if xPlayer then
        xPlayer.addInventoryItem(item, count)
        xPlayer.removeMoney(money)
    end
end) 


ESX.RegisterServerCallback('Hdog:checkmoney:ruffles', function(source,cb, money) 
    local xPlayer = ESX.GetPlayerFromId(source)
    
    local money = xPlayer.getMoney(3)
	
	if money ~= nil then  
        if money >= 3 then
            cb(true)
        else
            cb(false)
        end
	end
end)


RegisterServerEvent('Hdog:Buy:ruffles')
AddEventHandler('Hdog:Buy:ruffles', function(item,count,money)
    local user = source
    local xPlayer = ESX.GetPlayerFromId(user)

    if xPlayer then
        xPlayer.addInventoryItem(item, count)
        xPlayer.removeMoney(money)
    end
end) 


ESX.RegisterServerCallback('Hdog:checkmoney:smarties', function(source,cb, money) 
    local xPlayer = ESX.GetPlayerFromId(source)
    
    local money = xPlayer.getMoney(3)
	
	if money ~= nil then  
        if money >= 3 then
            cb(true)
        else
            cb(false)
        end
	end
end)


RegisterServerEvent('Hdog:Buy:smarties')
AddEventHandler('Hdog:Buy:smarties', function(item,count,money)
    local user = source
    local xPlayer = ESX.GetPlayerFromId(user)

    if xPlayer then
        xPlayer.addInventoryItem(item, count)
        xPlayer.removeMoney(money)
    end
end) 