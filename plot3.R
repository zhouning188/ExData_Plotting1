File <- "household_power_consumption.txt"
dataset <- read.table(File, header=TRUE, sep=";", dec=".")
Data <- dataset[dataset$Date %in% c("1/2/2007","2/2/2007"),]
time <- strptime(paste(Data$Date, Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
ActivePower <- as.numeric(Data$Global_active_power)
Metering1 <- as.numeric(Data$Sub_metering_1)
Metering2 <- as.numeric(Data$Sub_metering_2)
Metering3 <- as.numeric(Data$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(time, Metering1, type="l", ylab="Energy Submetering", xlab="")
lines(time, Metering2, type="l", col="red")
lines(time, Metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()