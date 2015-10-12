#problem 1
x = c(3,12,4,17)
which(x >10)

#problem 2
x2 = c(5,7,2,7,5)
Bool = numeric(length(x2))
for (i in 1:length(x2))
{
	z = length(x2);
	Bool[i] = 1;
	if (x2[i] != x2[z])
	{
		Bool[i] = 0;
	}
	
	z = z-1;
}
Bool;

#problem 3
x2%%1


#problem 4
scalar_num = 3

x2%%scalar_num
