source('loading data set.R')

## Plot 1
hist(HHPCFINAL$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

## File save
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
