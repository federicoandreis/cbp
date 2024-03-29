% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qcbinom.R
\name{qcbinom}
\alias{qcbinom}
\title{Continuous Binomial Quantile Function}
\usage{
qcbinom(p, nu, pp)
}
\arguments{
\item{p}{vector of probabilities.}

\item{nu}{number of trials.}

\item{pp}{probability of success on each trial.}
}
\value{
The quantile of the continuous binomial distribution at each point specified by p.
}
\description{
Computes the quantile of the continuous binomial distribution.
}
\examples{
\dontrun{
# Quantile of continuous binomial distribution
qcbinom(0.5, 1, 0.5)
}
}
