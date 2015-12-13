library(sqldf)
data1=read.csv.sql("E:/Course/Exploratory Data Analysis/household_power_consumption.txt",sql = "select * from file WHERE Date='1/2/2007'",header=TRUE,sep = ";")
data2=read.csv.sql("E:/Course/Exploratory Data Analysis/household_power_consumption.txt",sql = "select * from file WHERE Date='2/2/2007'",header=TRUE,sep = ";")
data=rbind(data1,data2)
attach(data)

dates=rep(c("1/2/07","2/2/07"),c(1440,1440))
x=paste(dates, Time)
t=strptime(x, "%d/%m/%y %H:%M:%S")
plot(t,Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")

png("E:/Course/Exploratory Data Analysis/plot2.png")
plot(t,Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()