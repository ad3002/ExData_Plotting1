setClass("myDate");
setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y"));
setClass("myTime");
setAs("character","myTime", function(from) strptime(from, format="%H:%M:%S"));
d <- read.csv('household_power_consumption.txt', sep=';', na.strings="?", colClasses=c("myDate","myTime", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"));
f <- d$Date >= as.Date("2007-02-01") & d$Date <= as.Date("2007-02-02")
d1 <- d[f,]

png(filename="plot1.png", width=480, height=480)
hist(d1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

