ESX              = nil
local PlayerData = {}

local playerPed		= GetPlayerPed(-1)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


------- start coffee ---------

Citizen.CreateThread(function()

    Citizen.CreateThread(function()
        local coffee = {
            `prop_vend_coffe_01`
        }
    
        exports['bt-target']:AddTargetModel(coffee, {
            options = {
                {
                    event = 'Hdog:buycoffee:progress',
                    icon = 'fas fa-coffee',
                    label = "Acheter un café"
                },
            },
            job = {'all'},
            distance = 2.5
        })
    end)

end)



RegisterNetEvent('Hdog:buycoffee:progress')
AddEventHandler('Hdog:buycoffee:progress', function(cb)
   
	ESX.TriggerServerCallback('Hdog:checkmoney:coffee', function(cb)
		if cb then
			exports.rprogress:Custom({
				Async = true,
				canCancel = true,       -- Allow cancelling
				cancelKey = 178,        -- Custom cancel key
				x = 0.5,                -- Position on x-axis
				y = 0.5,                -- Position on y-axis
				From = 0,               -- Percentage to start from
				To = 100,               -- Percentage to end
				Duration = 10000,        -- Duration of the progress
				Radius = 60,            -- Radius of the dial
				Stroke = 10,            -- Thickness of the progress dial
				Cap = 'butt',           -- or 'round'
				Padding = 0,            -- Padding between the progress dial and the background dial
				MaxAngle = 360,         -- Maximum sweep angle of the dial in degrees
				Rotation = 0,           -- 2D rotation of the dial in degrees
				Width = 300,            -- Width of bar in px if Type = 'linear'
				Height = 40,            -- Height of bar in px if Type = 'linear'
				ShowTimer = true,       -- Shows the timer countdown within the radial dial
				ShowProgress = false,   -- Shows the progress % within the radial dial    
				Easing = "easeLinear",
				Label = "Vous faite votre café",
				LabelPosition = "bottom",
				Color = "rgba(255, 255, 255, 1.0)",
				BGColor = "rgba(0, 0, 0, 0.4)",
				ZoneColor = "rgba(51, 105, 30, 1)",
				Animation = {
					scenario = "WORLD_HUMAN_AA_COFFEE", -- https://pastebin.com/6mrYTdQv
					animationDictionary = "missheistfbisetup1", -- https://alexguirre.github.io/animations-list/
					animationName = "unlock_loop_janitor",
				},
				DisableControls = {
					Mouse = false,
					Player = true,
					Vehicle = true
				},    
				onStart = function()

				end,
				onComplete = function(cancelled)
                  TriggerServerEvent('Hdog:Buy:coffee', 'coffee', 1,3)
				end
			})
                 
        
	    else
			exports['mythic_notify']:SendAlert('inform', 'Il vous manque 3$')
	    end	

	end)
   

end)


-------- end coffee ---------


--------- start coca --------


Citizen.CreateThread(function()

    Citizen.CreateThread(function()
        local cola = {
            `prop_vend_soda_01`
        }
    
        exports['bt-target']:AddTargetModel(cola, {
            options = {
                {
                    event = 'Hdog:buycoca:progress',
                    icon = 'fas fa-credit-card',
                    label = "Acheter un Coca-cola"
                },
            },
            job = {'all'},
            distance = 2.5
        })
    end)

end)


RegisterNetEvent('Hdog:buycoca:progress')
AddEventHandler('Hdog:buycoca:progress', function(cb)
   
	ESX.TriggerServerCallback('Hdog:checkmoney:coca', function(cb)
		if cb then
			exports.rprogress:Custom({
				Async = true,
				canCancel = true,       -- Allow cancelling
				cancelKey = 178,        -- Custom cancel key
				x = 0.5,                -- Position on x-axis
				y = 0.5,                -- Position on y-axis
				From = 0,               -- Percentage to start from
				To = 100,               -- Percentage to end
				Duration = 7000,        -- Duration of the progress
				Radius = 60,            -- Radius of the dial
				Stroke = 10,            -- Thickness of the progress dial
				Cap = 'butt',           -- or 'round'
				Padding = 0,            -- Padding between the progress dial and the background dial
				MaxAngle = 360,         -- Maximum sweep angle of the dial in degrees
				Rotation = 0,           -- 2D rotation of the dial in degrees
				Width = 300,            -- Width of bar in px if Type = 'linear'
				Height = 40,            -- Height of bar in px if Type = 'linear'
				ShowTimer = true,       -- Shows the timer countdown within the radial dial
				ShowProgress = false,   -- Shows the progress % within the radial dial    
				Easing = "easeLinear",
				Label = "Vous attendez votre coca-cola",
				LabelPosition = "bottom",
				Color = "rgba(255, 255, 255, 1.0)",
				BGColor = "rgba(0, 0, 0, 0.4)",
				ZoneColor = "rgba(51, 105, 30, 1)",
				Animation = {
					scenario = "WORLD_HUMAN_BUM_STANDING", -- https://pastebin.com/6mrYTdQv
					animationDictionary = "missheistfbisetup1", -- https://alexguirre.github.io/animations-list/
					animationName = "unlock_loop_janitor",
				},
				DisableControls = {
					Mouse = false,
					Player = true,
					Vehicle = true
				},    
				onStart = function()

				end,
				onComplete = function(cancelled)
                  TriggerServerEvent('Hdog:Buy:coca', 'cola', 1,3)
				end
			})
                 
        
	    else
			exports['mythic_notify']:SendAlert('inform', 'Il vous manque 3$')
	    end	

	end)
   

end)

