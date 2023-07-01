#' @title Continuous Poisson Random Generation Function
#' @description Generates random deviates from a continuous Poisson distribution.
#' @param size number of observations.
#' @param lambda rate parameter.
#' @return A vector of random deviates from the continuous Poisson distribution.
#' @examples
#' \dontrun{
#' # Generate random deviates from a continuous Poisson distribution
#' rcpoisson(10, 1)
#' }
#' @export
rcpoisson <- Vectorize(function(size,lambda) { #random generation function

  stopifnot(lambda>0&size>0)
  qcpoisson(runif(size),lambda)

})
