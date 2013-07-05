# TODO: Make this fast
function expl2(a::AbstractSet, b::AbstractSet)
	d = sqrt(length(union(a, b)) - length(intersect(a, b)))
	return exp(-d)
end

expl2(a::AbstractVector, b::AbstractVector) = exp(-euclidean(a, b))
