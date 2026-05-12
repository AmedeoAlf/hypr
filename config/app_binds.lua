local binds = {
	Return = "foot",

	D = "hyprlauncher",

	Z = "wlogout -c 10 -L 300 -R 300 -B 435 -T 435 -b 6",

	C = "~/.config/wofi/copyq.sh",
	B = "zen-browser",
	E = "pcmanfm-qt",
	["SHIFT + E"] = "smile",
}

for combo, cmd in pairs(binds) do
	hl.bind("SUPER + " .. combo, hl.dsp.exec_cmd(cmd))
end
