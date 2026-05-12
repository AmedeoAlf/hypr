local binds = {
	D = "hyprlauncher",
	Z = "wlogout -c 10 -L 300 -R 300 -B 435 -T 435 -b 6",
	M = "hyprlock --grace 2",

	Return = "foot",

	B = "zen-browser",
	E = "dolphin",
	["SHIFT + E"] = "smile",
}

for combo, cmd in pairs(binds) do
	hl.bind("SUPER + " .. combo, hl.dsp.exec_cmd(cmd))
end
