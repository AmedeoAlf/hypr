local binds = {
	D = "hyprlauncher",
	Z = "wlogout",
	M = "hyprlock --grace 2",

	Return = "foot",

	B = "zen-browser",
	E = "dolphin",
	["SHIFT + E"] = "smile",
}

for combo, cmd in pairs(binds) do
	hl.bind("SUPER + " .. combo, hl.dsp.exec_cmd(cmd))
end

hl.bind("SUPER_L", require("config.multiclick")(hl.dsp.exec_cmd("hyprlauncher"), 3))
