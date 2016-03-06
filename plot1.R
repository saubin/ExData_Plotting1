household_power_consumption <- read.csv("H:/1 Stop/Coursera/Exploratory/household_power_consumption.txt", sep=";")
View(household_power_consumption) #Readfile
subsetdata = household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007"),] #subsetdata
globalactivepower = as.numeric(subsetdata$Global_active_power) # set as numeric
png("plot1.png", width = 480, height = 480) #create png
hist(globalactivepower, col = "red", xlab = "Global Active Power (kilowatts)",main = "Global Active Power") # Create Histogram with color and titles (main and x axis)
dev.off() #close/save png file