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
		temp1 = in1[count1]
		temp2 = in2[count2]
		print(count1)
		print(count2)
		if (temp1 > temp2)
		{
			final[i] = temp1
			count1 = count1 +1
				
		}
		else
		{
			final[i] = temp2
			count2 = count2 +1	
		}
		final_count = final_count + 1

	}
	return(final);
}

 in1 = c(1,2,3,4);  in2 = c(1.5,3,5);
z = merge.sort(x,y); z;

	count1 = 1
	count2 = 1
	len1 = length(in1)
	len2 = length(in2)
	final = numeric(len1 + len2); final
	final_count = 1
	while (final_count < (len1+len2))
	{




		temp1 = in1[count1]
		temp2 = in2[count2]
		print(count1)
		print(count2)
		if (temp1 > temp2)
		{
			final[final_count] = temp2
			count2 = count2 +1
				
		}
		else
		{
			final[final_count] = temp1
			count1 = count1 +1	
		}


		print(final)
		if (count1 == len1)
		{
			while ( count2 <= len2)
			{
				final[final_count] = in2[count2]
				final_count = final_count +1 
				count2 = count2 +1
			}

		}
		if (count2 == len2)
		{
			while ( count1 <= len1)
			{
				final[final_count] = in1[count1]
				final_count = final_count +1 
				count1 = count1 +1
			}

		}
		final_count = final_count +1
	}





bin.data <- function(x, bins)
{
	lenBin = length(bins)
	for (i in 2:lenBin)
	{
		if (bins[i] <= bins[i-1])
		{
			return("Error: the bin is not strictly increasing")
		}
	}
	
	outcom = numeric(lenBin +1)
	lenX = length(x)
	z = 1
	while ( z!= lenX)
	{
		for (g in 1: (lenBin+1))
		{
			if (g ==1)
			{
				if (x[z]< bins[g])
				{
					outcom[g] = outcom[g] + 1
				}
				else if (g <= lenBin)
				{

					if ( bins[g-1]< x[z] <= bins[g])
					{
						outcom[g]  = outcom[g] +1
					}
				}
				else
				{
					outcom[g] = outcom[g] +1
				}
			}
			

		}
		z = z+ 1
	}

}

bins2 = c(1, 2, 3)

bin.data(x,bins2)





test1 <- function(in1,in2)
{
	in1[1]
	in2[1]
}
