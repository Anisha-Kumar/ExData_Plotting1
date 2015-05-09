#include the download data code file
source("DownloadAndRead.R")

#open the png device with the required widths and units
png("plot3.png",width= 480, height = 480,units = "px")

#set the background colour
par(bg = "transparent")

#plot and add lines
plot(data1$DateTime,data1$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l",col="black")
lines(data1$DateTime,data1$Sub_metering_2,col="red")
lines(data1$DateTime,data1$Sub_metering_3,col="blue")

#add legend
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

#close the device
dev.off()
