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
