loadstring(game:HttpGet("https://raw.githubusercontent.com/CoolKid52321/rezrsdrzsddz/main/fgjnkdzjnsk"))(); -- ui loader

repeat task.wait() until game:IsLoaded();




_G.start = tick();

local ids = {
	["2287245386"] = "https://raw.githubusercontent.com/BananaLover998/luckyhub1/main/luckyhub%20hoops%20aimbot.lua", -- hoopz
	["12442317726"] = "https://api.luarmor.net/files/v3/loaders/eea52b5615405d544e8a3a35c81a7f6c.lua", -- dahood aim trainer
	["2788229376"] = "https://raw.githubusercontent.com/CoolKid52321/e4rzez/main/rezrzerzerds.txt"; -- dahood
}

if game.GameId ~= 3150475059 then
	getgenv().Decided = true
end

local request = (syn and syn.request or request);

repeat task.wait() until getgenv().Decided ~= nil or game.GameId ~= 3150475059
for i,v in next, ids do
	if tostring(game.GameId) == i or tostring(game.PlaceId) == i then

		xpcall(function()
			loadstring(game:HttpGet(v))();
		end, function()
			warn(response)
			textLabel2.Text = "An error occured on execution." 
			task.wait(2)
			getgenv().Started = true
			return
		end)
		getgenv().Started = true

		request(
			{
				Url = "http://127.0.0.1:6463/rpc?v=1",
				Method = "POST",
				Headers = {
					["Content-Type"] = "application/json",
					["origin"] = "https://discord.com",
				},
				Body = game:GetService("HttpService"):JSONEncode(
				{
					["args"] = {
						["code"] = "luckyhub",
					},
					["cmd"] = "INVITE_BROWSER",
					["nonce"] = "."
				})
			})
		break
	end
end