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

 x = c(1,2,3,4);  y = c(1.5,3,5);
z = merge.sort(x,y); z;







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
	while ( z!= lenx)
	{
	
	}

}

bins2 = c(1, 2, 3, 1)

bin.data(x,bins2)





test1 <- function(in1,in2)
{
	in1[1]
	in2[1]
}
test1 (x,y)
