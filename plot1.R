#include the download data code file
source("DownloadAndRead.R")

#open the png device and set the required widths adn units
png("plot1.png",width= 480, height = 480,units = "px")

#set the background colour
par(bg = "transparent")

hist(data1$Global_active_power, col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")

#Close the device
dev.off()