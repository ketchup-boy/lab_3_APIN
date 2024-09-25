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
#' data(wiki_graph)
