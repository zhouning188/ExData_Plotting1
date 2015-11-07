File <- "household_power_consumption.txt"
dataset <- read.table(File, header=TRUE, sep=";", dec=".")
Data <- dataset[dataset$Date %in% c("1/2/2007","2/2/2007"),]
time <- strptime(paste(Data$Date, Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
ActivePower <- as.numeric(Data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(time, ActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()