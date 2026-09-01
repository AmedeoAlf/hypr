hl.monitor({
	output = "eDP-1",
	mode = "1920x1080",
	scale = "1.25",
})
hl.monitor({
	output = "HDMI-A-1",
	mode = "1280x720",
})

hl.config({ input = { sensitivity = 1, accel_profile = "flat" } })

---@param combo string
---@param dispatcher HL.Dispatcher|function
local function rebind(combo, dispatcher)
	hl.unbind(combo)
	hl.bind(combo, dispatcher)
end

rebind("SUPER + apostrophe", function()
	hl.exec_cmd("hyprshutdown --post-cmd 'uwsm stop'")
end)

rebind("SUPER + B", hl.dsp.exec_cmd("helium-browser"))
