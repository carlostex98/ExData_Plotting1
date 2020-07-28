data_x <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, colClasses = "character")

##using the desired dates
data_x[,1] <- as.Date(data_x[,1], "%d/%m/%Y")
cc3 <- data_x[data_x$Date >= '2007-02-01'&data_x$Date <= '2007-02-02',]
cc3[,7] <- as.numeric(cc3[,7])
cc3[,8] <- as.numeric(cc3[,8])
cc3[,9] <- as.numeric(cc3[,9])


plot(as.POSIXct(paste(cc2$Date, cc2$Time),format="%Y-%m-%d %H:%M:%S"), cc3$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering" )
lines(as.POSIXct(paste(cc2$Date, cc2$Time),format="%Y-%m-%d %H:%M:%S"), cc3$Sub_metering_2, col="red")
lines(as.POSIXct(paste(cc2$Date, cc2$Time),format="%Y-%m-%d %H:%M:%S"), cc3$Sub_metering_3, col="blue")
legend("topright", pch = "-", col = c("black","blue", "red"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file = "plot3.png")
dev.off()