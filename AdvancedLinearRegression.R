#Installing the datarium package#impact of the amount of money spent on three advertising
#medias(youtube, facebook and newspaper) on sales

#installing the data package
devtools::install_github(repo = "kassambara/datarium")


#Loading and inspecting the marketing data
data("marketing", package = "datarium")
head(marketing, 4)

#Now, Building a model
#We want to build a model for estimating sales based on the advertising budget
# sales = b0 + b1 * youtube + b2 * facebook + b3 * newspaper

model <- lm(sales ~ youtube + facebook + newspaper, data = marketing)

print(model)
print(summary(model))

##Interpretaion 
summary(model)$coefficients

#The newspaper varibale suggests that there is no significant relationship between sales and marketing budget
#so newspaper varibale can be rejected from the model as it is insignificant.
#Thus, 
model <- lm(sales~youtube + facebook, data = marketing)
summary(model)


#Thus, model equation becomes, sales = 3.5 + 0.045 * facebook + 0.187 * facebook

#The confidence interval of model can be extracted as follow
confint(model)

#Model Accuracy Assessment
#The overall quality of the model can be assessed by examining the R squared (R2) and Residual Standard error(RSE)
#R squared
The R squared is 0.89 as given in the summary of the model
Thus, 89% of the variance in the measure of sales can be predicted by youtube and
facebook advertising budgets

#Residual Standard Error(RSE) or Sigma
#The lower RSE is, the accurate the model is
#The error rate can be calculated
error_rate <- sigma(model)/ mean(marketing$sales)
print(error_rate)
#That is 11% error rate with RSE value of 2.018, which means the model is faorly accurate

#Now predicting a value
head(marketing,4)

#test value
test_value <- data.frame(youtube = 1000, facebook = 96)
result <- predict(model,test_value)
print(result)

require(ggplot2)
library(ggplot2)

ggplot(marketing, aes(y = sales,x=  youtube))+geom_point()+geom_smooth(method = "lm")


#optionally
library(rsm)
model.lm <- lm(sales~poly(youtube, facebook, degree = 2), data = marketing)
persp(model.lm, youtube~facebook, zlab = "sales")


plot(model)

