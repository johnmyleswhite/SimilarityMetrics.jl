using SimilarityMetrics

# Set

a, b = Set{Int}(), Set{Int}()

add!(a, 1); add!(a, 2)
add!(b, 2); add!(b, 3)
@assert jaccard(a, b) == length(intersect(a, b)) / length(union(a, b))

add!(a, 4)
@assert jaccard(a, b) == length(intersect(a, b)) / length(union(a, b))

add!(b, 1)
@assert jaccard(a, b) == length(intersect(a, b)) / length(union(a, b))

# IntSet

a, b = IntSet(), IntSet()

add!(a, 1); add!(a, 2)
add!(b, 2); add!(b, 3)
@assert jaccard(a, b) == length(intersect(a, b)) / length(union(a, b))

add!(a, 4)
@assert jaccard(a, b) == length(intersect(a, b)) / length(union(a, b))

add!(b, 1)
@assert jaccard(a, b) == length(intersect(a, b)) / length(union(a, b))

# AbstractVector

a, b = falses(4), falses(4)

a[1] = true; a[2] = true
b[2] = true; b[3] = true
@assert jaccard(a, b) == 1/3

a[4] = true
@assert jaccard(a, b) == 1/4

b[1] = true
@assert jaccard(a, b) == 1/2
