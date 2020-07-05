#Load Data
source('Data_used.R')
#Device
png(filename='plot1.png',width=480,height=480,units='px')
# Plot data
hist(data$Global_active_power,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')
# Turn off device
x<-dev.off()