SimilarityMetrics.jl
====================

Available metrics:

* `cosine(a, b)`: Cosine similarity between sets/vectors.
* `expl1(a, b)`: Exponentiated L1 distance between vectors.
* `expl2(a, b)`: Exponentiated L2 distance between vectors.
* `jaccard(a, b)`: Cardinality of intersection divided by cardinality of union for Set's and IntSet's, extended Jaccard definition for AbstractVector's.
* `matching(a, b)`: Cardinality of intersection for Set's and IntSet's, dot product for AbstractVector's. Sometimes called the Simple Matching Coefficient.
* `overlap(a, b)`: Cardinality of intersection divided by minimum of cardinality of two inputs. AbstractVector's use definition like extended Jaccard.
* `pearson(a, b)`: Pearson correlation between sets/vectors.

# Usage Examples

	using SimilarityMetrics

	a, b = Set{ASCIIString}(), Set{ASCIIString}()

	add!(a, "a")
	add!(a, "b")

	add!(b, "b")
	add!(b, "c")

	cosine(a, b)
	expl1(a, b)
	expl2(a, b)
	jaccard(a, b)
	matching(a, b)
	overlap(a, b)
	pearson(a, b)

	a, b = [0, 0, 0, 0], [0, 0, 0, 0]

	a[1] = 1
	a[2] = 1

	b[2] = 1
	b[3] = 1

	cosine(a, b)
	expl1(a, b)
	expl2(a, b)
	jaccard(a, b)
	matching(a, b)
	overlap(a, b)
	pearson(a, b)