--------------------- end  coca shit --------------------------------




Citizen.CreateThread(function()

    Citizen.CreateThread(function()
        local sprite = {
            `prop_vend_soda_02`
        }
    
        exports['bt-target']:AddTargetModel(sprite, {
            options = {
                {
                    event = 'Hdog:buysprite:progress',
                    icon = 'fas fa-credit-card',
                    label = "Acheter un Sprite"
                },
            },
            job = {'all'},
            distance = 2.5
        })
    end)

end)


RegisterNetEvent('Hdog:buysprite:progress')
AddEventHandler('Hdog:buysprite:progress', function(cb)
   
	ESX.TriggerServerCallback('Hdog:checkmoney:sprite', function(cb)
		if cb then
			exports.rprogress:Custom({
				Async = true,
				canCancel = true,       -- Allow cancelling
				cancelKey = 178,        -- Custom cancel key
				x = 0.5,                -- Position on x-axis
				y = 0.5,                -- Position on y-axis
				From = 0,               -- Percentage to start from
				To = 100,               -- Percentage to end
				Duration = 7000,        -- Duration of the progress
				Radius = 60,            -- Radius of the dial
				Stroke = 10,            -- Thickness of the progress dial
				Cap = 'butt',           -- or 'round'
				Padding = 0,            -- Padding between the progress dial and the background dial
				MaxAngle = 360,         -- Maximum sweep angle of the dial in degrees
				Rotation = 0,           -- 2D rotation of the dial in degrees
				Width = 300,            -- Width of bar in px if Type = 'linear'
				Height = 40,            -- Height of bar in px if Type = 'linear'
				ShowTimer = true,       -- Shows the timer countdown within the radial dial
				ShowProgress = false,   -- Shows the progress % within the radial dial    
				Easing = "easeLinear",
				Label = "Vous attendez votre sprite",
				LabelPosition = "bottom",
				Color = "rgba(255, 255, 255, 1.0)",
				BGColor = "rgba(0, 0, 0, 0.4)",
				ZoneColor = "rgba(51, 105, 30, 1)",
				Animation = {
					scenario = "WORLD_HUMAN_BUM_STANDING", -- https://pastebin.com/6mrYTdQv
					animationDictionary = "missheistfbisetup1", -- https://alexguirre.github.io/animations-list/
					animationName = "unlock_loop_janitor",
				},
				DisableControls = {
					Mouse = false,
					Player = true,
					Vehicle = true
				},    
				onStart = function()

				end,
				onComplete = function(cancelled)
                  TriggerServerEvent('Hdog:Buy:sprite', 'sprite', 1,3)
				end
			})
                 
        
	    else
			exports['mythic_notify']:SendAlert('inform', 'Il vous manque 3$')
	    end	

	end)
   

end)


---------------------- end sprit shit -----------------------------------


----------------------- candy box shit -----------------------------------

Citizen.CreateThread(function()

    Citizen.CreateThread(function()
        local sprite = {
            `prop_vend_snak_01`
        }
    
        exports['bt-target']:AddTargetModel(sprite, {
            options = {
                {
                    event = 'Hdog:buylays:progress',
                    icon = 'fas fa-credit-card',
                    label = "Acheter un sac de Lay's"
                },

				{
                    event = 'Hdog:buyruffles:progress',
                    icon = 'fas fa-credit-card',
                    label = "Acheter un sac de Ruffles"
                },

				{
                    event = 'Hdog:buycaramilk:progress',
                    icon = 'fas fa-credit-card',
                    label = "Acheter une Caramilk"
                },

				{
                    event = 'Hdog:buysmarties:progress',
                    icon = 'fas fa-credit-card',
                    label = "Acheter une boîte de Smarties"
                },

            },
            job = {'all'},
            distance = 2.5
        })
    end)

end)

