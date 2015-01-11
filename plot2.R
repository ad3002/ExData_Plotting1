d <- read.csv('household_power_consumption.txt', sep=';', na.strings="?", colClasses=c("character","character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"));
d1 <- d[d$Date %in% c("1/2/2007","2/2/2007"),]  
d1$DateTime <- strptime(paste(d1$Date, d1$Time),"%d/%m/%Y %H:%M:%S")

png(filename="plot2.png", width=480, height=480)
plot(d1$DateTime, d1$Global_active_power, ylab='Global Active Power (kilowatts)', xlab='', type='l')
dev.off()