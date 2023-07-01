#' @title Continuous Binomial Density Function
#' @description Computes the density of the continuous binomial distribution.
#' @param x vector of quantiles.
#' @param nu number of trials.
#' @param pp probability of success on each trial.
#' @return The density of the continuous binomial distribution at each point specified by x.
#' @examples
#' \dontrun{
#' # Density of continuous binomial distribution
#' dcbinom(0.5, 1, 0.5)
#' }
#' @export
dcbinom <- Vectorize(function(x,nu,pp) { # density function

  stopifnot(pp>0&pp<1&x<=nu+1&nu>0)
  if (x<=0|x>=nu+1) 0
  else {
    ifelse(x>(nu+1)/2&x<nu&pp>.5, {
      aa <- exp(-2*lbeta(x,nu-x+1))
      bb <- function(s) (s[1]*s[2])^(nu-x)*((1-s[1])*(1-s[2]))^(x-1)*(log((1-s[2])/s[2])-log((1-s[1])/s[1]))
      aa*cubature::adaptIntegrate(bb,c(0,0),c(1,1-pp))$integral
    },
    {
      aa <- exp(-2*lbeta(x,nu-x+1))
      bb <- function(s) (s[1]*s[2])^(x-1)*((1-s[1])*(1-s[2]))^(nu-x)*(log((1-s[2])/s[2])-log((1-s[1])/s[1]))
      aa*cubature::adaptIntegrate(bb,c(pp,1E-10),c(1-1E-10,pp))$integral

    })}
})
