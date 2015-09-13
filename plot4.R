## This code produces the last, fourth plot (plot4.png) from the assignment.
## It assumes that data has been fetched and prepared for plotting. 
## In other words, load_data.R has been executed.

png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
par(mfrow = c(2, 2))

## Subplot at top left
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")

## Subplot at top right
plot(DateTime, Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")

## Subplot at Bottom left
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")

# Remove the border of legend here.
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

## Subplot at bottom right
plot(DateTime, Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(newData)[4])
dev.off()
