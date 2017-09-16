source('loading data set.R')

## Generating Plot 4
Sys.setlocale(category = "LC_ALL", locale = "english")
labels <- c(SubMetering1,SubMetering2,SubMetering3)
columnlines <- c("black","red","blue")
par(mfrow=c(2,2))
plot(HHPCFINAL$SetTime, HHPCFINAL$GlobalActivePower, type="l", col="black", xlab="", ylab="Global Active Power")
plot(HHPCFINAL$SetTime, HHPCFINAL$Voltage, type="l", col="black", xlab="datetime", ylab="Voltage")
plot(HHPCFINAL$SetTime, HHPCFINAL$SubMetering1, type="l", xlab="", ylab="Energy sub metering")
lines(HHPCFINAL$SetTime, HHPCFINAL$SubMetering2, type="l", col="red")
lines(HHPCFINAL$SetTime, HHPCFINAL$SubMetering3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=columnlines)
plot(HHPCFINAL$SetTime, HHPCFINAL$GlobalReactivePower, type="l", col="black", xlab="datetime", ylab="Global_reactive_power")

## Saving file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()