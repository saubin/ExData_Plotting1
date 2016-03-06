household_power_consumption <- read.csv("H:/1 Stop/Coursera/Exploratory/household_power_consumption.txt", sep=";")
View(household_power_consumption) #Readfile
subsetdata = household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007"),] #subsetdata
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") #update date format
submet1 <- as.numeric(subsetdata$Sub_metering_1) #set as numeric
submet2 <- as.numeric(subsetdata$Sub_metering_2)#set as numeric
submet3 <- as.numeric(subsetdata$Sub_metering_3)#set as numeric
png("plot3.png", width=480, height=480)#set up png file
plot(datetime, submet1, type="l", ylab="Energy Submetering", xlab="") #plot first variable
lines(datetime, submet2, type="l", col="red") #insert second variable with color red
lines(datetime, submet3, type="l", col="blue") #insert second variable with color blue 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue")) #insert legend in top right
dev.off() #save/close png file