## read in the data
if( !exists("myData")) {
  source("./explore_household_data.R")
}

## plotting and exporting the fourth chart
png("plot4.png",width = 480, height = 480, units = "px")
attach(myData)
par(mfrow=c(2,2))
plot(testDateTime$DateTime,testDateTime$Global_active_power,type="l",ylab="Global Active Power",xlab="")
plot(testDateTime$DateTime,testDateTime$Voltage,type="l",ylab="Voltage",xlab="datetime")
plot(testDateTime$DateTime,testDateTime$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(testDateTime$DateTime,testDateTime$Sub_metering_2,col="red")
lines(testDateTime$DateTime,testDateTime$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"),cex=0.8)
plot(testDateTime$DateTime,testDateTime$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")
dev.off()