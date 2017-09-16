source('loading data set.R')

## Plot 2
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(HHPCFINAL$SetTime, HHPCFINAL$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")

## File save
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()