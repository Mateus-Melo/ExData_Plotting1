#Loading useful packages

library(lubridate)
library(dplyr)
#Downloading, unzipping and loading the data

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "data.zip")
unzip("data.zip")
df <- read.table("household_power_consumption.txt", sep=";", header = TRUE)

#checking the data and correcting the variables classes
str(df)
df <- mutate(df, dateTime = dmy_hms(paste(df$Date, df$Time)))
df[3:8] <- sapply(df[3:8], as.numeric)

#Filtering the data to the specific period of time

df <- subset(df, dmy(Date) == ymd("2007-02-01") | dmy(Date) == ymd("2007-02-02"))

#Changing de locale to make the weekdays names in english

Sys.setlocale("LC_TIME", "English")





