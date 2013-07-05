module SimilarityMetrics
	using Distance

	export cosine, expl1, expl2, jaccard, matching, overlap, pearson

	typealias AbstractSet Union(Set, IntSet)

	include("cosine.jl")
	include("expl1.jl")
	include("expl2.jl")
	include("jaccard.jl")
	include("matching.jl")
	include("overlap.jl")
	include("pearson.jl")
end
