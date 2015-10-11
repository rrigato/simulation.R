
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
sample_sd = numeric(100)
for (B in 1:100)
{
	numbers_chosen = sample(size,400, replace=FALSE); numbers_chosen 
	B_results = families[numbers_chosen[1:400],]
	head(B_results)	
		
	sample_mean[B] = mean(B_results[1:400,4])	
	sample_sd[B] = sd(B_results[1:400,4])
}
sample_mean
sample_sd

#part II
hist(sample_mean)
hist(sample_sd)


#part III superimpose
super1 = mean(sample_mean); super2 = sd(sample_sd); super1; super2
hist(sample_mean, prob = TRUE)
curve(dnorm(x, mean = super1, sd = super2 ),  col = "green", add=TRUE, lwd= 5)

#part IV
theory = ecdf(sample_mean)

plot(theory, )


#part V 
#normal probability plot
qqnorm(sample_mean)
qqline(sample_mean)



#part VI
#95 %CI and how many contain population mu
population_mu = mean(families[1:N,4]); population_mu

counter = 0;
for (t in 1:100)
{
	se = (sample_sd[t]/sqrt(400)) * ( (N-400)/N );
	if ( (1.96*se + sample_mean[t])  >= population_mu
		& (sample_mean[t] - 1.96*se) <= population_mu )
	{
		counter = counter +1;
	}
}
#number of intervals that contain the population mean
counter




#part VII


numbers_chosen2 = numeric(100)
B_results2 = numeric(100)
sample_mean2 = numeric(100)
sample_sd2 = numeric(100)
for (C in 1:100)
{
	numbers_chosen2 = sample(size,100, replace=FALSE);  
	B_results2 = families[numbers_chosen2[1:100],]
		
		
	sample_mean2[C] = mean(B_results2[1:100,4])	
	sample_sd2[C] = sd(B_results2[1:100,4])
}
sample_mean2
sample_sd2


hist(sample_mean2)
hist(sample_sd2)



#part C
#Both = subset(families,families[,1] == 1)
#Dad = subset(families,families[,1] == 2)
#Mom = subset(families,families[,1] == 3)
#nrow(Both) + nrow(Mom) + nrow(Dad)

ran_num = sample(size,500, replace=FALSE)

#book was unclear hear so I took one srs of 500 because it didn't say to take
#an srs for each familiy type
Both = subset(families[ran_num,], families[ran_num,1]==1)
Dad = subset(families[ran_num,], families[ran_num,1]==2)
Mom = subset(families[ran_num,], families[ran_num,1]==3)

nrow(Both) + nrow(Dad) + nrow(Mom)
par(mfrow=c(2,2))
hist(Both[,4],breaks = 8 )
hist(Dad[,4],breaks = 8)
hist(Mom[,4],breaks = 8)

par(mfrow=c(2,2))
boxplot(Both[,4], main = 'BOTH')
boxplot(Dad[,4], main = 'DAD')
boxplot(Mom[,4], main = 'MOM')




#part D
#create datasets based on region 
North = subset(families,families[,5] == 1)
East = subset(families,families[,5] == 2)
South = subset(families,families[,5] == 3)
West = subset(families, families[,5]==4)

#test to make number of obs matches number in problem set
nrow(North)
nrow(East)
nrow(South)
nrow(West)

size
Nsam = sample(1:nrow(North),400, replace=FALSE)
Esam = sample(1:nrow(East),400, replace=FALSE)
Ssam = sample(1:nrow(South),400, replace=FALSE)
Wsam = sample(1:nrow(West),400, replace=FALSE)
summary(Esam); summary(Wsam); summary(Ssam)


par(mfrow=c(2,2))
boxplot(North[Nsam,4], main = 'North Income')
boxplot(South[Ssam,4], main = 'South Income')
boxplot(East[Esam,4], main = 'East Income')
boxplot(West[Wsam,4], main = 'West Income')



#reset back to one window
par(mfrow=c(1,1))
