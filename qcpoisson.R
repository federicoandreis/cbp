qcpoisson <- Vectorize(function(p,lambda) { # quantile function

  stopifnot(p>0&p<1&lambda>0)
  uniroot(function(x) Rgamma(x,lambda,lower=F)-p,interval=c(0+1E-05,1E05))$root

})
