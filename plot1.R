hpc <- read.csv("~/R/Assignment1/hpc.txt", sep=";", stringsAsFactors=FALSE)
 View(hpc)
 hpc$Date <- as.Date(as.character(hpc$Date), format = "%d/%m/%Y")
 View(hpc)
# above code is for date conversion

# subsetting data of date between 01-02-2007 and 02-02-2007
 hpc1 <- hpc[(hpc$Date == "2007-02-01" | hpc$Date == "2007-02-02"),]

 # Checking other coloums class
 str(hpc1)
 # formatting character strings as numeric as required for building plots
 hpc1$Global_active_power <- as.numeric(as.character(hpc1$Global_active_power))
 hpc1$Global_reactive_power <- as.numeric(as.character(hpc1$Global_reactive_power))
 hpc1$Voltage <-as.numeric(as.character(hpc1$Voltage))
# adding timestamp
 hpc1<- transform(hpc1, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
 hpc1$Sub_metering_1 <-as.numeric(as.character(hpc1$Sub_metering_1))
 hpc1$Sub_metering_2 <-as.numeric(as.character(hpc1$Sub_metering_2))
 hpc1$Sub_metering_3 <-as.numeric(as.character(hpc1$Sub_metering_2))
 str(hpc1)
 
 #plot 1
 plot1 <- function() {
hist(hpc1$Global_active_power, main = "Global Active Power", col="red", xlab="Global Active Power (kilowatts)") 
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
 } 
 plot1()
 
 ##plot1.png has been saved in C:/Users/AVINASH CHAHAR/Documents