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





