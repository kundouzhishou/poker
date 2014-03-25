
local LoadingScene = class("LoadingScene", function()
	return display.newScene("LoadingScene")
end)

function LoadingScene:ctor()
	local layer = display.newColorLayer(ccc4(255,255,0,255))
	self:addChild(layer)
	layer:setTouchEnabled(true)
	layer:addTouchEventListener(function(event, x, y)
		echoLog("loading layer", "loading layer touch ...")
		app:enterLobbyScene()
		return true
	end)

	cc.ui.UILabel.new({text=[["this is loading scene...
		touch to continue..."]], size=24, color=display.COLOR_BLUE})
	:setLayoutSize(400, 100)
	:align(display.CENTER, display.cx, display.cy)
	:addTo(self)

end

function LoadingScene:onEnter()
	echoLog("onEnter")
end

return LoadingScene