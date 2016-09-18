######################################################################
#### Date Values
#### http://statmethods.net/input/dates.html
######################################################################


#############
## 
#############
# use as.Date( ) to convert strings to dates 
mydates <- as.Date(c("2007-06-22", "2004-02-13"))
# number of days between 6/22/07 and 2/13/04 
days <- mydates[1] - mydates[2]

# Sys.Date( ) returns today's date. 
# date() returns the current date and time.
# The following symbols can be used with the format( ) function to print dates.
# Symbol  Meaning					Example
# %d		day as a number (0-31)	01-31
# %a		abbreviated weekday		Mon	
# %A		unabbreviated weekday 	Monday
# 
# %m		month (00-12)			00-12
# %b		abbreviated month		Jan
# %B		unabbreviated month		January	
# 
# %y		2-digit year			07 
# %Y		4-digit year			2007

# print today's date
today <- Sys.Date()
format(today, format="%B %d %Y")
"June 20 2007"


#############
## Date Conversion
#############
# convert date info in format 'mm/dd/yyyy'
strDates <- c("01/05/1965", "08/16/1975")
dates <- as.Date(strDates, "%m/%d/%Y")
mydates <- as.Date(c("2007-06-22", "2004-02-13"))


#############
## Date to Character
#############
# convert dates to character data
strDates <- as.character(dates)

#############
## Learning More
#############
See help(as.Date) and help(strftime) for details on converting character data to dates. See help(ISOdatetime) for more information about formatting date/times.

