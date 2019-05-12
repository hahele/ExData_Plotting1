plot(s$Global_active_power, type ="l", xlab="",xaxt="n",
     ylab="Global Active Power (kilowatts)")
axis(1, at=1440, labels="Fri")
axis(1, at=1, labels="Thu")
axis(1, at=2880, labels="Sat")
dev.print(png, file = "plot2.png", width = 480, height = 480)
dev.off()
