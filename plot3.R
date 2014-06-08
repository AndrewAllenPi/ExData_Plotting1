setwd("c:/Users/Andrew/Desktop/Coursera/explotdata1/ExData_Plotting1")
## Working directory set to where my saved zipped file "datapow.zip" is
library(data.table)
png(file="plot3.png")
powerdata<-fread(unzip("./datapow.zip"),";") #separator is a semi-colon
powerdata<-powerdata[powerdata$Date=="1/2/2007"|powerdata$Date=="2/2/2007"]
x<-strptime(paste(powerdata$Date,powerdata$Time),format="%d/%m/%Y %H:%M:%S")
y<-powerdata$Sub_metering_1
plot(x,y,xlab="",ylab="Energy sub metering",type="n") #empty plot created
lines(x,y)
y<-powerdata$Sub_metering_2
lines(x,y,col="red")
y<-powerdata$Sub_metering_3
lines(x,y,col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()