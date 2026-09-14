return function(dsp, every, timeout_ms)
	timeout_ms = timeout_ms or (200 * every)

	local counter
	local timer

	return function()
		if timer == nil then
			counter = 0
			timer = hl.timer(function()
				counter = 0
				timer = nil
			end, { timeout = timeout_ms, type = "oneshot" })
		end
		counter = counter + 1
		if counter == every then
			timer = nil
			hl.dispatch(dsp)
		end
	end
end
