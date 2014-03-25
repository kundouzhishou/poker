local LobbyScene = class("LobbyScene", function()
	return display.newScene("LobbyScene")
end)

function LobbyScene:ctor() 
	ui.newTTFLabel({text="this is lobby scene", size=24, align = ui.TEXT_ALIGN_CENTER})
		:pos(display.cx, display.cy)
		:addTo(self)
end

return LobbyScene