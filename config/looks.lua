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

hl.curve("fast", { type = "spring", mass = 1, stiffness = 20, dampening = 10 })
hl.curve("slow", { type = "spring", mass = 1, stiffness = 10, dampening = 10 })

hl.animation({ leaf = "windows", spring = "fast", enabled = true, speed = 1, style = "slide" })
hl.animation({ leaf = "windowsMove", spring = "slow", enabled = true, speed = 1 })
hl.animation({ leaf = "workspaces", spring = "fast", enabled = true, speed = 1 })
hl.animation({ leaf = "fade", spring = "slow", enabled = true, speed = 1 })
hl.animation({ leaf = "zoomFactor", spring = "slow", enabled = true, speed = 1 })
