require("config.wm_binds")
require("config.app_binds")
require("config.window_rules")
require("config.looks")
require("config.default")
require("config.autostart")

local get_hostname = function()
	local f = io.popen("hostnamectl hostname")
	if f == nil then
		return ""
	end
	local hostname = f:read("l")
	f:close()
	return hostname
end

require(get_hostname())
