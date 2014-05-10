## read in the data
if( !exists("myData")) {
  source("./explore_household_data.R")
}

## plotting and exporting the second chart
png("plot2.png",width = 480, height = 480, units = "px")
plot(myData$DateTime,myData$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()