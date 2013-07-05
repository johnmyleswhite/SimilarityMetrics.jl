function pearson(a::AbstractSet, b::AbstractSet)
	sA, sB, sI = 0, length(b), 0
	for el in a
		sA += 1
		if contains(b, el)
			sI += 1
		end
	end
	return sI / sqrt(sA * sB)
end

pearson(a::AbstractVector, b::AbstractVector) = cor(a, b)
