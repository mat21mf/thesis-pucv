set.seed(1234)
a <- round(runif(1000,1,11))

set.seed(321)
b <- round(runif(1000,1,11))

print( table( a, b) )
