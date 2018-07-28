hyper = {"cmd", "alt", "ctrl"} 

--outer, upper, and window borders
o_border = 30
u_border = 30
w_border = 15

--reload config
hs.hotkey.bind({"cmd", "shift"}, "R", function()
	hs.reload()
end)
hs.alert.show("Reloaded")

--open new terminal
hs.hotkey.bind({"cmd"}, "E", function()
	hs.osascript.applescriptFromFile("/Users/morgan/scripts/openterminal.scpt")
end)
--focus window
hs.hotkey.bind({"cmd"}, "H", function()
	hs.window.filter.focusWest()
end)
hs.hotkey.bind({"cmd"}, "L", function()
	hs.window.filter.focusEast()
end)
hs.hotkey.bind({"cmd"}, "K", function()
	hs.window.filter.focusNorth()
end)
hs.hotkey.bind({"cmd"}, "J", function()
	hs.window.filter.focusSouth()
end)

--move window
hs.hotkey.bind({"cmd", "shift"}, "H", function()
	local win = hs.window.focusedWindow()
  	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	if f.x > max.x + o_border then
  		f.x = f.x - 20
	else
		f.x = max.x + o_border
	end
  	win:setFrame(f)
end)
hs.hotkey.bind({"cmd", "shift"}, "L", function()
	local win = hs.window.focusedWindow()
  	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	if f.x < max.w - (o_border + f.w) then
  		f.x = f.x + 20
	else
		f.x = max.w - (o_border + f.w)
	end
  	win:setFrame(f)
end)
hs.hotkey.bind({"cmd", "shift"}, "K", function()
	local win = hs.window.focusedWindow()
  	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()
	
	if f.y > max.y + o_border + u_border then
  		f.y = f.y - 20
	else
		f.y = max.y + o_border + u_border
	end
  	win:setFrame(f)
end)
hs.hotkey.bind({"cmd", "shift"}, "J", function()
	local win = hs.window.focusedWindow()
  	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	if f.y < max.h - (o_border + f.h) then
  		f.y = f.y + 20
	else
		f.y = max.h - (o_border + f.h)
	end
  	win:setFrame(f)
end)

--window resizing
hs.hotkey.bind({"cmd"}, "Left", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.w = f.w + 20
	if f.x > max.x + o_border then
  		f.x = f.x - 20
	else
		f.x = max.x + o_border
	end
	win:setFrame(f)
end)
hs.hotkey.bind({"cmd", "shift"}, "Right", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()

	f.x = f.x + 20
	f.w = f.w - 20
	win:setFrame(f)
end)
hs.hotkey.bind({"cmd"}, "Right", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	if f.x < max.w - (o_border + f.w) then
  		f.w = f.w + 20
	else
		f.x = f.x - 20
		f.w = f.w + 20
	end
	win:setFrame(f)
end)
hs.hotkey.bind({"cmd", "shift"}, "Left", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.w = f.w - 20
	win:setFrame(f)
end)
hs.hotkey.bind({"cmd"}, "Up", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	if f.y > max.y + o_border + u_border then
  		f.y = f.y - 20
	else
		f.y = max.y + o_border + u_border
	end
	f.h = f.h + 20
	win:setFrame(f)
end)
hs.hotkey.bind({"cmd", "shift"}, "Down", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.y = f.y + 40
	f.h = f.h - 20
	win:setFrame(f)
end)
hs.hotkey.bind({"cmd"}, "Down", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	if f.y < max.h - (o_border + f.h) then
  		f.h = f.h + 20
	else
		f.y = f.y - 20
		f.h = f.h + 20
	end
	win:setFrame(f)
end)
hs.hotkey.bind({"cmd", "shift"}, "Up", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.h = f.h - 20
	win:setFrame(f)
end)

--fullscreen (with borders)
hs.hotkey.bind({"cmd", "shift"}, "F", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + o_border
	f.y = max.y + o_border + u_border
	f.w = max.w - 2 * o_border
	f.h = max.h - (2 * o_border + u_border)
	win:setFrame(f)
end)

--halfscreen
hs.hotkey.bind({"cmd", "ctrl"}, "H", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + o_border
	f.y = max.y + o_border + u_border
	f.w = max.w/2 - (2 * o_border + w_border)
	f.h = max.h - (2 * o_border + u_border)
	win:setFrame(f)
end)
hs.hotkey.bind({"cmd", "ctrl"}, "L", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + max.w/2 + w_border
	f.y = max.y + o_border + u_border
	f.w = max.w/2 - (o_border + w_border)
	f.h = max.h - (2 * o_border + u_border)
	win:setFrame(f)
end)

--move window to edge of border
--maybe make widnow location and size switching
