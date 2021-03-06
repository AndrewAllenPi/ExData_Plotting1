library(data.table)
setwd("c:/Users/Andrew/Desktop/Coursera/explotdata1/ExData_Plotting1")
## Working directory set to where my saved zipped file "datapow.zip" is
powerdata<-fread(unzip("./datapow.zip"),";") #separator is a semi-colon
powerdata<-powerdata[powerdata$Date=="1/2/2007"|powerdata$Date=="2/2/2007"]
# Relevant information extracted 
setwd("c:/Users/Andrew/Desktop/Coursera/exploredata1/ExData_Plotting1")
## Working directory set to relevant local repo
png(file="plot2.png")
x<-strptime(paste(powerdata$Date,powerdata$Time),format="%d/%m/%Y %H:%M:%S")
y<-powerdata$Global_active_power
plot(x,y,xlab="",ylab="Global Active Power (kilowatts)",type="n") #empty plot created
lines(x,y)
dev.off()