#' @title Continuous Poisson Quantile Function
#' @description Computes the quantile of the continuous Poisson distribution.
#' @param p vector of probabilities.
#' @param lambda rate parameter.
#' @return The quantile of the continuous Poisson distribution at each point specified by p.
#' @examples
#' \dontrun{
#' # Quantile of continuous Poisson distribution
#' qcpoisson(0.5, 1)
#' }
#' @export
qcpoisson <- Vectorize(function(p,lambda) { # quantile function

  stopifnot(p>0&p<1&lambda>0)
  uniroot(function(x) zipfR::Rgamma(x,lambda,lower=F)-p,interval=c(0+1E-05,1E05))$root

})
