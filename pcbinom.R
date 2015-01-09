
pcbinom <- Vectorize(function(q,nu,pp) { # probability function === pbinom(q-1,nu,pp)
  
  stopifnot(pp>0&pp<1&nu>0)
  ifelse(q<=0,0,ifelse(q>=nu+1,1,Rbeta(pp,q,nu-q+1,lower=F)))
  
})
