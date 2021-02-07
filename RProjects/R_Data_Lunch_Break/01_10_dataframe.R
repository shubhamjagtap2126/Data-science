
# Data Structures are * Vectors * Lists * Matrices * Arrays * DATA FRAME * factors

# data frame is like a spreadsheet
# Columns (aka: variables) are vectors
# Rows (aka: observations) are lists and must contain an equal number of columns

I.am.a.vector <- c(1,2,3,4,5,6)
I.am.also.a.vector <- c("twas","brillig","and","the","slithey","toves")
many.months <- month.abb[1:6] # e.g. jan, feb, mar, apr, may, jun

I.am.a.dataframe <- data.frame(I.am.a.vector,I.am.also.a.vector,many.months)

# vectors need to have identical lengths (lengths aka "observations")
I.am.a.short.vector <- c(1:5)
I.am.a.failure <- data.frame(I.am.a.vector,I.am.a.short.vector) #oops - different # of rows

# stringsAsFactors --------------------------------------------------------
# strings are converted to factors - this is a default behavior
I.am.a.dataframe[2,3] # col 3 is a factor (used to be a string)
# I() is "Inhibit conversion
str(I.am.a.dataframe)
I.am.a.dataframe <- data.frame(I.am.a.vector,I(many.months),row.names = I.am.also.a.vector)
str(I.am.a.dataframe)
I.am.a.dataframe["slithey","many.months"]

# row.names ---------------------------------------------------------------
I.am.a.dataframe <- data.frame(I.am.a.vector,many.months,row.names = I.am.also.a.vector)
I.am.a.dataframe["slithey","many.months"]
row.names(I.am.a.dataframe)
