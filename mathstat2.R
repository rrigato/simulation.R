likelihood = numeric(10000)
x = 1:10000
for (i in x)
{

	sampl = choose(50,20)
	nontag = choose(i -100, 30)
	pop = choose(i,50)

	likelihood[i] = (sampl * nontag) / pop
	

}

hist(likelihood, prob = TRUE)
likelihood


#vectorized solution
n = 100:1000
choose(n,5)


results = numeric(1000-100)
results = (choose(50,20) * choose(n - 100,30) ) / choose(n,50)
results[1:100]

