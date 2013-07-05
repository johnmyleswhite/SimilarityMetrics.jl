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

@printf "Running tests:\n"

for my_test in my_tests
    @printf " * %s\n" my_test
    include(my_test)
end
