## This code produces the first plot (plot1.png) from the assignment.
## It assumes that data has been fetched and prepared for plotting. 
## In other words, load_data.R has been executed.

png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()
