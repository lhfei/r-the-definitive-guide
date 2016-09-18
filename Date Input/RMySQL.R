library(DBI)
library("RMySQL")

m<-dbDriver("MySQL");

con<-dbConnect(m,user='lhfei',password='Lhfei',host='localhost',dbname='forestry-university');

res<-dbSendQuery(con, "select * from homework_base")

genes<- fetch(res, n = -1)