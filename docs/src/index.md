# Konig.jl

The package *Konig.jl* is a library of efficient algorithms on graphs. Named after Dénes Kőnig, it uses graph-theoretic knowledge to allow algorithms to specialise on the special properties of graphs (i.e. Bipartite Graphs, Trees).

The few key differences between this package and other graph algorithm packages is:
  * The usage of (linear) algebraic techniques to speed up algorithms. In this view, adjacency matrices are simply matrices and adjacency lists can be viewed as a special encoding of a (possibly) sparse matrices.
  * Using multiple dispatch to allow algorithms to specialise on different types of graphs.
  * An experimental testbed of algorithms from theoretical computer science. This would mean that the algorithms here could be highly volatile, as we attempt to iterate and improve.
