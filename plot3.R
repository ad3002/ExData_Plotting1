d <- read.csv('household_power_consumption.txt', sep=';', na.strings="?", colClasses=c("character","character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"));
d1 <- d[d$Date %in% c("1/2/2007","2/2/2007"),]  
d1$DateTime <- strptime(paste(d1$Date, d1$Time),"%d/%m/%Y %H:%M:%S")

png(filename="plot3.png", width=480, height=480)

plot(d1$DateTime, d1$Sub_metering_1, xlab ="", ylab = "Energy sub metering", type ="l",col = 'black')
lines(d1$DateTime, d1$Sub_metering_2, col = "red")
lines(d1$DateTime, d1$Sub_metering_3, col = "blue")
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c('black','red','blue'), lty = 1, lwd = 3)

dev.off()