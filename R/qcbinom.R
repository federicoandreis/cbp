#' @title Continuous Binomial Quantile Function
#' @description Computes the quantile of the continuous binomial distribution.
#' @param p vector of probabilities.
#' @param nu number of trials.
#' @param pp probability of success on each trial.
#' @return The quantile of the continuous binomial distribution at each point specified by p.
#' @examples
#' \dontrun{
#' # Quantile of continuous binomial distribution
#' qcbinom(0.5, 1, 0.5)
#' }
#' @export
qcbinom <- Vectorize(function(p,nu,pp) { # quantile function

  stopifnot(p>0&p<1&pp>0&pp<1&nu>0)
  res <- uniroot(function(x) zipfR::Rbeta(pp,x,nu-x+1,lower=F)-p,interval=c(0+1E-06,nu+1-1E-06),
                 tol=.Machine$double.eps^0.5)$root
  stopifnot(res<=nu+1&res>=0)
  return(res)

})
