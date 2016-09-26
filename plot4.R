plot4 <- function() {
  par(mfrow=c(2,2))
  
  ##PLOT 1
  plot(hpc1$timestamp,hpc1$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  ##PLOT 2
  plot(hpc1$timestamp,hpc1$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  ##PLOT 3
  plot(hpc1$timestamp,hpc1$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(hpc1$timestamp,hpc1$Sub_metering_2,col="red")
  lines(hpc1$timestamp,hpc1$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) 
  
   #PLOT 4
  plot(hpc1$timestamp,hpc1$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
    #OUTPUT
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()
  
}
plot4()
