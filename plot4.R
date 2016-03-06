household_power_consumption <- read.csv("H:/1 Stop/Coursera/Exploratory/household_power_consumption.txt", sep=";")
View(household_power_consumption) #Readfile
subsetdata = household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007"),] #subsetdata
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") #update date format
voltage <- as.numeric(subsetdata$Voltage) #set as numeric
globalReactivePower <- as.numeric(subsetdata$Global_reactive_power)#set as numeric
png("plot4.png", width=480, height=480)#set up png file
par(mfrow = c(2, 2)) #establish 2 row, 2 columns
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2) #plot first in top left row
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage") #plot second in top row right
plot(datetime, submet1, type="l", ylab="Energy Submetering", xlab="") #plot third in 2nd row left 
lines(datetime, submet2, type="l", col="red") #add line to 3rd plot
lines(datetime, submet3, type="l", col="blue") #add line to 3rd plot
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o") #insert legend in top right
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power") # insert 4th plot, 2nd row right
dev.off() #save/close png file