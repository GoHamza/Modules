return function(isProtected)
	local scrgui = Instance.new("ScreenGui")
	local sgparent = nil
	
	if isProtected then
		sgparent = (gethui and gethui()) or (get_hidden_gui and get_hidden_gui()) or game:GetService("CoreGui") or "unsupported"
		
		if sgparent == "unsupported" then
			warn("ScreenGui.lua - Unsupported utility, cannot protect ScreenGui. Setting parent to PlayerGui instead...")
			
			scrgui.Parent = game:GetService("Players"):WaitForChild("PlayerGui")
			return scrgui
		end
		
		if syn then
			syn.protect_gui(scrgui)
		end
	end
	
	scrgui.Parent = sgparent
	return scrgui
end
