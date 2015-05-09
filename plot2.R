#include the download data code file
source("DownloadAndRead.R")

#open the png device with the required widths and units
png("plot2.png",width= 480, height = 480,units = "px")

#set the background colour
par(bg = "transparent")

#plot
plot(data1$DateTime,data1$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

#close the device
dev.off()