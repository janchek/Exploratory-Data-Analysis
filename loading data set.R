# set working directory

setwd("C:/Users/mihaldma/Documents/coursera/EXPLORATORY DATA ANALYSIS/week1")
ls()

# read table

HHPC <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")

## We will only be using data from the dates 2007-02-01 and 2007-02-02.

HHPCFINAL <- HHPC[HHPC$Date %in% c("1/2/2007","2/2/2007"),]

## Set time

SetTime <-strptime(paste(HHPCFINAL$Date, HHPCFINAL$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
HHPCFINAL <- cbind(SetTime, HHPCFINAL)

