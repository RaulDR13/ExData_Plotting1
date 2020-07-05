#Load Data
source('Data_used.R')
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')  
data$DateTime <- as.POSIXct(paste(data$Date, data$Time)) 
# Device
png(filename='plot3.png',width=480,height=480,units='px')

# Plot Data
linecolor<-c('black','red','blue')
labels<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(data$DateTime,data$Sub_metering_1,type='l',col=linecolor[1],xlab='',ylab='Energy sub metering')
lines(data$DateTime,data$Sub_metering_2,col=linecolor[2])
lines(data$DateTime,data$Sub_metering_3,col=linecolor[3])

# Legend
legend('topright',legend=labels,col=linecolor,lty='solid')

# close device
x<-dev.off()