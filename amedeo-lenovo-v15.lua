hl.monitor({
	output = "eDP-1",
	mode = "1920x1080",
	scale = "1.25",
})

-- TODO: more graceful shutdown
hl.bind("SUPER + apostrophe", function()
	hl.exec_cmd("uwsm stop")
end)
