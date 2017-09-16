source('loading data set.R')

## Plot 3
Sys.setlocale(category = "LC_ALL", locale = "english")
columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(HHPCFINAL$SetTime, HHPCFINAL$SubMetering1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(HHPCFINAL$SetTime, HHPCFINAL$SubMetering2, col=columnlines[2])
lines(HHPCFINAL$SetTime, HHPCFINAL$SubMetering3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")

## File save
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
