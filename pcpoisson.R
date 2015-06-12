pcpoisson <- Vectorize(function(q,lambda) { # probability function

  stopifnot(lambda>0&q>=0)
  ifelse(q<=0,0,Rgamma(q,lambda,lower=F))

})
