#Load Data
source('Data_used.R')

data$Date <- as.Date(data$Date, format = '%d/%m/%Y')  
data$DateTime <- as.POSIXct(paste(data$Date, data$Time)) 

# Device
png(filename='plot2.png',width=480,height=480,units='px')

# Plot Data
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type  = 'l')  

#Turn of device
x<-dev.off()