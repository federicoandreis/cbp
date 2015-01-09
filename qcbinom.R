
qcbinom <- Vectorize(function(p,nu,pp) { # quantile function
  
  stopifnot(p>0&p<1&pp>0&pp<1&nu>0)
  res <- uniroot(function(x) Rbeta(pp,x,nu-x+1,lower=F)-p,interval=c(0+1E-06,nu+1-1E-06),
                 tol=.Machine$double.eps^0.5)$root
  stopifnot(res<=nu+1&res>=0)
  return(res)
  
})
