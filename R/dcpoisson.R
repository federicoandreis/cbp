#' @title Continuous Poisson Density Function
#' @description Computes the density of the continuous Poisson distribution.
#' @param x vector of quantiles.
#' @param lambda rate parameter.
#' @return The density of the continuous Poisson distribution at each point specified by x.
#' @examples
#' \dontrun{
#' # Density of continuous Poisson distribution
#' dcpoisson(0.5, 1)
#' }
#' @export
dcpoisson <- Vectorize(function(x,lambda) { # density function

  stopifnot(lambda>0)
  if (lambda>30) dnorm(x,lambda,sqrt(lambda)) else {
    if (x<=0) 0
    else {

      aa <- exp(-2*lgamma(x))
      bb <- function(s) exp(-(s[1]+s[2]))*(s[1]*s[2])^(x-1)*log(s[1]/s[2])
      aa*cubature::adaptIntegrate(bb,c(lambda,0+1E-10),c(1E04,lambda))$integral

    }

  }
}
)
