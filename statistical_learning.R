install.packages("ggplot2")
library(ggplot2)

head(diamonds)

persp( diamonds$table, diamonds$depth, diamonds$price)
x = diamonds[5]
y = diamonds[6]; z = diamonds[7]
attach(diamonds)
identify(depth, table, price)
summary (diamonds)
?image

library(MASS); library(ISLR);
lm_fit = lm(medv~lstat, data = Boston);
attach(Boston)
lm_fit
