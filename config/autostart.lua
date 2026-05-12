local programs = {
	"hyprlauncher -d",
	"waybar",
	"udiskie",
	"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1",
	"hyprpaper",
	"hyprsunset",
	"copyq --start-server",
}

hl.on("hyprland.start", function()
	for _, cmd in ipairs(programs) do
		hl.exec_cmd(cmd)
	end
end)
