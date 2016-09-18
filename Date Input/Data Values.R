###############################################################
#   Symbol    Meaning 	                Example               |
#   %d 	      day as a number           (0-31) 	01-31         |
#   %a        unabbreviated weekday     Mon                   |
#   %A 	      abbreviated weekday       Monday                |
#   %m 	      month (00-12) 	          00-12                 |
#   %b        unabbreviated month       Jan                   |
#   %B 	      abbreviated month         January               |
#   %y        2-digit year              07                    |
#   %Y 	      4-digit year              2007                  |
###############################################################


# print today's date
today <- Sys.Date()
format(today, format="%Y-%m-%d")

sink(file="e:\\Alipay_201503.txt", append=TRUE, split=FALSE, type = c("output", "message"))

for(i in 1:31) {
  print('-------------------------------------') 
  str <- paste(format(today, format="%Y-%m-%d"), "", sep="", trim=TRUE)
  print(str,quote = FALSE)
  today <- today + 1
}

sink()

