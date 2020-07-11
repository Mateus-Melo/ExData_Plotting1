#Calling the script that loads the data

source("PlotUtil.R")

#Changing the graphic device

png(filename = "Plot2.png", width = 480, height = 480, units = "px")

#Making the plot

plot(df$dateTime, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

#Turning off the graphic device

dev.off()