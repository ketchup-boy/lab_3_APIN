dijkstra <- function(graph, start_node){
  num_of_nodes <- length(unique(graph[,1]))
  distances <- c(rep(100000, num_of_nodes))
  parent_node <- c(rep(NA, num_of_nodes))
  distances[start_node] <- 0
  end_distances <- c(rep(100000, num_of_nodes))
  end_distances[start_node] <- 0
  searched <- c()
  while(length(searched) < (num_of_nodes)){
    curr_node <- which.min(distances)
    end_distances[curr_node] <- distances[curr_node]
    searched <- append(searched, curr_node)
    indices <- which(graph$v1 == curr_node)
    search_space <- graph[indices,]
    graph <- graph[-indices,]
    indices <- which(graph$v2 == curr_node)
    graph <- graph[-indices,]
    for(node in search_space$v2){
      if(distances[node] > distances[curr_node] + search_space[which(search_space$v2 == node),3]){
        distances[node] <- distances[curr_node] + search_space[which(search_space$v2 == node),3]
        parent_node[node] <- curr_node
      }    
    } 
    distances[curr_node] <- 10000000
  }
  res <- data.frame(parent = parent_node, length = end_distances)
  return(res)
}
