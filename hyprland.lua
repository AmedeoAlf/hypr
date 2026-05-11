hl.env("HYPRLAND_CONFIG", "~/.config/hypr/hyprland.lua")

require("config.wm_binds")
require("config.app_binds")
require("config.window_rules")
require("config.random_env")

hl.on("hyprland.start", function()
	for _, cmd in ipairs(require("config.autostart")) do
		hl.exec_cmd(cmd, {})
	end
end)

hl.monitor({
	output = "",
	mode = "1920x1080@100",
})

hl.config({
	input = {
		kb_layout = "it,us",
		kb_options = "grp:shift_caps_toggle",

		numlock_by_default = true,

		follow_mouse = 1,
		sensitivity = -0.4,
		accel_profile = "flat",
	},
	general = {

		gaps_in = 0,
		gaps_out = 0,
		border_size = 2,
		col = {
			active_border = "rgba(c0caf5bb)",
			inactive_border = "rgba(595959aa)",
		},

		layout = "dwindle",

		-- Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
		allow_tearing = true,
	},
	decoration = {
		rounding = 1,

		blur = {
			enabled = false,
		},

		shadow = {
			enabled = false,
		},
	},
	render = {
		ctm_animation = 1,
	},
	misc = {
		force_default_wallpaper = 0,
		vrr = 1,
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,
		middle_click_paste = false,
	},
})
