#include the download data code file
source("DownloadAndRead.R")

#open the png device with the required widths and units
png("plot4.png",width= 480, height = 480,units = "px")

#set the background colour
par(bg = "transparent")

#set the number of rows and columns
par(mfrow=c(2,2))

#plot the four graphs
plot(data1$DateTime,data1$Global_active_power,type="l",xlab="",ylab="Global Active Power")
plot(data1$DateTime,data1$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(data1$DateTime,data1$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l",col="black")
lines(data1$DateTime,data1$Sub_metering_2,col="red")
lines(data1$DateTime,data1$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,bty="n")
plot(data1$DateTime,data1$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

#close the device
dev.off()