hist(s$Global_active_power, col="red", breaks = 20, main = "Global Active Power",
     xlab="Global Active Power (kilowatts)", ylab="Frequency", cex.axis=0.8)
dev.print(png, file = "plot1.png", width = 480, height = 480)
dev.off()
