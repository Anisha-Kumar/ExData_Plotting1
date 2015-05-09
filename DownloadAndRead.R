#set the working directory Change this as necessary
setwd("C:/Users/akumar/ExData_Plotting1") 

#initialize packages
library(lubridate)
library(dplyr)

#download data and then unzip
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
setInternet2(use = TRUE)
download.file(fileUrl,destfile="exdata_data_household_power_consumption.zip" ,method ="internal")
unzip(zipfile="exdata_data_household_power_consumption.zip")

#set the classes
varclass<-c(rep('character',2),rep('numeric',7))

#read the data with the classes
data1 <- read.table("household_power_consumption.txt",header=TRUE,sep=';',na.strings='?', colClasses=varclass)

#filter data to only contain the required dates
data1 <- data1[data1$Date=="2/2/2007" | data1$Date=="1/2/2007" ,]

# add an additional column which has the date and time
data1 <- mutate(data1,DateTime=dmy(data1$Date)+hms(data1$Time))


