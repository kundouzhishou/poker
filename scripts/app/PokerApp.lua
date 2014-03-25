require("config")
require("framework.init")
require("framework.shortcodes")
require("framework.cc.init")

local PokerApp = class("PokerApp", cc.mvc.AppBase)

function PokerApp:ctor()
	PokerApp.super.ctor(self)
end

function PokerApp:run()
	echoLog("[PokerApp]", "run...")
	self:enterScene("LoadingScene")
end

function PokerApp:enterLobbyScene()
	echoLog("[PokerApp]", "enter lobby scene")
	local lobbySceneClass = require("app.scenes.LobbyScene")
	local scene = lobbySceneClass.new({}})
	display:replaceScene(scene, nil, nil, nil)
end

return PokerApp