## read in the data
if( !exists("myData")) {
  source("./explore_household_data.R")
}

## plotting and exporting the third chart
png("plot3.png",width = 480, height = 480, units = "px")
plot(myData$DateTime,myData$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(myData$DateTime,myData$Sub_metering_2,col="red")
lines(myData$DateTime,myData$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"),cex=0.8)
dev.off()