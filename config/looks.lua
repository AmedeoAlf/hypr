hl.config({
	general = {

		gaps_in = 0,
		gaps_out = 0,
		border_size = 2,
		col = {
			active_border = "rgba(c0caf5bb)",
			inactive_border = "rgba(595959aa)",
		},

		layout = "dwindle",
	},
	decoration = {
		rounding = 3,

		blur = {
			enabled = false,
		},

		shadow = {
			enabled = false,
		},
	},
	misc = {
		force_default_wallpaper = 0,
	},
})

hl.curve("rubber", { type = "spring", mass = 1, stiffness = 20, dampening = 10 })

hl.animation({ leaf = "windows", spring = "rubber", enabled = true, speed = 1, style = "slide" })
hl.animation({ leaf = "windowsMove", spring = "rubber", enabled = true, speed = 0.5 })
hl.animation({ leaf = "workspaces", spring = "rubber", enabled = true, speed = 1 })
hl.animation({ leaf = "fade", spring = "rubber", enabled = true, speed = 0.5 })
-- TODO: monitorAdded
