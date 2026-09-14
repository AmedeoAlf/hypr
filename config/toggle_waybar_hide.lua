local waybar_hidden_mode = false

local toggle_hidden_mode = function()
	hl.exec_cmd("killall -s 10 waybar")
	waybar_hidden_mode = not waybar_hidden_mode
end

hl.bind("SUPER_L", function()
	if waybar_hidden_mode then
		hl.exec_cmd("killall -s 10 waybar")
	end
end)

-- doesn't seem to work :-(
--
-- hl.bind("SUPER_L", function()
-- 	if waybar_hidden_mode then
-- 		hl.exec_cmd("killall -s 10 waybar")
-- 	end
-- end, { release = true })

return toggle_hidden_mode
