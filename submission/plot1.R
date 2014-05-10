## read in the data
if( !exists("myData")) {
  source("./explore_household_data.R")
}

## plotting and exporting the first chart
png("plot1.png",width = 480, height = 480, units = "px")
hist(myData$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()