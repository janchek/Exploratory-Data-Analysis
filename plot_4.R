source('loading data set.R')

## Generating Plot 4
Sys.setlocale(category = "LC_ALL", locale = "english")
labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
columnlines <- c("black","red","blue")
par(mfrow=c(2,2))
plot(HHPCFINAL$SetTime, HHPCFINAL$Global_active_power, type="l", col="green", xlab="", ylab="Global Active Power")
plot(HHPCFINAL$SetTime, HHPCFINAL$Voltage, type="l", col="orange", xlab="datetime", ylab="Voltage")
plot(HHPCFINAL$SetTime, HHPCFINAL$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(HHPCFINAL$SetTime, HHPCFINAL$Sub_metering_2, type="l", col="red")
lines(HHPCFINAL$SetTime, HHPCFINAL$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=columnlines)
plot(HHPCFINAL$SetTime, HHPCFINAL$Global_reactive_power, type="l", col="blue", xlab="datetime", ylab="Global_reactive_power")

## Saving file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()