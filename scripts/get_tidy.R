library(sqldf)
library(dplyr)
setwd('~/Documents/R Programming/Class/Exploratory Data Analysis/CourseProject1/ExData_Plotting1/scripts/')
filepath <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
if (!file.exists('./household_power_consumption.txt')) {
    z <- tempfile()
    download.file(filepath, z,
                  method = 'curl')
    downloaded <- date()
    unzip(z, exdir = '.')
    remove(z)
}
powcons <- read.csv.sql("./household_power_consumption.txt",
sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007'", 
sep =';', header = TRUE, colClasses = c(rep('character',2), rep('numeric',7)))
closeAllConnections()
file.remove('./household_power_consumption.txt')
powcons$datetime <- paste(powcons$Date, powcons$Time)
powcons <- powcons %>% select(c(-1,-2))
powcons$datetime <- strptime(powcons$datetime, 
                             format = '%d/%m/%Y %H:%M:%S')
