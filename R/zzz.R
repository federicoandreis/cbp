#' Continuous Binomial and Poisson Distributions
#'
#' These functions provide information about the continuous binomial and Poisson distribution functions,
#' including density, distribution, quantile functions and random generation.
#'
#' @name contDist
#' @aliases dcbinom pcbinom qcbinom rcbinom dcpoisson pcpoisson qcpoisson rcpoisson
#' @docType package
#' @import cubature zipfR
#' @title Continuous Binomial and Poisson Distributions
#' @description Functions to perform operations on continuous binomial and Poisson distributions.
#' @details The continuous binomial distribution is a probability distribution that generalizes the binomial distribution to non-integer values.
#' The continuous Poisson distribution is a probability distribution that generalizes the Poisson distribution to non-integer values.
#' @references Ilienko, A. (2013): Continuous counterparts of Poisson and Binomial distributions and their properties. Annales Univ. Sci. Budapest., Sect. Comp., 39, 137-147. http://arxiv.org/abs/1303.5990
#' @seealso \code{\link[cubature]{adaptIntegrate}}, \code{\link[zipfR]{Rbeta}}, \code{\link[zipfR]{Rgamma}}
#' @keywords distributions
#' @examples
#' \dontrun{
#' # Density of continuous binomial distribution
#' dcbinom(0.5, 1, 0.5)
#' # Density of continuous Poisson distribution
#' dcpoisson(0.5, 1)
#' }
#' @author Your Name [aut, cre]
#' @importFrom stats runif
#' @importFrom stats uniroot
#' @importFrom stats dnorm
#' @importFrom stats rbeta
#' @importFrom stats rgamma
#' @importFrom cubature adaptIntegrate
#' @importFrom zipfR Rbeta
#' @importFrom zipfR Rgamma
#' @export
NULL
