rcpoisson <- Vectorize(function(size,lambda) { #random generation function

  stopifnot(lambda>0&size>0)
  qcpoisson(runif(size),lambda)

})
