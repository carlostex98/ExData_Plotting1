##data loading
data_x <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, colClasses = "character")

##using the desired dates
data_x[,1] <- as.Date(data_x[,1], "%d/%m/%Y")
cc2 <- data_x[data_x$Date >= '2007-02-01'&data_x$Date <= '2007-02-02',]

plot( as.POSIXct(paste(cc2$Date, cc2$Time), 
                 format="%Y-%m-%d %H:%M:%S"), 
      cc2$Global_active_power, 
      type = "l",
      xlab = "",
      ylab = "Global active power (kilowatts)" )
dev.copy(png, file = "plot2.png")
dev.off()