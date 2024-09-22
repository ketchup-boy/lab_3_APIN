#'Illustration of the Euclidean algorithm that is finding the greatest common denominator between two numbers
#'
#' @param a Numeric value that is bigger than b
#' @param b Numeric value that is smaller than a
#' @return greatest common divisor of numbers a and b is found
#' @references https://en.wikipedia.org/wiki/Euclidean_algorithm



euclidean <- function(a, b) {
  while(b != 0){
    n <- b
    b <- a %% b
    a <- n
  }
  return(a)
  
}

