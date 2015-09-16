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






library(MASS); library(ISLR)
head(Smarket)
lda_model = lda(Direction~ Lag1 + Lag2, data = Smarket, subset = train)
lda_model; plot(lda_model)
lda_predict = predict(lda_model, Smarket.2005)
names(lda_predict)
lda_class = lda_predict$class
table(lda_class, Direction.2005)
mean(lda_class == Direction.2005)

#using a different probability threshold for the posterior
sum(lda_predict$posterior[,1] >=.9)



#qda model(drops assumption of constant variance among classes
qda.fit = qda(Direction~ Lag1 + Lag2, data = Smarket, subset =train)
qda.fit
qda.class = predict(qda.fit, Smarket.2005)$class
table(qda.class, Direction.2005)
mean(qda.class == Direction.2005)



#k nearest neighbors model
library(class)
attach(Smarket)
train.X = cbind(Lag1,Lag2)[train,]
test.X = cbind(Lag1,Lag2)[!train,]
train.Direction = Direction[train]

set.seed(1)
knn.pred = knn(train.X,test.X, train.Direction, k=1)
table(knn.pred, Direction.2005)
mean(knn.pred == Direction.2005) #.500 == not good

knn.pred = knn(train.X,test.X, train.Direction, k=3)
table(knn.pred, Direction.2005)
mean(knn.pred == Direction.2005) #.527 for k = 3


attach(Caravan)
#standardizes the values to mean 0 and sd of 1
Standardized.X = scale(Caravan[,-86])
var(Caravan[,1]); var (Caravan[,2]); 
var(Standardized.X[,1]); var(Standardized.X[,2])
test = 1:1000
train.X = Standardized.X[-test,] #indicies that do not range from 1:1000
test.X = Standardized.X[test,]
train.Y = Purchase[-test] #indicies that do not range from 1:1000
test.Y = Purchase[test]
set.seed(1)
knn.pred2 = knn(train.X, test.X, train.Y, k=1)
mean(test.Y!=knn.pred2)  #.118 error rate
mean(test.Y != "No")  #.059

knn.pred3 = knn(train.X, test.X, train.Y, k=3)
mean(test.Y !=knn.pred3)
table(knn.pred3,test.Y) #5/26 when actual is .06

knn.pred4 = knn(train.X, test.X, train.Y, k=5)
mean(test.Y !=knn.pred4)
table(knn.pred4,test.Y) #4/15 when actual is .06




library(ISLR)
dim(Hitters)
sum(is.na(Hitters))
Hitters2 = na.omit(Hitters)
dim(Hitters2)
sum(is.na(Hitters2))

install.packages("leaps")
library(leaps)



