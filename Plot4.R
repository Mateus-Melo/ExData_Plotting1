#Calling the script that loads the data

source("PlotUtil.R")

#Changing the graphic device

png(filename = "Plot4.png", width = 480, height = 480, units = "px")

#Making the plot


par(mfrow=c(2,2))

plot(df$dateTime, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

plot(df$dateTime, df$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(df$dateTime, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(df$dateTime, df$Sub_metering_2, type = "l", xlab = "", col = "red")
lines(df$dateTime, df$Sub_metering_3, type = "l", xlab = "", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), pch = "_______")

plot(df$dateTime, df$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

#Turning off the graphic device

dev.off()