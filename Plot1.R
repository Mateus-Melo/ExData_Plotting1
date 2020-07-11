#Calling the script that loads the data

source("PlotUtil.R")

#Changing the graphic device

png(filename = "Plot1.png", width = 480, height = 480, units = "px")

#Making the plot

hist(df$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",main = "Global Active Power")

#Turning off the graphic device

dev.off()