dcpoisson <- Vectorize(function(x,lambda) { # density function

  stopifnot(lambda>0)
  if (lambda>30) dnorm(x,lambda,sqrt(lambda)) else {
  if (x<=0) 0
  else {

    aa <- exp(-2*lgamma(x))
    bb <- function(s) exp(-(s[1]+s[2]))*(s[1]*s[2])^(x-1)*log(s[1]/s[2])
    aa*adaptIntegrate(bb,c(lambda,0+1E-10),c(1E04,lambda))$integral

    }

  }
}
)
