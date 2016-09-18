library(sqldf)
library(spark)
library(sparkTable)

# CSV file location
file_path <- "D:/R_Workspace/r-the-definitive-guide/Data Sets/Online News Popularity Data Set/OnlineNewsPopularity.csv"

r_csv <- read.csv(file_path, header=TRUE)
