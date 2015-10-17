scores <- data.frame (name2 =c("Kim","Bob","Ted","Sue","Liz","Amanada","Tricia","Johnathan","Luis","Isabel"),
 name =c(17,19,24,25,16,15,23,24,29,17) )
people
scores

#creates data frame
quiz_scores =  data.frame(people, scores)
quiz_scores
#[] gives the column for the row
quiz_scores[2]
#gives the same thing
quiz_scores$scores

#creates a spreadsheet to put data in
Min_Wage = data.frame(Year=numeric(), Value=numeric())
Min_Wage =  edit(Min_Wage)
Min_Wage

install.packages("sqldf");
library(sqldf);

temp <- sqldf("SELECT m.*, s.name2 from 
			scores s inner join 
			Min_Wage m 
			on s.name = m.Year
			where m.Year <2014");
temp
