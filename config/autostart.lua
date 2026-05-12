local programs = {
	"hyprlauncher -d",
	"udiskie",
	"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1",
	"hyprpaper",
	"hyprsunset",
	"copyq --start-server",

	"dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP",
	"dbus-update-activation-environment --systemd HYPRLAND_INSTANCE_SIGNATURE",

	'gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"',
	'gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"',
}

hl.on("hyprland.start", function()
	for _, cmd in ipairs(programs) do
		hl.exec_cmd(cmd)
	end
end)
