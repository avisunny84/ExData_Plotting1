#plot 2
plot2 <- function(){
  plot(hpc1$timestamp,hpc1$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.copy(png, file="plot2.png", width=480, height=480)
  dev.off()
  }

plot2()