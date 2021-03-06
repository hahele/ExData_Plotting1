with(s, {
  plot(Sub_metering_1, type="l", xlab="",ylab="Energy sub metering",xaxt="n")
  lines(Sub_metering_2,col='Red')
  lines(Sub_metering_3,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
axis(1, at=1440, labels="Fri")
axis(1, at=1, labels="Thu")
axis(1, at=2880, labels="Sat")
dev.print(png, file = "plot3.png", width = 480, height = 480)
dev.off()
