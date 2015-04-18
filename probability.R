#simulation of pulling two balls from an urn without replacement
#problem1
#two dice without replacement
set.seed(1); m = 100000; summed = numeric(m);
for (i in 1:m)
{
	summed[i] = sum(sample(1:6,2, repl=FALSE))
}
probability = (summary(as.factor(sumed)))/m; probability
less_than7_even = probability[1] + probability[3] + probability[5]; less_than7_even;
cuts = c(1.5:12.5)
hist(sumed, breaks =cuts, prob=TRUE)




#two dice with replacement
set.seed(1);
m = 100000
dice1 = sample(1:6,m,repl=TRUE)
dice2 = sample(1:6,m, repl = TRUE)
summed = dice1+dice2
probability = (summary(as.factor(summed)))/m; probability
less_than7_even = probability[1] + probability[3] + probability[5]; less_than7_even;
cuts = c(1.5:12.5)
hist(sumed, breaks =cuts, prob=TRUE)



  
  
#simulation of three independent uniform distributions in a 100000 row matrix
#problem2
z = 100000

y = matrix(z, nrow = z, ncol=3, byrow=TRUE)
uni_median = numeric(z)

#needed to first install and load matrixStats package
install.packages("matrix.Stats") 
library(matrixStats)
for (i in 1:z)
{
  y[i,1] = runif(1,0,1)
  y[i,2] = runif(1,0,1)
  y[i,3] = runif(1,0,1)
  uni_median[i] = rowMedians(y,na.rm=FALSE)
  
}
tail(uni_median, 10)




#problem 3

set.seed(1); a = 100000; class = 40; b = numeric(class); c = numeric(a);
for (i in 1:a)
{
  b = sample(1:20,class, repl = TRUE);
  c[i] = length(unique(b))
}
probabilities = (summary(as.factor(c))) / a; probabilities;
cuts3 = c(0.5:20.5)
hist (c, breaks =cuts3, prob=TRUE)
mean(c); sd(c);



#problem 4
#for a uniform distribution
set.seed(1); m = 100000; number_of_ties = numeric(m);
for (i in 1:m)
{
	number_of_ties[i] =  25 - length(unique(floor((runif(25,0,1)*100))))
}
probability = (summary(as.factor(number_of_ties)))/m; probability

mean(number_of_ties)


# for a normal(0,1) distribution
set.seed(1); m = 100000; number_of_ties = numeric(m);
for (i in 1:m)
{
	number_of_ties[i] =  25 - length(unique(floor((rnorm(25,mean=0,sd=1)*100))))
}
probability = (summary(as.factor(number_of_ties)))/m; probability

mean(number_of_ties)

