install.packages("ISLR")
library(ISLR)
library(MASS)
attach (Boston)

lm_model = lm(medv~lstat)
lm_model
summary(lm_model)

names(lm_model)
lm_model$residuals
confint(lm_model)

library(ggplot2)

 test = qplot(lstat,medv, data=lm_model)
test2 = plot(lstat,medv)
abline(lm_model)
test
par(mfrow=c(2,2))
test2
install.packages("lubridate")
qplot(residuals(lm_model), predict(lm_model), data = lm_model
 color = green)

lm_model2 = lm(lstat~medv + medv:age)
summary(lm_model2)

LoadLibraries= function() {
	library(ggplot2);
	library(lubridate);
	print("The libraries have been loaded");
}
LoadLibraries
LoadLibraries()

Regression = function( Y, X1, dataset){
	temp = lm(Y~ X1 , data=dataset); print(temp);
	print(summary(temp))
	plot(temp$residuals, temp$predict)
}

head(Boston)
par(mfrow=c(1,1))
Regression(lstat, medv, Boston)



head(Default)
Default
library(ISLR)
head(Default)


head(Smarket); dim(Smarket); summary(Smarket)
cor(Smarket [,-9]); attach(Smarket); plot(Volume)

#logistic regression
log_model = glm(Direction ~Lag1+Lag2+Lag3+Lag4+Lag5+Volume,
	data = Smarket, family = binomial)
summary(log_model)
probs = predict(log_model, type = "response")
#gives the probability for the first 10
#contrast tells which way the qualitative is coded in R
# prob[1] means their is a .507 chance of direction = up
probs[1:10]; contrasts(Direction)
