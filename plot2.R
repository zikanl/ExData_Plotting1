## This code produces the second plot (plot2.png) from the assignment.
## It assumes that data has been fetched and prepared for plotting. 
## In other words, load_data.R has been executed.

png(filename = "plot2.png", 
     width = 480, height = 480,
     units = "px", bg = "transparent")
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()
