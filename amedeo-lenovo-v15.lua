hl.monitor({
	output = "eDP-1",
	mode = "1920x1080",
	scale = "1.25",
})

-- TODO: more graceful logout
hl.bind("SUPER + apostrophe", function()
	hl.exec_cmd("uwsm stop")
end)

hl.unbind("SUPER + B")
hl.bind("SUPER + B", hl.dsp.exec_cmd("helium-browser"))
