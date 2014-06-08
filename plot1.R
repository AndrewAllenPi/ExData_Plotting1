setwd("c:/Users/Andrew/Desktop/Coursera/explotdata1/ExData_Plotting1")
## Working directory set to where my saved zipped file is
library(data.table)
png(file="plot1.png")
powerdata<-fread(unzip("./datapow.zip"),";")
powerdata<-powerdata[powerdata$Date=="1/2/2007"|powerdata$Date=="2/2/2007"]
x<-powerdata$Global_active_power
hist(as.numeric(x),main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()