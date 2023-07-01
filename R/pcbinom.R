#' @title Continuous Binomial Probability Function
#' @description Computes the probability of the continuous binomial distribution.
#' @param q vector of quantiles.
#' @param nu number of trials.
#' @param pp probability of success on each trial.
#' @return The probability of the continuous binomial distribution at each point specified by q.
#' @examples
#' \dontrun{
#' # Probability of continuous binomial distribution
#' pcbinom(0.5, 1, 0.5)
#' }
#' @export
pcbinom <- Vectorize(function(q,nu,pp) { # probability function === pbinom(q-1,nu,pp)

  stopifnot(pp>0&pp<1&nu>0)
  ifelse(q<=0,0,ifelse(q>=nu+1,1,zipfR::Rbeta(pp,q,nu-q+1,lower=F)))

})
