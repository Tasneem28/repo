data1=read.csv.sql("E:/Course/Exploratory Data Analysis/household_power_consumption.txt",sql = "select * from file WHERE Date='1/2/2007'",header=TRUE,sep = ";")
data2=read.csv.sql("E:/Course/Exploratory Data Analysis/household_power_consumption.txt",sql = "select * from file WHERE Date='2/2/2007'",header=TRUE,sep = ";")
data=rbind(data1,data2)
attach(data)
hist(Global_active_power,main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")

png("E:/Course/Exploratory Data Analysis/plot1.png")
hist(Global_active_power,main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")
dev.off()
