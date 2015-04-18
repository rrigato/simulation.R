#simulation of pulling two balls from an urn without replacement
#problem1

m = 100000
x = numeric(m)
for (i in 1:m)
{
x[i] = sum(sample(1:6,2))
}
cuts = c(2:12)
hist(x, breaks =cuts, prob=TRUE)

prob_even_less_than_seven =
 
  
  
#simulation of three independent uniform distributions in a 100000 row matrix
#problem2
z = 100000

y = matrix(z, nrow = z, ncol=3, byrow=TRUE)
uni_median = numeric(z)

#needed to first install and load matrixStats package
#install.packages("matrix.Stats") 
#library(matrixStats)
for (i in 1:z)
{
  y[i,1] = runif(1,0,1)
  y[i,2] = runif(1,0,1)
  y[i,3] = runif(1,0,1)
  uni_median[i] = rowMedians(y,na.rm=FALSE)
  
}
tail(uni_median, 10)




#problem 3
a = 100000
d = 40
b = numeric(40)
c = numeric(a)
for (n in i:a)
{
  for (k in 1:40)
  {
    b[i] = sample(1:20, 1, repl = TRUE)
  }
  
  c[i] = length(unique(b[i]))
}
cuts3 = c(0:25)
hist (c, breaks =cuts3, prob=TRUE)

