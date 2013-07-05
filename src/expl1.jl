# TODO: Make this fast
function expl1(a::AbstractSet, b::AbstractSet)
	d = length(union(a, b)) - length(intersect(a, b))
	return exp(-d)
end

expl1(a::AbstractVector, b::AbstractVector) = exp(-cityblock(a, b))
