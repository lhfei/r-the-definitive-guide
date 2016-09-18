############################################################
# Logistic Regression
############################################################

#The Logistic Regression is a regression model in which the response variable (dependent variable)
#has categorical values such as True/False or 0/1. It actually measures the probability of a binary
#response as the value of response variable based on the mathematical equation relating it with the
#predictor variables.

print(mtcars)

# Select some columns form mtcars.
input <- mtcars[,c("vs","cyl","hp","wt")]

print(head(input))

am.data = glm(formula = vs ~ cyl + hp + wt, data = input, family = binomial)

print(summary(am.data))