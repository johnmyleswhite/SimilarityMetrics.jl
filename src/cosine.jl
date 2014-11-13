function cosine(a::AbstractSet, b::AbstractSet)
	sA, sB, sI = 0, length(b), 0
	for el in a
		sA += 1
		if contains(b, el)
			sI += 1
		end
	end
	return sI / sqrt(sA * sB)
end

function cosine(a::AbstractVector, b::AbstractVector)
	sA, sB, sI = 0.0, 0.0, 0.0
	for i in 1:length(a)
		sA += a[i]^2
		sI += a[i] * b[i]
	end
	for i in 1:length(b)
		sB += b[i]^2
	end
	return sI / sqrt(sA * sB)
end

function norm_sparse(v::AbstractSparseMatrix)
    non_0_vals = nonzeros(v)
    m = length(non_0_vals)
    ret = zero(eltype(v))
    for i in 1:m
        ret += non_0_vals[i]^2
    end
    ret
end

function dot_sparse(v::AbstractSparseMatrix,w::AbstractSparseMatrix)
    non_0_idx = intersect(rowvals(w), rowvals(v))
    ret = zero(eltype(v))
    for i in non_0_idx
        ret += v[i] * w[i]
    end
    ret
end

function cosine_sparse(i::AbstractSparseMatrix, j::AbstractSparseMatrix)
    return dot_sparse(i,j)/sqrt(norm_sparse(i)*norm_sparse(j))
end
