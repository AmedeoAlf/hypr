local programs = {
	"hyprlauncher -d",
	"udiskie",
	"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1",
	"hyprpaper",
	"hyprsunset",
	"copyq --start-server",
	"dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP",
}

hl.on("hyprland.start", function()
	for _, cmd in ipairs(programs) do
		hl.exec_cmd(cmd)
	end
end)
