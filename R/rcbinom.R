#' @title Continuous Binomial Random Generation Function
#' @description Generates random deviates from a continuous binomial distribution.
#' @param size number of observations.
#' @param nu number of trials.
#' @param pp probability of success on each trial.
#' @return A vector of random deviates from the continuous binomial distribution.
#' @examples
#' \dontrun{
#' # Generate random deviates from a continuous binomial distribution
#' rcbinom(10, 1, 0.5)
#' }
#' @export
rcbinom <- Vectorize(function(size,nu,pp) { #random generation function

  stopifnot(pp>0&pp<1&size>0&nu>0)
  qcbinom(runif(size),nu,pp)

})
