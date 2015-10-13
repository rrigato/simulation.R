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
	if (x2[i] != x2[length(x2)+1 -i])
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

#problem 5
x5 = c(2.3,7.8,2.13)
x5%%floor(x5)


#problem 6
x6 = c(2.3,7.8,2.13)
z = 1;
for (i in 2:length(x6))
{

	if (x6[i] > x6[i-1])
	{
		z = i;
	}
	
}
x6[z]


#problem 7
x7 = c(2.3,7.8,12.13)
flag=1;
for (i in 2:length(x7))
{

	if (x7[i] < x7[i-1])
	{
		flag = 0;
	}
	
}
flag




#problem 8

n = 5;
total = 1;
while(n !=1)
{
	total = total*n;
	n = n-1;
}

total


#problem 9
x9 = c(2.3,7.8,12.13)

cumsum(x9) [length(x9)]


#problem 10
n = 10;
a= 5
r = 1
total = a;
while(r !=n-1)
{
	total = total + a^r;
	r= r+1
}

total


