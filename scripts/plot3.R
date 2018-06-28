png(filename = '../plots/plot3.png')
with(powcons, {
    plot(datetime, Sub_metering_1, type = 'l', 
         ylab= 'Energy sub metering', xlab = '')
    lines(datetime, Sub_metering_2, col = 'red')
    lines(datetime, Sub_metering_3, col = 'blue')
    legend('topright', col = c('black', 'red', 'blue'), 
           lty = 'solid', legend = c('Sub_metering_1', 
                                     'Sub_metering_2', 
                                     'Sub_metering_3'))
})
dev.off()