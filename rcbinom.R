rcbinom <- Vectorize(function(size,nu,pp) { #random generation function
  
  stopifnot(pp>0&pp<1&size>0&nu>0)
  qcbinom(runif(size),nu,pp)
  
})
