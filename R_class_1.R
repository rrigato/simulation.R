merge.sort <- function (in1,in2)
{
	count1 = 1
	count2 = 1
	len1 = length(in1)
	len2 = length(in2)
	final = numeric(len1 + len2)
	final_count = 1
	for (i in 1:(len1+len2))
	{
		if (in1[count1] > in2[count2])
		{
			final[i] = in1[count1]
			count1 = count1 +1
				
		}
		
		if (in1
		{
			final[i] = in2[count2]
			count2 = count2 +1	
		}
		final_count = final_count + 1

	}
	return(final);
}

 x = c(1,2,3,4);  y = c(1.5,3,5);
z = merge.sort(x,y); z;
