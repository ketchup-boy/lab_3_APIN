#' required wiki graph data
#'
#' This graph is an undirected graph with 6 nodes connected with posetively weighted edges
#'
#' @format A data frame with 18 rows and 3 variables:
#' \describe{
#'   \item{v1}{An integer vector containing representations for nodes.}
#'   \item{v2}{An integer vector containing representation for nodes that are connected to the nodes in v1 via an edge.}
#'   \item{w}{An integer vector containing the weights for the edges between the nodes in v1 and v2.}
#' }
#' @source Generated for demonstration purposes.
#' @references https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm
#' @examples
#' # Load the data
"wiki_graph"

wiki_graph <- data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
           v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
           w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))

save(wiki_graph, file = "data/wiki_graph.rda")
 #data(wiki_graph)
