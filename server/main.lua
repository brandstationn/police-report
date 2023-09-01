AddEventHandler("brandstation:reportlogs")
RegisterServerEvent("brandstation:reportlogs", function(data)
    SendToDiscord( "TJÄNSTEFELS ANMÄLAN", "\n\n**Sändarens Discord**: " .. data.discord .. " \n\n**Person som Rappoteras**: ".. data.report .."\n\n**Brott**: " .. data.brott .. " " .. "\n\n**Händelseförlopp**: " .. data.register .. "" )
end)
 
SendToDiscord = function(title, discordMessage)
	local embeds = {
		{
			["type"] = "rich",
			["title"] = title,
			["description"] = discordMessage,
			["color"] = 7674933,
			["footer"] = {
			["text"] = "Brandstation: " .. os.date()
			}
		}
	}
  
	PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({ embeds = embeds}), { ['Content-Type'] = 'application/json' })
end