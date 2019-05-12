completeSet <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
completeSet$Date <- as.Date(completeSet$Date, "%d/%m/%Y")
library(chron) #to extract only time, not date in Time column
completeSet$Time <- times(completeSet$Time)
#subset: dates 2007-02-01 and 2007-02-02
s <- subset(completeSet, as.character(Date) == "1/1/2007" | as.character(Date) == "2/1/2007")
