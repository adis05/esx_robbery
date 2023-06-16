lib.callback.register('mayatwarung:server:succes', function()
	local money = math.random(30000, 30000)
	local chance = math.random(1, 1)
	exports.ox_inventory:AddItem(source, 'black_money', money)
	if chance >= 1 then
		exports.ox_inventory:AddItem(source, 'safecracker', 4)
	end
	TriggerClientEvent('chat:addMessage', -1, {
		template = '<div style="padding: 0.3vw; margin: 0.3vw; background-color: rgba(196, 0, 0, 0.8); border-radius: 3px; text-shadow: 1px 1px #000000"><i class="fas fa-exclamation"></i> <b>BERITA KRIMINAL: {0}</b></div>',
		args = { "TELAH TERJADI PERAMPOKAN WARUNG|| Dimohon warga untuk menjauh dari area dan berhati-hati." }
	})
end)

lib.callback.register('mayatwarung:server:removeItem', function()
	exports.ox_inventory:RemoveItem(source, 'advancedlockpick', 1)
end)


ESX.RegisterServerCallback('getPoliceCount', function(src, cb) -- esx discord
	local policeTable = ESX.GetExtendedPlayers("job", "police")
	local policeCount = 1
  
	for v in pairs(policeTable) do
	  policeCount = policeCount + 1
	end
  
	cb(policeCount)
end)