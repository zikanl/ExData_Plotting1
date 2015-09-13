## This file loads the dataset specified in the text.
## THe data has been downloaded to the local directory and 
## saved to the file  household_power_consumption.txt
## The location of the file is the working directory.

filename <- "household_power_consumption.txt"
data <- read.table(filename,
                    header = TRUE,
                    sep = ";",
                    colClasses = c("character", "character", rep("numeric",7)),
                    na = "?")
dim(data)
attach(data)
## We only need the data for the specified tw days
subset <- Date == "1/2/2007" | Date == "2/2/2007"

newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

rownames(newData) <- 1:nrow(newData)
dim(newData) # (much smaller  than original set)
attach(newData)
