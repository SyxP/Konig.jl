"""
`E <: EdgeType` specifies whether the edges are unweighted or weighted.
"""
abstract type EdgeType end
struct Unweighted <: EdgeType end
struct Weighted{T} <: EdgeType end

"""
`D <: EdgeDirection` specifies whether the edges are undirected or directed.
"""
abstract type EdgeDirection end
struct Undirected <: EdgeDirection end
struct Directed <: EdgeDirection end

"""
    Graph{E <: EdgeType, D <: EdgeDirection}

`Graph` is an abstract type for representing a graph.
"""
abstract type Graph{E <: EdgeType, D <: EdgeDirection} end

"""
    SimpleGraph{E <: EdgeType, D <: EdgeDirection}

`SimpleGraph` is an abstract type for representing a simple graph, in particular
it must have at most one edge between any two vertices and no edges that start and
end on the same edge.
"""
abstract type SimpleGraph{E <: EdgeType, D <: EdgeDirection} <: Graph{E, D} end

"""
    numV(G)

Returns the number of vertices in the graph `G`.
"""
numV(G::Graph) = throw(MethodError(numV, (G,)))

"""
    hasvertex(G, i)

Returns true iff `G` has vertex `v`.
"""
hasvertex(G::Graph, v) = throw(MethodError(hasvertex, (G, v,)))

"""
    V(G)

Returns an iterator of the vertices of `G`.
"""
V(G::Graph) = throw(MethodError(V, (G,)))

"""
    degree(G, v)

Returns the number of vertices in the undirected graph `G` adjacent to vertex `v`.
For a directed graph, use `indegree` or `outdegree`.
"""
degree(G::Graph{T, Undirected}, v) where T = throw(MethodError(degree, (G,v,)))

"""
    indegree(G, v)

Returns the number of edges in the directed graph `G` starting from vertex `v`.
"""
indegree(G::Graph{T, Directed}, v) where T = throw(MethodError(indegree, (G,v,)))

"""
    outdegree(G, v)

Returns the number of edges in the directed graph `G` starting from vertex `v`.
"""
outdegree(G::Graph{T, Directed}, v) where T = throw(MethodError(outdegree, (G,v,)))

"""
    N(G, v)

Returns an iterator to the neighbours of the vertex `v` in the graph `G`. If the
graph `G` is directed, use inneighbour and outneighbour instead.
"""
N(G::Graph{T, Undirected}, v) where T = throw(MethodError(N, (G,v,)))


"""
    inneighbour(G, v)

Returns an iterator to the set of vertices `w` satisfying (w,v) ∈ E(G).
"""
inneighbour(G::Graph{T, Directed}, v) where T = throw(MethodError(inneighbour, (G,v,)))
inneighbour(G::Graph{T, Undirected}, v) where T = N(G, v)

"""
    outneighbour(G, v)

Returns an iterator to the set of vertices `w` satisfying (v,w) ∈ E(G).
"""
outneighbour(G::Graph{T, Directed}, v) where T = throw(MethodError(outneighbour, (G,v,)))
outneighbour(G::Graph{T, Undirected}, v) where T = N(G, v)

"""
    numE(G)

Returns the number of edges in the graph `G`.
"""
numE(G::Graph) = throw(MethodError(numE, (G,)))

"""
    hasedge(G, i, j)

Returns true iff `G` has edge `(i, j)`.
"""
hasedge(G::Graph, v) = throw(MethodError(hasedge, (G, i, j,)))

"""
    E(G)

Returns an iterator of the edges of `G`. Note that each edge is stored as tuple
`(i, j)`. If the graph is undirected, it is guranteed that `i ≤ j`.
"""
E(G::Graph) = throw(MethodError(E, (G,)))
