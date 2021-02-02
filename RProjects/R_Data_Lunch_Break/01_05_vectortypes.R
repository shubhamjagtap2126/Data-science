
# Data Structures are * VECTOR * Lists * Matrices * Arrays * Data Frame * factors

# vectors are the simplest data storage in R
# They are like standard variables
I.am.a.vector <- 1

# except they are closer to arrays
I.am.a.vector <- c(1,2,3)
I.am.a.vector <- c("twas","brillig","and","the","slithey","toves")
another.vector <- c(1,"twas") # concatenate different types into a vector results in character

# number of members vs number of characters
length(I.am.a.vector) == 6 # length is number of members, not length of string
sum(nchar(I.am.a.vector)) == 29 # length of complete "string"

# Vectors don't behave like strings. 
I.am.also.a.vector <- c("did","gyre","and","gimble","in","the","wabes")
paste(I.am.a.vector,I.am.also.a.vector) # maybe not what you expected
c(I.am.a.vector,I.am.also.a.vector) # end for end combination.

# need something like a python dictionary?
names(I.am.a.vector) <- c("first","second","third","fourth","fifth","sixth")
I.am.a.vector["second"]
