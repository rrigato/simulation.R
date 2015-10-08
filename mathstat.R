
#problem 58
set.seed(2842)
Pop = 1:100; sample_distribution = numeric(100);
for(i in 1:100)
{
	sample_distribution[i] = mean(sample(Pop,12))
}

hist(sample_distribution)






#problem 67 part a)
families = read.csv(url("http://statistics.csueastbay.edu/~jkerr/STAT65012/families.txt"), header=T)
families[1:10,]
#43886
library(ggplot2)

summary(sample_distribution)
dim(sample_distribution)
set.seed(2842)
size = 1:43886
n = 500
N= 43886
head(size)
for (z in 1:5) #repeats sampling process 5 times
{
	random_num = sample(size,n) #gets random obs from 1 to 43886
	random_obs = numeric(n); #initializes vector that will contain family values
	#applies the observations that were randomly drawn
	random_obs = families[random_num[1:n],];

	#part i
	#estimate of female headed families
	p_hat = (sum(random_obs[1:n,1] == 3)/n); 
	
	#estimate of the standard error
	porp_se = sqrt( ( (p_hat-(1-p_hat)/(n-1) ) * ((N-n)/N)) )
	porp_se
}







