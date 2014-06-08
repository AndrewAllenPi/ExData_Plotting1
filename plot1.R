library(data.table)
setwd("c:/Users/Andrew/Desktop/Coursera/explotdata1/ExData_Plotting1")
## Working directory set to where my saved zipped file is
powerdata<-fread(unzip("./datapow.zip"),";")
powerdata<-powerdata[powerdata$Date=="1/2/2007"|powerdata$Date=="2/2/2007"]
# Relevant in formation extracted
setwd("c:/Users/Andrew/Desktop/Coursera/exploredata1/ExData_Plotting1")
## Working directory set to relevant local repo
png(file="plot1.png")
x<-powerdata$Global_active_power
hist(as.numeric(x),main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()
