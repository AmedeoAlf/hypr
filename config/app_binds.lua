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
