library(data.table)
setwd("c:/Users/Andrew/Desktop/Coursera/explotdata1/ExData_Plotting1")
## Working directory set to where my saved zipped file "datapow.zip" is
powerdata<-fread(unzip("./datapow.zip"),";")
powerdata<-powerdata[powerdata$Date=="1/2/2007"|powerdata$Date=="2/2/2007"]
# Relevant information extracted 
setwd("c:/Users/Andrew/Desktop/Coursera/exploredata1/ExData_Plotting1")
## Working directory set to relevant local repo
png(file="plot4.png")
par(mfcol=c(2,2))
x<-strptime(paste(powerdata$Date,powerdata$Time),format="%d/%m/%Y %H:%M:%S")
y<-powerdata$Global_active_power
plot(x,y,xlab="",ylab="Global Active Power",type="n") #empty plot created
lines(x,y)
y<-powerdata$Sub_metering_1
plot(x,y,xlab="",ylab="Energy sub metering",type="n") #empty plot created
lines(x,y)
y<-powerdata$Sub_metering_2
lines(x,y,col="red")
y<-powerdata$Sub_metering_3
lines(x,y,col="blue")
legend("topright",lty=1,bty="n",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
y<-powerdata$Voltage
plot(x,y,xlab="datetime",ylab="Voltage",type="n") #empty plot created
lines(x,y)
y<-powerdata$Global_reactive_power
plot(x,y,xlab="datetime",ylab="Global_reactive_power",type="n") #empty plot created
lines(x,y)
dev.off()