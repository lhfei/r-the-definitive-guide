######################################################################
#### Data Input
#### http://statmethods.net/input/index.html
######################################################################


#############
## Vectors ##
#############
a <- c(1:10)  # numeric vector

b <- c("one","two","three") # character vector

c <- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE) #logical vector

##############
## Matrices ##
##############
# generates 5 x 4 numeric matrix 
y<-matrix(1:20, nrow=5,ncol=4)

# another example
cells <- c(1,26,24,68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2") 
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                   dimnames=list(rnames, cnames))

##############
## Data Frames 
##############

d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata <- data.frame(d,e,f)
names(mydata) <- c("ID","Color","Passed") # variable names

mydata[1:2]

mydata[2:3] # columns 2,3 of data frame
mydata[c("ID","Passed")] # columns ID and Passed from data frame
mydata$Passed # variable x1 in the data frame


##############
## Lists 
##############
# An ordered collection of objects (components). 
# A list allows you to gather a variety of (possibly unrelated) 
# objects under one name.

# example of a list with 4 components - 
# a string, a numeric vector, a matrix, and a scaler 
w <- list(name="Fred", mynumbers=a, mymatrix=y, age=5.3)

# example of a list containing two lists 
v <- c(list1,list2)

w[[2]] # 2nd component of the list
w[["mynumbers"]] # component named mynumbers in list


##############
## Factors 
##############

# Tell R that a variable is nominal by making it a factor. 
# The factor stores the nominal values as a vector of integers
# in the range [ 1... k ] (where k is the number of unique 
# values in the nominal variable), and an internal vector of 
# character strings (the original values) mapped to these integers.

# variable gender with 20 "male" entries and 
# 30 "female" entries 
gender <- c(rep("male",20), rep("female", 30)) 
gender <- factor(gender) 
# stores gender as 20 1s and 30 2s and associates
# 1=female, 2=male internally (alphabetically)
# R now treats gender as a nominal variable 
summary(gender)

# variable rating coded as "large", "medium", "small'
rating <- ordered(rating)
# recodes rating to 1,2,3 and associates
# 1=large, 2=medium, 3=small internally
# R now treats rating as ordinal


###########################################
## Factors 
###########################################
length(object) # number of elements or components
str(object)    # structure of an object 
class(object)  # class or type of an object
names(object)  # names

c(object,object,...)       # combine objects into a vector
cbind(object, object, ...) # combine objects as columns
rbind(object, object, ...) # combine objects as rows 

object     # prints the object

ls()       # list current objects
rm(object) # delete an object

newobject <- edit(object) # edit copy and save as newobject 
fix(object)               # edit in place


