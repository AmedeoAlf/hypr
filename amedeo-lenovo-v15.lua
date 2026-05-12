hl.monitor({
	output = "eDP-1",
	mode = "1920x1080",
	scale = "1.25",
})

---@param combo string
---@param dispatcher HL.Dispatcher|function
local function rebind(combo, dispatcher)
	hl.unbind(combo)
	hl.bind(combo, dispatcher)
end

-- TODO: more graceful logout
rebind("SUPER + apostrophe", function()
	hl.exec_cmd("uwsm stop")
end)

rebind("SUPER + B", hl.dsp.exec_cmd("helium-browser"))
