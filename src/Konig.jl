module Konig

using DataStructures
using LinearAlgebra
using SparseArrays

export
    # Abstract Graph Interface
    EdgeType, Undirected, Directed,
    EdgeDirection, Weighted, Unweighted,
    Graph, SimpleGraph,
    numV, numE, hasvertex, hasedge, V, E,
    degree, indegree, outdegree,
    N, inneighbour, outneighbour

include("abstractgraph.jl")

end # module
