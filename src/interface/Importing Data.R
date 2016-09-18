######################################################################
#### Importing Data
#### http://statmethods.net/input/importingdata.html
######################################################################

#############
## From A Comma Delimited Text File 
#############
# first row contains variable names, comma is separator 
# assign the variable id to row names
# note the / instead of \ on mswindows systems 

mydata <- read.table("c:/mydata.csv", header=TRUE, 
                     sep=",", row.names="id")


#############
## From Excel
#############
# read in the first worksheet from the workbook myexcel.xlsx
# first row contains variable names
library(xlsx)
mydata <- read.xlsx("c:/myexcel.xlsx", 1)

# read in the worksheet named mysheet
mydata <- read.xlsx("c:/myexcel.xlsx", sheetName = "mysheet")




#############
## From SPSS   
#############
# save SPSS dataset in trasport format
get file='c:\mydata.sav'.
export outfile='c:\mydata.por'. 

# in R 
library(Hmisc)
mydata <- spss.get("c:/mydata.por", use.value.labels=TRUE)
# last option converts value labels to R factors


#############
## From SAS
#############
# save SAS dataset in trasport format
libname out xport 'c:/mydata.xpt';
data out.mydata;
set sasuser.mydata;
run;

# in R 
library(Hmisc)
mydata <- sasxport.get("c:/mydata.xpt")
# character variables are converted to R factors


#############
## From Stata 
#############
# input Stata file
library(foreign)
mydata <- read.dta("c:/mydata.dta")



#############
## From systat 
#############
# input Systat file
library(foreign)
mydata <- read.systat("c:/mydata.dta")



