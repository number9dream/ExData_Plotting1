## use sqldf package to select the subset of the data required
## please install sqldf by running install.packages("sqldf") if it is not available
require(sqldf)

## select from the input file for the required dates
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "household_power_consumption.txt"
myData <- read.csv2.sql(myFile,mySql)

## to find the class for each of the column header
## sapply(myData, class)

## for formatting of date and time column
myDateTime <- data.frame(as.POSIXlt(strptime(paste(myData[,1],myData[,2],sep=" "),"%e/%m/%Y %T")))
## set the column header
colnames(myDateTime) <- c("DateTime")

## add the date time column back to the original dataframe and drop the date time column
myData <- cbind(myDateTime,myData[,3:9])