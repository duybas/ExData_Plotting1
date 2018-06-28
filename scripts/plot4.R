png(filename = '../plots/plot4.png')
par(mfrow = c(2,2))
with(powcons, {
    plot(datetime, Global_active_power, type = 'l',
         ylab = 'Global Active Power', xlab = '')
    plot(datetime, Voltage, type = 'l', ylab = 'Voltage',
         xlab = 'datetime')
    plot(datetime, Sub_metering_1, type = 'l',
         ylab= 'Energy sub metering', xlab = '')
    lines(datetime, Sub_metering_2, col = 'red')
    lines(datetime, Sub_metering_3, col = 'blue')
    legend('topright', col = c('black', 'red', 'blue'),
           lty = 'solid', legend = c('Sub_metering_1',
                                     'Sub_metering_2',
                                     'Sub_metering_3'),
           bty = 'n')
    plot(datetime, Global_reactive_power, type = 'l',
         xlab = 'datetime', ylab = 'Global_reactive_power')
})
dev.off()
