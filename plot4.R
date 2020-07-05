
#Load Data
source('Data_used.R')
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')  
data$DateTime <- as.POSIXct(paste(data$Date, data$Time)) 

# Device
png(filename='plot4.png',width=480,height=480,units='px')

# 4 Quadrants
par(mfrow=c(2,2))

# Top Left 
plot(data$DateTime,data$Global_active_power,ylab='Global Active Power',xlab='',type='l')

# Top Right
plot(data$DateTime,data$Voltage,xlab='datetime',ylab='Voltage',type='l')

# Bottom Left 
linecolor<-c('black','red','blue')
labels<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(data$DateTime,data$Sub_metering_1,type='l',col=linecolor[1],xlab='',ylab='Energy sub metering')
lines(data$DateTime,data$Sub_metering_2,col=linecolor[2])
lines(data$DateTime,data$Sub_metering_3,col=linecolor[3])

# Bottom Right 
plot(data$DateTime,data$Global_reactive_power,xlab='datetime',ylab='Global_reactive_power',type='l')

# close device
x<-dev.off()