n = 10; x = 5;
p = .501

bin_like <- function(n,x, p)
{
	(factorial(n) / (factorial(n - x) * factorial(x))) + n*x*log(p) + n -n*x*log(1-p)

}
result = numeric(10000)
i = .001
result[1:10000] = bin_like(n,x, seq(from=.0001, to = 1, by=.0001))
plot(result)


B = 15000

result = numeric(B)

MLE = .0333

n = 3839
Ran_value = n1 = n2 = n3 = n4 = numeric(1)

for (i in 1:B)
{
	Ran_value = sample(n,1)
	n1 = Ran_value*.25*(2+MLE)
	n2 = Ran_value*.25*(1-MLE)
	n3 = n2
	n4 = Ran_value * .25 * MLE
	result[i] = (.25 * n1 + n2 -n3 + n4)/ 3.25*n1 - 2 
}







#problem 58 d-e

B = 15000

result = numeric(B)

MLE = .767

n = 190
Ran_value = n1 = n2 = n3 = n4 = numeric(1)

for (i in 1:B)
{
	Ran_value = sample(n,1)
	n1 = (Ran_value*(1-MLE)* (1-MLE))/n
	n2 = (Ran_value*2*MLE*(1-MLE))/ n
	n3 = (Ran_value * MLE*MLE)/n
 
	result[i] = (n2 +2*n3)/ -1 * n1  + 1
}

sd(result)
low_ci = quantile(result,.025); low_ci
high_ci = quantile(result,.975); high_ci

