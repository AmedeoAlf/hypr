require("config.wm_binds")
require("config.app_binds")
require("config.window_rules")
require("config.random_env")
require("config.looks")

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
		-- Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
		allow_tearing = true,
	},
	render = {
		ctm_animation = 1,
	},
	misc = {
		vrr = 1,
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,
		middle_click_paste = false,
	},
})
