install.packages("xlsx")
install.packages("ggplot2")
library(ggplot2)
library(xlsx)
library()
WR_data <- data.frame(read.xlsx("C:\\Users\\Randy\\Downloads\\2015 WR big board.xlsx", sheetName ="Sheet1" ));
head(WR_data)

qplot(weight, aDOT, data = WR_data, color = Height);

qplot(Height, aDOT, data = WR_data, size = weight, color = age,
	xlab = "Wide Reciever Height", ylab = " Wide Reciever aDOT", 
	main = "Comparing WR height and aDOT") 
