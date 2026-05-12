---@type HL.WindowRuleSpec[]
local M = {
	{
		match = { initial_title = "^packettracer6.exe$" },
		suppress_event = "fullscreen maximize activate activatefocus",
	},
}

local floating = {
	"Godot",
	"Smile",
	"pavucontrol-qt",
	"org.kde.kcalc",
}

local immediate = {
	"^Minecraft.*$",
	"^(Hollow Knight)$",
}

for _, title in pairs(floating) do
	table.insert(M, { match = { initial_title = "^(" .. title .. ")$" }, float = true })
end

for _, title in pairs(immediate) do
	table.insert(M, { match = { title = title }, immediate = true })
end

return M
