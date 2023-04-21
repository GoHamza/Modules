return function(class, properties)
	local inst = Instance.new(class)
	
	for i, v in next, properties do
		inst[i] = v
	end
	
	return inst
end
