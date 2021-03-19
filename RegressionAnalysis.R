####........Regression Analysis.............
# Predicting the weight of a person when height is given

#Establishing a regression 
y = ax + b
y = response variable
x = predictor variable
a and b are called the constant coefficients

#Steps of creating regression

# carrying out the experiment of gathering a sample of observed values of height and corresponding weight
# create a relationship model using lm() function in R
# Finding the coefficients from the model and create a mathematical equation
# Getting a summary of the relationship model to know the average rror in prediction also called residuals
# To predict the weight of the new perspons , us the predict() function

#Input data
  # values of height
151, 174, 138, 186, 128, 136, 179, 163, 152, 131

#values of weight

63, 81, 56, 91, 47, 57, 76, 72, 62, 48

#syntax for the lm() (relationship model building function )\
lm(formula, data)


#Creating a relationship model and getting the coefficients
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

#Applying the lm() function
relation <- lm(y~x)
print(relation)


#Now getting the summary of the relationships
print(summary(relation))

#Basic syntax for predict() function in R
predict(object, newdata)

#predicting the weight of the new persons
a <- data.frame(x = 170)
result <- predict(relation, a)
print(result)

#Visualization of the regression
png(file = "linearregression1.png")
print(plot(y, x, col = "blue", main = "Height and Weight Regression",
     abline(lm(x~y)), cex = 1.3, pch = 16, xlab = "Weight in Kg", ylab = "Height in cm"))

#save the file
dev.off()


