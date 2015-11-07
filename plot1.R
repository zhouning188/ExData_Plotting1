File <- "household_power_consumption.txt"
dataset <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Data <- dataset[dataset$Date %in% c("1/2/2007","2/2/2007"),]
str(Data)
ActivePower <- as.numeric(Data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(ActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()