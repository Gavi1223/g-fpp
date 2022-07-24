Citizen.CreateThread(function()
	exports["drp-target"]:AddCircleZone("dodobox-buy", vector3(-442.5480, -2820.1885, 5.8244), 0.4, {
			name = "dodobox-buy",
			}, {
			options = {
				{
					event = "dodobox-buymenu",
					icon = "fas fa-circle",
					label = "Buy Dodo Packages",
				},
			},
			job = { "all" },
			distance = 2.0
		})
end)





RegisterNetEvent('dodobox-buymenu')
AddEventHandler('dodobox-buymenu', function()

	TriggerEvent('drp-context:sendMenu', {
		{
            id = 1,
            header = "Small Package",
			txt = "Buy a Small Dodo Package.",
			params = {
                event = "dodobox-getsmallpackage"
            }
        },
        {
            id = 2,
            header = "Medium Package",
			txt = "Buy a Medium Dodo Package.",
			params = {
                event = "dodobox-getmediumpackage"
            }
        },
        {
            id = 3,
            header = "Large Package",
			txt = "Buy a Large Dodo Package.",
			params = {
                event = "dodobox-getlargepackage"
            }
        },
    })
end)






RegisterNetEvent('dodobox-getsmallpackage')
AddEventHandler('dodobox-getsmallpackage', function(pItemId)
  TriggerEvent("player:receiveItem", "dodopackagesmall", 1)
  TriggerServerEvent('dodobox-deductsmallpackage')
end)



RegisterNetEvent('dodobox-getmediumpackage')
AddEventHandler('dodobox-getmediumpackage', function(pItemId)
    TriggerEvent("player:receiveItem", "dodopackagemedium", 1)
    TriggerServerEvent('dodobox-deductmediumpackage')
end)



RegisterNetEvent('dodobox-getlargepackage')
AddEventHandler('dodobox-getlargepackage', function(pItemId)
    TriggerEvent("player:receiveItem", "dodopackagelarge", 1)
    TriggerServerEvent('dodobox-deductlargepackage')
end)


