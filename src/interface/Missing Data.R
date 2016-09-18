######################################################################
#### Missing Data
#### http://statmethods.net/input/missingdata.html
######################################################################



#############
## Testing for Missing Values 
#############
is.na(x) # returns TRUE of x is missing
y <- c(1,2,3,NA)
is.na(y) # returns a vector (F F F T)

#############
## Recoding Values to Missing
#############
# recode 99 to missing for variable v1
# select rows where v1 is 99 and recode column v1 
mydata$v1[mydata$v1==99] <- NA

#############
## Excluding Missing Values from Analyses
#############
x <- c(1,2,NA,3)
mean(x) # returns NA
mean(x, na.rm=TRUE) # returns 2

# list rows of data that have missing values 
mydata[!complete.cases(mydata),]

# create new dataset without missing data 
newdata <- na.omit(mydata)

#############
## Advanced Handling of Missing Data
#############
Most modeling functions in R offer options for dealing with missing values. You can go beyond pairwise of listwise deletion of missing values through methods such as multiple imputation. Good implementations that can be accessed through R include Amelia II, Mice, and mitools.




