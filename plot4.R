library(sqldf)
data1=read.csv.sql("E:/Course/Exploratory Data Analysis/household_power_consumption.txt",sql = "select * from file WHERE Date='1/2/2007'",header=TRUE,sep = ";")
data2=read.csv.sql("E:/Course/Exploratory Data Analysis/household_power_consumption.txt",sql = "select * from file WHERE Date='2/2/2007'",header=TRUE,sep = ";")
data=rbind(data1,data2)
attach(data)
dates=rep(c("1/2/07","2/2/07"),c(1440,1440))
x=paste(dates, Time)
t=strptime(x, "%d/%m/%y %H:%M:%S")
par(mfrow=c(2,2))
plot(t,Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
plot(t,Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(t,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(t,Sub_metering_2,col="red")
lines(t,Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=2)
plot(t,Global_reactive_power,xlab="datetime",type="l")

png("E:/Course/Exploratory Data Analysis/plot4.png")
par(mfrow=c(2,2))
plot(t,Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
plot(t,Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(t,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(t,Sub_metering_2,col="red")
lines(t,Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=2)
plot(t,Global_reactive_power,xlab="datetime",type="l")
dev.off()