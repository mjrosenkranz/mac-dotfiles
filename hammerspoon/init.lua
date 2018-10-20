--variables to make stuff easier
local hotkey = require "hs.hotkey"
local grid = require "hs.grid"
local window = require "hs.window"
local wf = require "hs.window.filter"
local screen = require "hs.screen"

--upper and window borders
local t_bar = 25
local u_border = 10
local w_border = 30

--make it jumpier
window.animationDuration = 0

grid.setMargins(hs.geometry.point(w_border,w_border))
local screen1 = screen.find('1920x1200')
-- grid.setGrid('16x9', screen1, hs.geometry.rect(0, t_bar,1920,1200 - t_bar))
grid.setGrid('16x9', screen1, hs.geometry.rect(0, 0,1920,1200))



local cmdshift = {"cmd", "shift"}
local mash = {"cmd", "ctrl", "alt"}
local shiftmash = {"cmd", "alt", "shift"}
local cmdctrl = {"cmd", "ctrl"}


--reload config
hotkey.bind({"cmd", "shift"}, "R", function()
	hs.reload()
end)
hs.alert.show("Reloaded")
--terminal
hotkey.bind({"cmd"}, "Return", function()
	hs.execute("osascript $HOME/dotfiles/scripts/openterminal.scpt")
end)
--open finder window shortcut

--focus window
hotkey.bind({"cmd"}, "H", function()
	hs.window.filter.focusWest()
end)
hotkey.bind({"cmd"}, "L", function()
	hs.window.filter.focusEast()
end)
hotkey.bind({"cmd"}, "K", function()
	hs.window.filter.focusNorth()
end)
hotkey.bind({"cmd"}, "J", function()
	hs.window.filter.focusSouth()
end)
--fullscreen
hotkey.bind(cmdshift, "F", function()
	grid.set(window.focusedWindow(),hs.geometry.rect(2.0,0.0,14,9.0))
end)

--halfscreen
hotkey.bind(cmdctrl, "H", function()
	grid.set(window.focusedWindow(),hs.geometry.rect(0.0,0.0,8.0,9.0))
end)
hotkey.bind(cmdctrl, "L", function()
	grid.set(window.focusedWindow(),hs.geometry.rect(8.0,0.0,8.0,9.0))
end)

--centerscreen
hotkey.bind(cmdshift, "C", function()
	grid.set(window.focusedWindow(),hs.geometry.rect(3.0,1.0,12.0,7.0))
end)

--quarter screen
hotkey.bind(cmdctrl, "J", function()
	x = grid.get(window.focusedWindow()).x
	grid.set(window.focusedWindow(),hs.geometry.rect(x,3.0,6.0,3.0))
end)
hotkey.bind(cmdctrl, "K", function()
	x = grid.get(window.focusedWindow()).x
	grid.set(window.focusedWindow(),hs.geometry.rect(x,0.0,6.0,3.0))
end)

--Move windows faster
hotkey.bind(shiftmash, "J", function()
	grid.pushWindowDown()
	grid.pushWindowDown()
end)
hotkey.bind(shiftmash, "K", function()
	grid.pushWindowUp()
	grid.pushWindowUp()
end)
hotkey.bind(shiftmash, "H", function()
	grid.pushWindowLeft()
	grid.pushWindowLeft()
end)
hotkey.bind(shiftmash, "L", function()
	grid.pushWindowRight()
	grid.pushWindowRight()
end)

--Move windows
hotkey.bind(cmdshift, "J", grid.pushWindowDown)
hotkey.bind(cmdshift, "K", grid.pushWindowUp)
hotkey.bind(cmdshift, "H", grid.pushWindowLeft)
hotkey.bind(cmdshift, "L", grid.pushWindowRight)


--resize windows
hotkey.bind({"cmd"}, "UP", function()
	win = grid.get(window.focusedWindow())
	win.y = win.y - 1
	win.h = win.h + 1
	grid.set(window.focusedWindow(),hs.geometry.rect(win.x,win.y,win.w,win.h))
end)
hotkey.bind(cmdshift, "UP", grid.resizeWindowShorter)

hotkey.bind({"cmd"}, "DOWN", grid.resizeWindowTaller)
hotkey.bind(cmdshift, "DOWN", function()
	win = grid.get(window.focusedWindow())
	win.y = win.y + 1
	win.h = win.h - 1
	grid.set(window.focusedWindow(),hs.geometry.rect(win.x,win.y,win.w,win.h))
end)

hotkey.bind({"cmd"}, "RIGHT", grid.resizeWindowWider)
hotkey.bind(cmdshift, "RIGHT", function()
	grid.resizeWindowThinner()
	grid.pushWindowRight()
end)

hotkey.bind({"cmd"}, "LEFT", function()
	win = grid.get(window.focusedWindow())
	win.x = win.x - 1
	win.w = win.w + 1
	grid.set(window.focusedWindow(),hs.geometry.rect(win.x,win.y,win.w,win.h))
end)
hotkey.bind(cmdshift, "LEFT", grid.resizeWindowThinner)

--window filter test
wf_finder = wf.new(false):setAppFilter('Finder')
wf_finder:subscribe(wf.windowCreated, function()
	grid.set(window.focusedWindow(),hs.geometry.rect(2.0,1.0,7.0,7.0))
end)
wf_term = wf.new(false):setAppFilter('iTerm2')
wf_term:subscribe(wf.windowCreated, function()
	grid.set(window.focusedWindow(),hs.geometry.rect(9.0,1.0,6.0,3.0))
end)
--implement automatic snapping
--make chrome screens go fullscreen



