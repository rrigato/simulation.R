#medical screening test
set.seed(2842);
#gibbs sampler
m = 100000; PI = numeric(m); PI[1] = .5
alpha = 1; beta = 1; eta = .96; theta = .93 #beta prior, sensitivity, specificity
n = 500; A = 36; B = n - A  #500 observations, 36 positive
for (i in 2:m) {
 num.x = PI[i-1]*eta; den.x = num.x + (1-PI[i-1])*(1 - theta)
 X = rbinom(1, A, num.x/den.x)
 num.y = PI[i-1]*(1 - eta); den.y = num.y + (1-PI[i-1])*theta
 Y = rbinom(1, B, num.y/den.y) # P(D = 1|T = 0) = 1 - gamma
 PI[i] = rbeta(1, X + Y + alpha, n - X - Y + beta) }


aft.brn = seq(m/2 + 1,m)
mean(PI[aft.brn])  #point estimate of prevalence
quantile(PI[aft.brn], c(.025, .975)) 

set.seed(2842)
#informative prior for beta (1.5,36)
m = 100000; PI = numeric(m); PI[1] = .5
alpha = 1.5; beta = 36; eta = .96; theta = .93
n = 500; A = 36; B = n - A
for (i in 2:m)
{
 num.x = PI[i-1]*eta; den.x = num.x + (1-PI[i-1])*(1 - theta)
 X = rbinom(1, A, num.x/den.x)
 num.y = PI[i-1]*(1 - eta); den.y = num.y + (1-PI[i-1])*theta
 Y = rbinom(1, B, num.y/den.y)
 PI[i] = rbeta(1, X + Y + alpha, n - X - Y + beta)
 }

aft.brn = seq(m/2 + 1,m);
 mean(PI[aft.brn]) #point estimate for prevalence
quantile(PI[aft.brn], c(.025, .975))  #95% CI for prevalence

par(mfrow=c(2,1))
 plot(aft.brn, PI[aft.brn], type="l"); hist(PI[aft.brn], prob=T, col="wheat")
par(mfrow=c(1,1)) 