RegisterNetEvent('Hdog:buylays:progress')
AddEventHandler('Hdog:buylays:progress', function(cb)
   
	ESX.TriggerServerCallback('Hdog:checkmoney:lays', function(cb)
		if cb then
			exports.rprogress:Custom({
				Async = true,
				canCancel = true,       -- Allow cancelling
				cancelKey = 178,        -- Custom cancel key
				x = 0.5,                -- Position on x-axis
				y = 0.5,                -- Position on y-axis
				From = 0,               -- Percentage to start from
				To = 100,               -- Percentage to end
				Duration = 7000,        -- Duration of the progress
				Radius = 60,            -- Radius of the dial
				Stroke = 10,            -- Thickness of the progress dial
				Cap = 'butt',           -- or 'round'
				Padding = 0,            -- Padding between the progress dial and the background dial
				MaxAngle = 360,         -- Maximum sweep angle of the dial in degrees
				Rotation = 0,           -- 2D rotation of the dial in degrees
				Width = 300,            -- Width of bar in px if Type = 'linear'
				Height = 40,            -- Height of bar in px if Type = 'linear'
				ShowTimer = true,       -- Shows the timer countdown within the radial dial
				ShowProgress = false,   -- Shows the progress % within the radial dial    
				Easing = "easeLinear",
				Label = "Vous attendez votre sac de lay's",
				LabelPosition = "bottom",
				Color = "rgba(255, 255, 255, 1.0)",
				BGColor = "rgba(0, 0, 0, 0.4)",
				ZoneColor = "rgba(51, 105, 30, 1)",
				Animation = {
					scenario = "WORLD_HUMAN_BUM_STANDING", -- https://pastebin.com/6mrYTdQv
					animationDictionary = "missheistfbisetup1", -- https://alexguirre.github.io/animations-list/
					animationName = "unlock_loop_janitor",
				},
				DisableControls = {
					Mouse = false,
					Player = true,
					Vehicle = true
				},    
				onStart = function()

				end,
				onComplete = function(cancelled)
                  TriggerServerEvent('Hdog:Buy:lays', 'lays', 1,2)
				end
			})
                 
        
	    else
			exports['mythic_notify']:SendAlert('inform', 'Il vous manque 2$')
	    end	

	end)
   

end)

RegisterNetEvent('Hdog:buycaramilk:progress')
AddEventHandler('Hdog:buycaramilk:progress', function(cb)
   
	ESX.TriggerServerCallback('Hdog:checkmoney:caramilk', function(cb)
		if cb then
			exports.rprogress:Custom({
				Async = true,
				canCancel = true,       -- Allow cancelling
				cancelKey = 178,        -- Custom cancel key
				x = 0.5,                -- Position on x-axis
				y = 0.5,                -- Position on y-axis
				From = 0,               -- Percentage to start from
				To = 100,               -- Percentage to end
				Duration = 7000,        -- Duration of the progress
				Radius = 60,            -- Radius of the dial
				Stroke = 10,            -- Thickness of the progress dial
				Cap = 'butt',           -- or 'round'
				Padding = 0,            -- Padding between the progress dial and the background dial
				MaxAngle = 360,         -- Maximum sweep angle of the dial in degrees
				Rotation = 0,           -- 2D rotation of the dial in degrees
				Width = 300,            -- Width of bar in px if Type = 'linear'
				Height = 40,            -- Height of bar in px if Type = 'linear'
				ShowTimer = true,       -- Shows the timer countdown within the radial dial
				ShowProgress = false,   -- Shows the progress % within the radial dial    
				Easing = "easeLinear",
				Label = "Vous attendez votre caramilk",
				LabelPosition = "bottom",
				Color = "rgba(255, 255, 255, 1.0)",
				BGColor = "rgba(0, 0, 0, 0.4)",
				ZoneColor = "rgba(51, 105, 30, 1)",
				Animation = {
					scenario = "WORLD_HUMAN_BUM_STANDING", -- https://pastebin.com/6mrYTdQv
					animationDictionary = "missheistfbisetup1", -- https://alexguirre.github.io/animations-list/
					animationName = "unlock_loop_janitor",
				},
				DisableControls = {
					Mouse = false,
					Player = true,
					Vehicle = true
				},    
				onStart = function()

				end,
				onComplete = function(cancelled)
                  TriggerServerEvent('Hdog:Buy:caramilk', 'caramilk', 1,2)
				end
			})
                 
        
	    else
			exports['mythic_notify']:SendAlert('inform', 'Il vous manque 2$')
	    end	

	end)
   

end)

