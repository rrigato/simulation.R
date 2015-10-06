set.seed(2842)
Pop = 1:100; sample_distribution = numeric(100);
for(i in 1:100)
{
	sample_distribution[i] = mean(sample(Pop,12))
}

hist(sample_distribution)
