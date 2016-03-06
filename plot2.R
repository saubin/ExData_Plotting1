household_power_consumption <- read.csv("H:/1 Stop/Coursera/Exploratory/household_power_consumption.txt", sep=";")
View(household_power_consumption) #Readfile
subsetdata = household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007"),] #subsetdata
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") #update date format
globalactivepower = as.numeric(subsetdata$Global_active_power) # set as numeric
png("plot2.png", width = 480, height = 480) #create png
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)") # Create new plot with y axis having new title
