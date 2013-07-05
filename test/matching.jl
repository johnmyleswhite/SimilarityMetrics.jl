using SimilarityMetrics

# Set

a, b = Set{Int}(), Set{Int}()

add!(a, 1); add!(a, 2)
add!(b, 2); add!(b, 3)
@assert matching(a, b) == length(intersect(a, b))

add!(a, 4)
@assert matching(a, b) == length(intersect(a, b))

add!(b, 1)
@assert matching(a, b) == length(intersect(a, b))

# IntSet

a, b = IntSet(), IntSet()

add!(a, 1); add!(a, 2)
add!(b, 2); add!(b, 3)
@assert matching(a, b) == length(intersect(a, b))

add!(a, 4)
@assert matching(a, b) == length(intersect(a, b))

add!(b, 1)
@assert matching(a, b) == length(intersect(a, b))

# AbstractVector

a, b = falses(4), falses(4)

a[1] = true; a[2] = true
b[2] = true; b[3] = true
@assert matching(a, b) == 1

a[4] = true
@assert matching(a, b) == 1

b[1] = true
@assert matching(a, b) == 2
