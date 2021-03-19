# R data Types
#Vectors
#Creating a vector
apple <- c('red', 'Green', 'yellow')
print(apple)

#The c() function is used when we have to create vector containing more 
#than 1 elements

#Getting the class of the vector
print(class(apple))

#The next data type is list
#Creating a list
list1 <- list(c(2,5,3), 21.3, sin)
print(list1)
print(class(list1))

#The next data types are matrices
#Creating a matrix
M = matrix(c('a', 'a', 'b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)
class(M)

#Arrays
a <- array(c('green', 'yellow'), dim = c(3, 3, 2))
print(a)

class(a)

#Factors
#Factors are used in statistical modelling
apple_colors <- c('green', 'green', 'yellow', 'red', 'red', 'red', 'green')
factor_apple <- factor(apple_colors)

print(factor_apple)
print(nlevels(factor_apple))

#Data frames
#Creating a dataframe
BMI <- data.frame(
  gender  = c('Male', 'Female', 'Female'),
  height = c(152, 171.5, 165),
  weight = c(81,93,78),
  Age = c(42,38,26)
)
print(BMI)

#Variable Assignment
#Assignment using equal operator
var.1 = c(0, 1, 2, 3, 4)

#Assignment using leftware operator
var.2 <- c('learn', 'R')

#Assignment using rightward operator
c(TRUE, 1) -> var.3

print(var.1)
cat("var.1 is ", var.1, "\n")
cat("var.2 is ", var.2, "\n")
cat("var.3 is ", var.3, "\n")

#Operators
#Arithmetic operators
#Adding two vectors
vec1 <- c(2, 8.5, 2, 4)
vec2 <- c(10, 5, 4)
print(vec1+vec2)

#Subtraction
vec1 <- c(10, 5.5, 6.3)
vec2 <- c(11, 2, 3)
print(vec1 - vec2)

#Multiplication of vectors
print(vec1 * vec2)

#Division
print(vec1/vec2)

#Normal distribution in R
# R has four built in functions for normal distribution 
dnorm(x, mean, sd)
pnorm(x, mean, sd)
qnorm(p, mean, sd)
rnorm(n, mean, sd)
#x is a vector of numbers
#p is a vector of probabilities
#n is number of observations
#mean is the mean value of the sample data. It's default value is zero
#sd id the stnadard deviation of the sample data. The default value of sd is 1

#dnorm()
#Gives the height of the probability distribution at each point for a given mean and standard deviation
#Creating a sequence of number from -10 to 10 incrementing by 0.1
x <- seq(-10, 10, by = 0.1)

#Choose the mean as 2.5(hypothesis) and standard deviation 0.5
y <- dnorm(x, mean = 2.5, sd = 0.5)

#Giving the chart a name
png(file = "dnorm.png")

print(plot(x, y))

#saving the file
dev.off()


#pnorm
#This function gives the probability of a normally distributed random number to be less that
#the value of a given number. It is also called "Cumulative Distribution Function"

#Create a sequence
x <- seq(-10, 10, by = .2)

#Choose the mean as 2.5 and sd as 2
y <- pnorm(x, mean = 2.5, sd = 2)

#Give the chart file name
png(file = "pnrom.png")

#
print(plot(x, y))

#save the file
dev.off()

###qnorm()
#This function takes the probability value and gives a number whose cumulative
#value matches the probability value

#Creating a sequence
x <- seq(0, 1, by = 0.02)

#Choose the mean as 2 and standard deviation as 3
y <- qnorm(x, mean = 2 , sd = 3)

#saving the chart file

png(file = "qnorm.png")

#Plotting the graph
print(plot(x, y))

#saving the file
dev.off()


#rnorm
#This function is used to generate random numbers whose distribution is normal. It takes the sample size as input and generates that many random numbers.
#We draw a histogram to show the distribution of the generated numbers

#Create a sample
y <- rnorm(50)

#Gibe the chart file a name
png(file = "rnorm.png")

#Plot the histogram for this sample.
hist(y, main = "Normal Distribution")

#save the file
dev.off()

#operators in R
#%% for the remainder
v <- c(2, 5.5, 6)
t <- c(8, 3, 4)

print(v%%t)

#for quotient
print(v%/%t)

#first vector raied to the exponent of second vector
print(v^t)

##Relational Operators
v <- c(2, 5.5, 6, 9)
t <- c(8, 2.5, 14, 9)

print(v>t)

print(v<t)

print(v==t)

print(v!=t)


##Logical Operators
v <- c(3, 1, TRUE, 2+3i)
t <- c(4, 1, FALSE, 2+3i)

print(v&t)

print(v | t)

v <- c(3, 0, TRUE, 2+2i)
print(!v)

#Operator for checking an element in a vector
v1 <- 8
v2 <- 12
t <- 1:10
print(v1 %in% t)
print(v2 %in% t)

#Operator for multiplying a matrix with its transpose
M = matrix(c(2, 6, 5, 1, 10, 4), nrow = 2, ncol = 3, byrow = TRUE)

t = M%*%t(M)
print(t)

####VECTORS####
#Atomic vector of type character
v <- 'hello'
print(v)

#Atomic vector of type double
print(12.5)

#Atomic vector of type integer
print(63L)

#Atomic vector of type logical
print(TRUE)

#Atomic vector of type complex
print(2+3i)

#Atomic vector of type raw
print(charToRaw('hello'))


#Multiple elemnts vector
#Creating a sequence from 5 to 13
v <- 5:13
print(v)

v <- 6.6:12.6

print(v)

v <- 3.8:11.4
print(v)


#using the seq operator
v <- seq(5, 9, by = 0.4)
print(v)

#Creating vector using c() function
v <- c('sun', 'mon', 'tue', 'wed', 'thur', 'fri', 'sat')
s <- c('apple', 'red', 5, TRUE)
print(v)
print(s)


###Accessing a vector
#using position
t <- c('sun', 'mon', 'tue', 'wed', 'thur', 'fri', 'sat')
u <- t[c(2, 3, 6)]
print(u)

#using logical indexing
u <- t[c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)]
print(u)

#Accessing using negative indexing
u <- t[c(-5, -3)]
print(u)

#Accessing elements using 0/1 indexing
y <- t[c(0, 0, 0, 0, 0, 0, 1)]
print(y)


###Vector manipulation
##Vector arithmetic
#Creating two vectors
v1 <- c(3, 8, 4, 5, 0, 11)
v2 <- c(4, 11, 0, 8, 1, 2)

#Vector Addition
add.result <- v1 +v2
print(add.result)

#vector subtraction
sub.result <- v1-v2
print(sub.result)

#Vector multiplication

mul.result <- v1 * v2
print(result)

#vector division
div.result <- v1/v2
print(div.result)


#Vector element recycling
#performing arithmetic operation on vectors of unequal length 
v1 <- c(3, 8, 4, 5, 0, 11)
v2 <- c(4, 11)
 #to compensate for its length v2 becomes c(4, 11, 4, 11, 4, 11)

add.result <- v1 + v2
print(add.result)


#Vector element sorting
v <- c(3, 8, 4, 5, 0, 11, -9, 304)

sort.result <- sort(v)

print(sort.result)

#sorting them in reverse order

revsort.result <- sort(v, decreasing = TRUE)

print(revsort.result)

#Also
print(rev(sort(v)))


#Sorting the character vectors
v <- c('Red', 'Blue', 'Yellow', 'Violet')
sort.result <- sort(v)

print(sort.result)

#sorting character vectors in reverse order
print(rev(sort(v)))


###.....Lists.....######

#Create a list containing strings, numbers ,vectors, and a logical
#values.
list_data <- list("Red", "Green", c(21, 32, 11), TRUE, 51.23, 119.1)
print(list_data)

#Naming of the elements in a list
list_data <- list(c("Jan", "Feb", "Mar"), matrix(c(3, 9, 5, 1, -2, 8), nrow = 2), list("green"), 12.3)
names(list_data) <- c("1st Quarter", "A_Matrix", "A inner list")


print(list_data)


##Accessing list elements

#Accessing the 1st element of the list
print(list_data[1])

##Accessing the list using name
print(list_data$A_Matrix)


##Manipulating the list elements
#adding the elements
list_data[4] <- "new element"
names(list_data[4]) <- "lol"
print(list_data)

#Removing the list elemnt

list_data[4] <- NULL
print(list_data)

#updating
list_data[3] <- "updated element"
print(list_data)



##merging list
list1 <- c(1, 2, 3, 4)
list2 <- c('red', 'green','blue')
merged.list <- c(list1, list2)

print(merged.list)

#converting the list into vector 
list1 <- list(1:5)
print(list1)

list2 <- list(10:14)

print(list2)

#unlisting
v1 <- unlist(list1)
v2 <- unlist(list2)

print(v1)
print(v2)




