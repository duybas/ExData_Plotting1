png(filename = '../plots/plot1.png')
with(powcons, hist(Global_active_power, col = 'red',
                   xlab = 'Global Active Power (kilowatt)',
                   main = 'Global Active Power')
)
dev.off()