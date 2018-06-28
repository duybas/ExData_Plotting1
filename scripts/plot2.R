png(filename = '../plots/plot2.png')
with(powcons, plot(datetime, Global_active_power, 
                   type = 'l', 
                   ylab= 'Global Active Power (kilowatts)',
                   xlab = '')
)
dev.off()