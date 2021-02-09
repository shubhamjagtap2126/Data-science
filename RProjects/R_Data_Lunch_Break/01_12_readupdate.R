# Main idea: Navigating data.frames

# Need some data to play with
data("ChickWeight") # builds a data.frame

# Create Variables --------------------------------------------------------
ChickWeight$someNumbers <- c(1:nrow(ChickWeight)) # number of rows must be equal

# Delete Variables --------------------------------------------------------
ChickWeight$someNumbers <- NULL

# Change Value of Variables -----------------------------------------------
medianWeight <- median(ChickWeight$weight)
ChickWeight$weight <- ifelse(ChickWeight$weight > medianWeight,"Larger","Smaller")

# You may have heard of attach() as a way of making dataframe references easier. DON'T DO IT!
# instead, use with()
medianTime <- median(ChickWeight$Time)
ChickWeight$Time <- with(ChickWeight, ifelse(Time > medianTime,"Longer","Shorter"))
