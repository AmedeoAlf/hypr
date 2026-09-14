local last_presses = {}
local idx = 0

return function(dsp, every, timeout_s)
	timeout_s = timeout_s or 0.2
	return function()
		local now = os.clock()
		last_presses[(idx - 1) % every] = now

		-- TODO: use -math.infinity or whatever is called
		if now - (last_presses[idx] or -10000) < timeout_s then
			for key in pairs(last_presses) do
				last_presses[key] = nil
			end
			hl.dispatch(dsp)
		end

		idx = (idx + 1) % every
	end
end
