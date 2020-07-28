##data loading
data_x <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, colClasses = "character")

##using the desired dates

cc <- data_x[data_x$Date >= '2007-02-01'&data_x$Date <= '2007-02-02',]
cc[,1] <- as.Date(cc[,1], "%m/%d/%Y")

cc[,3] <- as.numeric(cc[,3])
hist(cc$Global_active_power, xlab = "Global active power (kilowatts)", main = "Global active power")