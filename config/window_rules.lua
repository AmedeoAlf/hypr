hl.window_rule({
	match = { title = "[Pp]acket *[tT]racer" },
	suppress_event = "fullscreen maximize activate activatefocus",
})

local floating = {
	"Godot",
	"Smile",
	"pavucontrol-qt",
	"Windscribe",
}

local floating_class = {
	"org.kde.kcalc",
}

local immediate = {
	"Minecraft.*",
	"Hollow Knight",
}

for _, title in pairs(floating) do
	hl.window_rule({ match = { initial_title = title }, float = true })
end

for _, class in pairs(floating_class) do
	hl.window_rule({ match = { initial_class = "^" .. class .. "$" }, float = true })
end

for _, title in pairs(immediate) do
	hl.window_rule({ match = { title = title }, immediate = true })
end