RegisterNetEvent('Hdog:buyruffles:progress')
AddEventHandler('Hdog:buyruffles:progress', function(cb)
   
	ESX.TriggerServerCallback('Hdog:checkmoney:ruffles', function(cb)
		if cb then
			exports.rprogress:Custom({
				Async = true,
				canCancel = true,       -- Allow cancelling
				cancelKey = 178,        -- Custom cancel key
				x = 0.5,                -- Position on x-axis
				y = 0.5,                -- Position on y-axis
				From = 0,               -- Percentage to start from
				To = 100,               -- Percentage to end
				Duration = 7000,        -- Duration of the progress
				Radius = 60,            -- Radius of the dial
				Stroke = 10,            -- Thickness of the progress dial
				Cap = 'butt',           -- or 'round'
				Padding = 0,            -- Padding between the progress dial and the background dial
				MaxAngle = 360,         -- Maximum sweep angle of the dial in degrees
				Rotation = 0,           -- 2D rotation of the dial in degrees
				Width = 300,            -- Width of bar in px if Type = 'linear'
				Height = 40,            -- Height of bar in px if Type = 'linear'
				ShowTimer = true,       -- Shows the timer countdown within the radial dial
				ShowProgress = false,   -- Shows the progress % within the radial dial    
				Easing = "easeLinear",
				Label = "Vous attendez votre sac de Ruffles",
				LabelPosition = "bottom",
				Color = "rgba(255, 255, 255, 1.0)",
				BGColor = "rgba(0, 0, 0, 0.4)",
				ZoneColor = "rgba(51, 105, 30, 1)",
				Animation = {
					scenario = "WORLD_HUMAN_BUM_STANDING", -- https://pastebin.com/6mrYTdQv
					animationDictionary = "missheistfbisetup1", -- https://alexguirre.github.io/animations-list/
					animationName = "unlock_loop_janitor",
				},
				DisableControls = {
					Mouse = false,
					Player = true,
					Vehicle = true
				},    
				onStart = function()

				end,
				onComplete = function(cancelled)
                  TriggerServerEvent('Hdog:Buy:ruffles', 'ruffles', 1,2)
				end
			})
                 
        
	    else
			exports['mythic_notify']:SendAlert('inform', 'Il vous manque 2$')
	    end	

	end)
   

end)

RegisterNetEvent('Hdog:buysmarties:progress')
AddEventHandler('Hdog:buysmarties:progress', function(cb)
   
	ESX.TriggerServerCallback('Hdog:checkmoney:smarties', function(cb)
		if cb then
			exports.rprogress:Custom({
				Async = true,
				canCancel = true,       -- Allow cancelling
				cancelKey = 178,        -- Custom cancel key
				x = 0.5,                -- Position on x-axis
				y = 0.5,                -- Position on y-axis
				From = 0,               -- Percentage to start from
				To = 100,               -- Percentage to end
				Duration = 7000,        -- Duration of the progress
				Radius = 60,            -- Radius of the dial
				Stroke = 10,            -- Thickness of the progress dial
				Cap = 'butt',           -- or 'round'
				Padding = 0,            -- Padding between the progress dial and the background dial
				MaxAngle = 360,         -- Maximum sweep angle of the dial in degrees
				Rotation = 0,           -- 2D rotation of the dial in degrees
				Width = 300,            -- Width of bar in px if Type = 'linear'
				Height = 40,            -- Height of bar in px if Type = 'linear'
				ShowTimer = true,       -- Shows the timer countdown within the radial dial
				ShowProgress = false,   -- Shows the progress % within the radial dial    
				Easing = "easeLinear",
				Label = "Vous attendez votre Boîte de Smarties",
				LabelPosition = "bottom",
				Color = "rgba(255, 255, 255, 1.0)",
				BGColor = "rgba(0, 0, 0, 0.4)",
				ZoneColor = "rgba(51, 105, 30, 1)",
				Animation = {
					scenario = "WORLD_HUMAN_BUM_STANDING", -- https://pastebin.com/6mrYTdQv
					animationDictionary = "missheistfbisetup1", -- https://alexguirre.github.io/animations-list/
					animationName = "unlock_loop_janitor",
				},
				DisableControls = {
					Mouse = false,
					Player = true,
					Vehicle = true
				},    
				onStart = function()

				end,
				onComplete = function(cancelled)
                  TriggerServerEvent('Hdog:Buy:smarties', 'smarties', 1,2)
				end
			})
                 
        
	    else
			exports['mythic_notify']:SendAlert('inform', 'Il vous manque 2$')
	    end	

	end)
   

end)


