function jaccard(a::AbstractSet, b::AbstractSet)
	sA, sB, sI = 0, length(b), 0
	for el in a
		sA += 1
		if contains(b, el)
			sI += 1
		end
	end
	sU = sA + sB - sI
	return sI / sU
end

function jaccard(a::AbstractVector, b::AbstractVector)
	sA, sB, sI = 0.0, 0.0, 0.0
	for i in 1:length(a)
		sA += a[i]^2
		sI += a[i] * b[i]
	end
	for i in 1:length(b)
		sB += b[i]^2
	end
	sU = sA + sB - sI
	return sI / sU
end
