Just replace your esx_status and esx_basicneeds. Then just drag & drop the ESX_Healthbar and in cfg write "start ESX_Healthbar".
For further questions contact me on discord KeN1cs#8277
This is bars for hunger,thirst,armor and health. If you get drunk an extra bar will show up beside them.
If any of you are using a cinematic script just put st = false on first and st = true on second.

To fix esx_basicneeds go into esx_basicneed/client/main.lua
Find this 
AddEventHandler('esx_status:loaded', function(status)

	TriggerEvent('esx_status:registerStatus', 'hunger', 1000000, '#CFAD0F', function(status)
		return true
	end, function(status)
		status.remove(100)
	end)

	TriggerEvent('esx_status:registerStatus', 'thirst', 1000000, '#0C98F1', function(status)
		return true
	end, function(status)
		status.remove(75)
	end)
  
  CHANGE TO THIS
  
  AddEventHandler('esx_status:loaded', function(status)

	TriggerEvent('esx_status:registerStatus', 'hunger', 1000000, '#FFFF00', 
		function(status)
			return false
		end, function(status)
			status.remove(75)
		end)

	TriggerEvent('esx_status:registerStatus', 'thirst', 1000000, '#0099FF', 
		function(status)
			return false
		end, function(status)
			status.remove(100)
		end)



I got full permission from original author of the UI.
Credit to TerbSEC
