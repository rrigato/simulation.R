
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



	#initialize matricies that will be used for results

	partI = matrix(nrow= 5,ncol=4, byrow = TRUE)
	names = c('lowCI','HighCI', 'SE', 'Proportion')
	names2= c('Sample 1',  'Sample 2','Sample 3','Sample 4','Sample 5')
	colnames(partI) = names 
	rownames(partI) = names2
	partI

	partIII = matrix(nrow= 5,ncol=4, byrow = TRUE)
	colnames(partIII) = names 
	rownames(partIII) = names2
	partIII

	partII = matrix(nrow= 5,ncol=4, byrow = TRUE)
	names3 = c('lowCI','HighCI', 'SE', 'Mean')
	colnames(partII) = names3 
	rownames(partII) = names2
	partII

	partIV = matrix(nrow= 5,ncol=4, byrow = TRUE)
	names3 = c('lowCI','HighCI', 'SE', 'Mean')
	colnames(partIV) = names3 
	rownames(partIV) = names2
	partIV

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
	
	#populating matrix with results
	partI[z,1] = p_hat - 1.96*porp_se
	partI[z,2] = p_hat + 1.96*porp_se
	partI[z,3] = porp_se
	partI[z,4] = p_hat



	#part ii
	random_num2 = sample(size,n,replace=FALSE) #gets random obs from 1 to 43886
	random_obs2 = numeric(n); 
	random_obs2 = families[random_num[1:n],];
	children_se = ( sd(random_obs2[1:n,3]) / sqrt(n) ) * sqrt( ( (N-n) / N ) ); children_se
	
	#average children CI 
	#ave_child_CI = mean(random_obs2[1:n,3]) +- 1.96*children_se


	partII[z,1] = mean(random_obs2[1:n,3]) - 1.96*children_se
	partII[z,2] = mean(random_obs2[1:n,3]) + 1.96*children_se
	partII[z,3] = children_se
	partII[z,4] = mean(random_obs2[1:n,3])





	#part iii
	random_num3 = sample(size,n, replace=FALSE) #gets random obs from 1 to 43886
	random_obs3 = numeric(n); 	
	random_obs3 = families[random_num[1:n],];

	
	#gives only those who did not have a diploma
	p_hat3 = (sum(random_obs3[1:n,6] < 39)/n); p_hat
	
	#estimate of the standard error
	porp_se3 = sqrt( ( ( (p_hat3*(1-p_hat3))/(n-1) ) * ((N-n)/N)) )
	porp_se3
	#nohs_CI = p_hat +- 1.96*porp_se

	#populating matrix with results
	partIII[z,1] = p_hat3 - 1.96*porp_se3
	partIII[z,2] = p_hat3 + 1.96*porp_se3
	partIII[z,3] = porp_se3
	partIII[z,4] = p_hat3




	#part iv
	random_num4 = sample(size,n,replace=FALSE) #gets random obs from 1 to 43886
	random_obs4 = numeric(n); 
	random_obs4 = families[random_num[1:n],];
	income_se = ( sd(random_obs4[1:n,4]) / sqrt(n) ) * sqrt( ( (N-n) / N ) ); income_se
	
	#income CI 
	#income_CI = mean(random_obs4[1:n,4]) +- 1.96*income_se
	


	partIV[z,1] = mean(random_obs4[1:n,4]) - 1.96*income_se
	partIV[z,2] = mean(random_obs4[1:n,4]) + 1.96*income_se
	partIV[z,3] = income_se
	partIV[z,4] = mean(random_obs4[1:n,4])



}
partI
partII
partIII
partIV











#part B

numbers_chosen = numeric(400)
B_results = numeric(400)
sample_mean = numeric(100)
for (B in 1:100)
{
	numbers_chosen = sample(size,400, replace=FALSE); numbers_chosen 
	B_results = families[numbers_chosen[1:400],]
	head(B_results)	
		
	sample_mean[B] = mean(B_results[1:400,4])	
}
sample_mean
