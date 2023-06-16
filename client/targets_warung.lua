exports.ox_target:addBoxZone({ --warung 1
	name = "Warung H.Arni",
	coords = vec3(25.03, -1344.99, 29.55),
	size = vec3(0.75, 1.05, 4.0),
	rotation = 0.0,
	options = {
		{
			icon = 'fa-solid fa-lock',
			label = "Congkel Mesin Kasir",
			event = "mayatwarung:client:start",
            canInteract = function(entity, distance, coords, name)
                local hasPick = exports.ox_inventory:Search('count', 'advancedlockpick')
                if hasPick >= 1 then
                    return true
                else
                    return false
                end
            end
		}
	},
})

exports.ox_target:addBoxZone({--warung 2
	name = "toko soul little",
	coords = vec3(-710.26, -904.23, 17.75),
	size = vec3(0.6, 0.8, 4.0),
	rotation = 0.0,
	options = {
		{
			icon = 'fa-solid fa-lock',
			label = "Congkel Mesin Kasir",
			event = "mayatwarung:client:start",
            canInteract = function(entity, distance, coords, name)
                local hasPick = exports.ox_inventory:Search('count', 'advancedlockpick')
                if hasPick >= 1 then
                    return true
                else
                    return false
                end
            end
		}
	},
})

exports.ox_target:addBoxZone({--warung 3
	name = "toko haji abas",
	coords = vec3(373.73, 328.72, 102.15),
	size = vec3(0.7, 0.8, 4.0),
	rotation = 344.5,
	options = {
		{
			icon = 'fa-solid fa-lock',
			label = "Congkel Mesin Kasir",
			event = "mayatwarung:client:start",
            canInteract = function(entity, distance, coords, name)
                local hasPick = exports.ox_inventory:Search('count', 'advancedlockpick')
                if hasPick >= 1 then
                    return true
                else
                    return false
                end
            end
		}
	},
})