euclidean <- function(a, b) {
  while(b != 0){
    n <- b
    b <- a %% b
    a <- n
  }
  return(a)
  
}

