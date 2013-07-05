#
# Correctness Tests
#

using Base.Test
using SimilarityMetrics

my_tests = ["test/cosine.jl",
            "test/expl1.jl",
            "test/expl2.jl",
            "test/jaccard.jl",
            "test/matching.jl",
            "test/overlap.jl",
            "test/pearson.jl"]

println("Running tests:")

for my_test in my_tests
    println(" * $(my_test)")
    include(my_test)
end
