function matching(a::AbstractSet, b::AbstractSet)
	sI = 0
	for el in a
		if contains(b, el)
			sI += 1
		end
	end
	return sI
end

matching(a::AbstractVector, b::AbstractVector) = dot(a, b)
