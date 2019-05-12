par(mfrow=c(2,2), mar=c(4,4,2,2), oma=c(0,0,2,0))
with(s, {
  plot(s$Global_active_power, type ="l", xlab="",xaxt="n",
       ylab="Global Active Power (kilowatts)")
  axis(1, at=1440, labels="Fri")
  axis(1, at=1, labels="Thu")
  axis(1, at=2880, labels="Sat")
  plot(s$Voltage, type ="l", xlab="datetime",xaxt="n",
       ylab="Voltage", cex.axis=0.7)
  axis(1, at=1440, labels="Fri")
  axis(1, at=1, labels="Thu")
  axis(1, at=2880, labels="Sat")
  plot(Sub_metering_1, type="l", xlab="",ylab="Energy sub metering",xaxt="n")
  lines(Sub_metering_2,col='Red')
  lines(Sub_metering_3,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lwd=1.2, bty="n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(s$Global_reactive_power, type ="l", xlab="datetime",xaxt="n",
      ylab="Global_reactive_power", cex.axis=0.7)
  axis(1, at=1440, labels="Fri")
  axis(1, at=1, labels="Thu")
  axis(1, at=2880, labels="Sat")
})

dev.print(png, file = "plot4.png", width = 480, height = 480)
dev.off()
