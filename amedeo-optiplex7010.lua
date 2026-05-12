local vars = {
	XCURSOR_SIZE = 24,
	QT_QPA_PLATFORMTHEME = "qt6ct",

	LIBVA_DRIVER_NAME = "nvidia",
	GBM_BACKEND = "nvidia-drm",
	__GLX_VENDOR_LIBRARY_NAME = "nvidia",
	GDK_BACKEND = "wayland,x11,*",
	QT_QPA_PLATFORM = "wayland;xcb",
	CLUTTER_BACKEND = "wayland",
	XDG_CURRENT_DESKTOP = "Hyprland",
	XDG_SESSION_TYPE = "wayland",
	XDG_SESSION_DESKTOP = "Hyprland",

	QT_WAYLAND_DISABLE_WINDOWDECORATION = "1",
	XDG_MENU_PREFIX = "arch-",
}

for var, value in pairs(vars) do
	hl.env(var, value)
end

hl.monitor({
	output = "",
	mode = "1920x1080@100",
})

hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	hl.exec_cmd("/usr/lib/hyprpolkitagent/hyprpolkitagent")
end)

hl.config({ input = { sensitivity = -0.4 } })
