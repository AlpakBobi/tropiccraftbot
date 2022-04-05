local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('Logged in as '.. client.user.username)
        client:setGame("TropicCraft.PL")
end)

client:on('messageCreate', function(message)
	if message.content:lower() == 'c!help' then
		message.channel:send('--------------**Przydatne Komendy**--------------\n**1. c!rekrutacja** - Aktualne Rekrutacje\n**2. c!ip** - Adres Serwera Minecraft\n**3. c!wersja** - Wersja Serwera Minecraft\n**4. c!los** - Losuje losowa liczbe od 1 do 100 000')
	end
end)

client:on('messageCreate', function(message)
	if message.content:lower() == 'c!pomoc' then
		message.channel:send('--------------**Przydatne Komendy**--------------\n**1. c!rekrutacja** - Aktualne Rekrutacje\n**2. c!ip** - Adres Serwera Minecraft\n**3. c!wersja** - Wersja Serwera Minecraft\n**4. c!los** - Losuje losowa liczbe od 1 do 100 000')
	end
end)

client:on('messageCreate', function(message)
	if message.content:lower() == 'c!rekrutacja' then
		message.channel:send('--------------------**Rekrutacja**--------------------\nAktualnie Brak Rekrutacji')
	end
end)

client:on('messageCreate', function(message)
	if message.content:lower() == 'c!ip' then
		message.channel:send('Adres Serwera Minecraft » **TropicCraft.PL**')
	end
end)

client:on('messageCreate', function(message)
	if message.content:lower() == 'c!wersja' then
		message.channel:send('Wersja Serwera Minecraft » **1.7.10 - 1.18x**')
	end
end)

client:on("messageCreate", function(message)
  if message.content:lower() == "c!los" then
    message:reply("Wylosowałeś: "..math.random(1, 100000).."")
  end
end)

client:run('Bot OTU3MjgyMjY4OTQ5Mzk3NTM0.Yj8glg.TBP5D1xPuZEl6nr9L5xKzVAcA8I')