flag = 1;
i = 1;
x = c(3.4, 2.1, 6.7,5.2, 7.3, 1.6, 3.1);
n = length(x);

while(flag)
{
	if (i ==1)
	{
		start = 1
	}
	


	if (i < n && x[i] > x[i+1])
	{
		temp = x[i]
		x[i] = x[i+1]
		x[i+1] = temp
		flag = 1
		start =0
	}
	else if(i == n && start ==1)
	{
		flag = 0;
	}



	i = i+ 1;
	if (i > n)
	{
		i = 1
	}
	
}

x
