library(RODBC)

channel <- odbcConnect("DS-MySQL", uid="lhfei")
result  <-   paste("select hb.homework_base_id, hb.hw_name, hb.semester  from homework_base hb")
sqlQuery(channel, result,error=TRUE)