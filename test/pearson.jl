using SimilarityMetrics

# Set

a, b = Set{Int}(), Set{Int}()

add!(a, 1); add!(a, 2)
add!(b, 2); add!(b, 3)
@assert isapprox(pearson(a, b), length(intersect(a, b)) / sqrt(length(a) * length(b)))

add!(a, 4)
@assert isapprox(pearson(a, b), length(intersect(a, b)) / sqrt(length(a) * length(b)))

add!(b, 1)
@assert isapprox(pearson(a, b), length(intersect(a, b)) / sqrt(length(a) * length(b)))

# IntSet

a, b = IntSet(), IntSet()

add!(a, 1); add!(a, 2)
add!(b, 2); add!(b, 3)
@assert isapprox(pearson(a, b), length(intersect(a, b)) / sqrt(length(a) * length(b)))

add!(a, 4)
@assert isapprox(pearson(a, b), length(intersect(a, b)) / sqrt(length(a) * length(b)))

add!(b, 1)
@assert isapprox(pearson(a, b), length(intersect(a, b)) / sqrt(length(a) * length(b)))

# AbstractVector

a, b = falses(4), falses(4)

a[1] = true; a[2] = true
b[2] = true; b[3] = true
@assert isapprox(pearson(a, b), cor(a, b))

a[4] = true
@assert isapprox(pearson(a, b), cor(a, b))

b[1] = true
@assert isapprox(pearson(a, b), cor(a, b))
