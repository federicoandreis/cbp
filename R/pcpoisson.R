#' @title Continuous Poisson Probability Function
#' @description Computes the probability of the continuous Poisson distribution.
#' @param q vector of quantiles.
#' @param lambda rate parameter.
#' @return The probability of the continuous Poisson distribution at each point specified by q.
#' @examples
#' \dontrun{
#' # Probability of continuous Poisson distribution
#' pcpoisson(0.5, 1)
#' }
#' @export
pcpoisson <- Vectorize(function(q,lambda) { # probability function

  stopifnot(lambda>0&q>=0)
  ifelse(q<=0,0,zipfR::Rgamma(q,lambda,lower=F))

})
