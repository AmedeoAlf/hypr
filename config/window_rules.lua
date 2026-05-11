---@type HL.WindowRuleSpec[]
local M = {
	{ match = { initial_title = "^Minecraft.*$" }, immediate = true },
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

for _, title in pairs(floating) do
	table.insert(M, { match = { initial_title = "^(" .. title .. ")$" }, float = true })
end
return M
