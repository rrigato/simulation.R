
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

set.seed(2842)
size = 1:43886
n = 500
N= 43886
head(size)
for (z in 1:5) #repeats sampling process 5 times
{
	random_num = sample(size,n, replace=FALSE) #gets random obs from 1 to 43886
	random_obs = numeric(n); #initializes vector that will contain family values
	#applies the observations that were randomly drawn
	random_obs = families[random_num[1:n],];

	#part i
	#estimate of female headed families
	p_hat = (sum(random_obs[1:n,1] == 3)/n); p_hat
	
	#estimate of the standard error
	porp_se = sqrt( ( ( (p_hat*(1-p_hat))/(n-1) ) * ((N-n)/N)) )
	porp_se
	
	#wife_lead_CI = p_hat +- 1.96*porp_se
	



	#part ii
	random_num2 = sample(size,n,replace=FALSE) #gets random obs from 1 to 43886
	random_obs2 = numeric(n); 
	random_obs2 = families[random_num[1:n],];
	children_se = ( sd(random_obs2[1:n,3]) / sqrt(n) ) * sqrt( ( (N-n) / N ) ); children_se
	
	#average children CI 
	#ave_child_CI = mean(random_obs2[1:n,3]) +- 1.96*children_se



	#part iii
	random_num3 = sample(size,n, replace=FALSE) #gets random obs from 1 to 43886
	random_obs3 = numeric(n); 	
	random_obs3 = families[random_num[1:n],];

	#part i
	#gives only those who did not have a diploma
	p_hat3 = (sum(random_obs3[1:n,6] < 39)/n); p_hat
	
	#estimate of the standard error
	porp_se3 = sqrt( ( ( (p_hat3*(1-p_hat3))/(n-1) ) * ((N-n)/N)) )
	porp_se3
	#nohs_CI = p_hat +- 1.96*porp_se



	#part iv
	random_num4 = sample(size,n,replace=FALSE) #gets random obs from 1 to 43886
	random_obs4 = numeric(n); 
	random_obs4 = families[random_num[1:n],];
	income_se = ( sd(random_obs4[1:n,4]) / sqrt(n) ) * sqrt( ( (N-n) / N ) ); income_se
	
	#income CI 
	#income_CI = mean(random_obs4[1:n,3]) +- 1.96*children_se
	

	partI = matrix(nrow= 5,ncol=4, byrow = TRUE)
	names = c('lowCI','HighCI', 'SE', 'Proportion')
	names2= c('Sample 1',  'Sample 2','Sample 3','Sample 4','Sample 5')
	colnames(partI) = names 
	rownames(partI) = names2
	partI

	partIII = matrix(nrow= 5,ncol=4, byrow = TRUE)
	colnames(partI) = names 
	rownames(partI) = names2
	partIII

}
