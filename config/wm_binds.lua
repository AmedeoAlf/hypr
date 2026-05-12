local super_binds = {
	Q = hl.dsp.window.close(),
	apostrophe = hl.dsp.exit(),
	V = hl.dsp.window.float(),
	F = hl.dsp.window.fullscreen(),
	P = hl.dsp.window.pseudo(),

	H = hl.dsp.focus({ direction = "l" }),
	J = hl.dsp.focus({ direction = "d" }),
	K = hl.dsp.focus({ direction = "u" }),
	L = hl.dsp.focus({ direction = "r" }),

	S = hl.dsp.workspace.toggle_special(),

	mouse_down = hl.dsp.focus({ workspace = "-1" }),
	mouse_up = hl.dsp.focus({ workspace = "+1" }),
}

local super_shift_binds = {
	Q = hl.dsp.window.kill(),

	S = hl.dsp.focus({ workspace = "special" }),

	L = function()
		hl.timer(function()
			hl.dispatch(hl.dsp.dpms({ action = "disable" }))
		end, { timeout = 500, type = "oneshot" })
	end,
}

for i = 1, 9 do
	super_binds[i] = hl.dsp.focus({ workspace = i })
	super_shift_binds[i] = hl.dsp.window.move({ workspace = i })
end

for combo, dsp in pairs(super_binds) do
	hl.bind("SUPER + " .. combo, dsp)
end

for combo, dsp in pairs(super_shift_binds) do
	hl.bind("SUPER + SHIFT + " .. combo, dsp)
end

-- Window management with mouse
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Audio
-- TODO: brightness
local sliderKeys = {
	XF86AudioRaiseVolume = "wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+",
	XF86AudioLowerVolume = "wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%-",
}

-- TODO: MicMute, next/prev, play-pause
local specialKeys = {
	XF86AudioMute = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle",
}

for combo, cmd in pairs(sliderKeys) do
	hl.bind(combo, hl.dsp.exec_cmd(cmd), { repeating = true, locked = true })
end

for combo, cmd in pairs(specialKeys) do
	hl.bind(combo, hl.dsp.exec_cmd(cmd), { locked = true })
end

-- Screenshot
hl.bind(
	"SHIFT + Print",
	hl.dsp.exec_cmd('grim -g "$(slurp -d)" - | wl-copy && notify-send "Screenshot copiato negli appunti"')
)
hl.bind("Print", hl.dsp.exec_cmd('grim -| wl-copy && notify-send "Screenshot copiato negli appunti"'))
hl.bind(
	"CTRL + Print",
	hl.dsp.exec_cmd(
		'copyq read image/png > ~/Immagini/Schermate/Screenshot-$(date).png && notify-send "Screenshot salvato"'
	)
)

-- Zoom
hl.bind("SUPER + mouse:275", function()
	hl.config({ cursor = { zoom_factor = 1 } })
end)
hl.bind("SUPER + mouse:276", function()
	hl.config({ cursor = { zoom_factor = tonumber(hl.get_config("cursor.zoom_factor")) * 1.41 } })
end)

-- Nostalgia
hl.bind("ALT + TAB", hl.dsp.window.cycle_next())
hl.bind("ALT + SHIFT + TAB", hl.dsp.window.cycle_next({ next = false }))

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down", action = "float" })
