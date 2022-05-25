# Udemy - R Programming Advanced Analytics In R For Data Science


#6. The Factor Variable Trap

as.numeric(
as.logical(
factor(
typeof(
as.numeric(as.character()

# ----------------factor and then as.numeric is Dengourous


# 8. gsub() and sub()
gsub(pattern, replacement, data)
# For character like $ use //$

# 10. What is an NA
TRUE == FALSE
TRUE == 5
TRUE == 1
FALSE == 4
FALSE == FALSE
FALSE == 0
NA == TRUE
NA == FALSE
NA == 15
15 == NA
NA == NA


#11. An Elegant Way To Locate Missing Data
complete.cases(

# read.csv("Future 500.csv", na.strings=c(""))  to replace blanks with NA

data[!complete.cases(),] #to show the NA/Blank in data/ Locate Missing Data with all columns
#Filtering: using which() for non-missing data

fin[fin$Revenue == 9746272,] #If there is NA then it will show NA instead False to filter
which(fin$Revenue == 9746272)
which
fin[whict(fin$Revenue == 9746272),]



#13. Data Filters is.na() for Missing Data
is.na(fin$Expenses)
Fin[is.na(fin$Expenses),]




#Removing records with missing data
fin_backup <- fin
fin[!complete.cases(fin),]
fin[is.naCfin$Industry),]
fin[!is.na(fin$Industry),] #opposite
fin <- fin[!is.na(fin$Industry),]

#Resetting the dataframe index

rownames(fin) <- 1:nrow(fin)

rownames(fin) <- NULL
fin

#Replacing Missing Data: Factual Analysis
fin[!comp1ete.cases(fin),]

fin[is.na(fin$State),]

fin[is.na(fin$State) & fin$City=="New York",]
Fin[is.na(fin$State) & fin$City=="New York","State"] <- "NY"

#--------- Subset[rows, columns]

#Replacing Missing Data: Mbdian Imputatian Mbthod (Part 1)
fin[!complete.cases(fin),]

median(fin[,"Employees"], na.rm=TRUE)
mean(fin[,"Employees"], na.rm=TRUE)

median(fin[fin$Industry=="Retail","Employees"], na.rm=TRUE)

med_empl_retail <- median(fin[fin$Industry=="Retail","Employees"], na.rm=TRUE)
med_empl_retail


fin[is.na(fin$Employees) & fin$Industry=="Retail",]

fin[is.na(fin$Employees) & fin$Industry=="Retail","Employees"] <- med_empl_retail
#check:
fin[3,]


#18. Replacing Missing Data Median Imputation Method (Part 2)
fin[!compiete.casés(Fin),] 

med_growth_constr <- median(fin[fin$Industry=="Construction","Growth"], na.rm=TRUE)
med_growth_constr

Fin[is.na(fin$Growth) & fin$Industry=="Construction",]

Fin[is.na(fin$Growth) & fin$Industry== "Construction","Growth"] <- med_growth_constr

#check:
fin[8,]


#Replacing Missing Data: Mbdian Imputatian Mbthod (Part 3)

#Mini-exercise
#Revenue:

med_rev_constr <- median(fin[fin$Industry=="Construction","Revenue"], na.rm=TRUE)
med_rev_constr

fin[is.na(fin$Revenue) & fin$Industry=="Construction",]

fin[is.na(fin$Revenue) & fin$Industry=="Construction","Revenue"] <- med_rev_constr
Fin[!complete.cases(fin),]

#Expenses:
#Be careful here. Only for certain ones

#We don't want to replace that one that's by itself (because then that row won't add up)
med_exp_constr <- median(Fin[fin$Industry=="Construction","Expenses"], na.rm=TRUE)
med_exp_constr

fin[is.na(fin$Expenses) & fin$Industry=="Construction",]
fin[is.na(fin$Expenses) & fin$Industry=="Construction" & is.na(fin$profit),] # so that only required cell will picked up
fin[is.na(fin$Expenses) & fin$Industry=="Construction","Expenses"] <- med_exp_constr


#Visualization:
#install.packages("ggplot2")
library(ggplot2)
#A scattenplot classified by industry showing revenue, expenses
p <- ggplot(data=fin)
p
p + geom_point(aes(x=Revenue, y=Expenses,
		colour=Industry, size=Profit))

#A scatterplot that includes industry trends for the expense
d <- ggplot(data=fin, aes(x=Revenue, y=Expenses,
                        colour=Industry))

d + geom_point() +
    geom_smooth(fill=NA, size=1.2)

#Boxplot
f <- ggplot(data=fin, aes(x=Industry, y=Growth,
                      colour=Industry))
f + geom_boxplot(size = 1)

#Extra:
f + geom_jitter() +
    geom_boxplot(size = 1, alpha=@.5, outlier.color=NA)
		

#####################33 List in R

util <- read.csv("Machine Utilization.csv")
head(util, 12)
str(util)
summary(util)

#Handling Date-Times in R
?POSIXct
as.POSIXct(util$Timestamp, format="%d/%m/%Y %H:%M")


#TIP: how to rearrange columns in 0 df:
util$Timestamp <- NULL
head(util,12) 
util <- util[,c(4,1,2,3)]  # rearrange columns


# Construct list:
#Character: Machine name
#Vector: (Min, mean, max) Utilization for the month (excluding unknown hours)
#logical: Has utilization ever fallen below 90% ? TRUE/FALSE


util_stats_rl1 <- c(min(RL1$Utilization, na.rm = T),
                    mean(RL1$Utilization, na.rm = T),
                    max(RL1$Utilization, na.rm = T))
util_stats_rl1



util_under_90_flag <- lengh(which(RL1$Utilization < 0.90)) > 0
util_under_90_flag

list_rl1 <- list("RL1", util_stats_rll, util_under_90_flag)
list_rl1


#Naming components of a list

list_r11
names(list_rl1)
names(list_rl1) <- c("Machine", "Stats", "LowThreshold")
list_rl1

#Another way. Like with dataframes:

rm(list_r11)
list_r11
list_r11 <- list(Machine="RL1", Stats=util_stats_rll, LowThreshold=util_under_90_flag)


#Extracting components of a list
#three ways:
#[] - will always return a list
#[[]] - will always return the actual object
#$ - same as [[]] but prettier

list_rl1
list_rl1[1]
list_rl1[[1]]


#how would you access the 3rd element of the vector (max utilization)?
list_rl1
list_rl1[[2]][3]
list_rl1$$tats[3]


#Building a timeseries plot
#install.packages("ggplot2")
library(ggplot2)
p <- ggplot(data=util)
p + geom_line(aes(x=PosixTime, y=Utilization,
              colour=Machine), size=1.2) +
              facet_grid(Machine~.) +
    geom_hline(yintercept = 0.90,
              colour="Gray", size=1.2, linetype=3)

?linetype

# <- 4. Apply Family of Functions

#Read Data

Chicago <- read.csv("Chicago-F.csv", row.names=1)
NewYork <- read.csv("NewYork-F.csv", row.names=1)
Houston <- read.csv("Houston-F.csv", row.names=1)
SanFrancisco <- read.csv("SanFrancisco-F.csv", row.names=1)
#check


#let's convert to matrices:

Chicago <- as.matrix(Chicago)
NewYork <- as.matrix(NewYork)
Houston <- as.matrix(Houston)
SanFrancisco <- as.matrix(SanFrancisco)

#check:

is.matrix(Chicago)

#let's put all of these into a list:

Weather <- list(Chicago, NewYork, Houston, SanFrancisco)

Weather <- list(Chicago=Chicago, NewYork=NewYork, Houston=Houston, SanFrancisco=SanFrancisco)
Weather


# The Apply Family:
# 
# apply - use on a matrix: either the rows or the columns
# tapply - use on a vector to extract subgroups and apply a function to them
# by - use on data frames. Same concept as in group by in SQL
# eapply - use on an environment (E)
# lapply - apply a function to elements ofa list (L)
# sapply - a version of lapply. Can simplify (S) the result so its not presented as a list
# vapply - has a pre-specifled type of return value (V)
# replicate - run a function several times. Usually used with generation of random variables
# mapply - multivariate (M) version of sapply. Arguments can be recycled
# rapply - recursive (R) version of lapply


#Using apply()
?apply
Chicago

apply(Chicago, 1, mean)

#Check:
mean(Chicago["DaysWithPrecip",])
#analyze one city: 
Chicago
apply(Chicago, 1, mean) # By row analysis
apply(Chicago, 1, max) # By row analysis

apply(Chicago, 2, mean) # By Column analysis
apply(Chicago, 2, max) # By Column analysis


#Compare-
apply(Chicago, 1, mean)
apply(NewYork, 1, mean)
apply(Houston, 1, mean)
apply(SanFrancisco, 1, mean)
                              ##<<<< Nearly derived - But has Faster way

#Recreating the apply function with loops (advanced topic)
Chicago
#find the mean of every row:
#1. via loops

output <- NULL #preparing an empty vector
for(i in 1:5){ #run cycle
output[i] <- mean(Chicago[i,])
}

output #Let's see what we have
names(outout) <- rownames(Chicago)

#1. via apply function
apply(Chicago, 1, mean)


#Using lapply()

?lapply
Chicago
t(Chicago)

Weather

lapply(Weather, t) #List(t(weather$Chicago), t(weather$NewYOrk), t(weather$Houston), t(weather$5anFrancisco))
mynewlist <- lapply(Weather, t)

mynewlist


#example 2

Chicago
rbind(Chicago, NewRow=1:12)
lapply(Weather, rbind, NewRow=1:12)

#example 3

?rowMeans

rowMeans(Chicago) #identical to: apply(Chicago, 1, mean)
lapply(Weather, rowMeans)
                  #<<< (nearly) deliv 1: even better, but will improve further


#rowMeans
#colMeans
#rowSums
#colums


#Combining lapply with the [J operator

Weather

Weather[[1]] [1, 1] #iVeather[[1]][1, 1], Weather[[2]][1, 1], . . .
lapply(Weather, "[", 1, 1) #Combining 1st object from 1st row and column

lapply(Weather, "[", 1, )  #Combining 1st row from all the list

lapply(Weather, "[", , 2)  #Combining 2nd Column from all the list


#Adding your own functions

lapply(Weather, rowMeans)
lapply(Weather, Function(x) x[1,])
lapply(Weather, Function(x) x[5,])
lapply(Weather, Function(x) x[,12])

Weather

lapply(Weather, function(z) z[1,]-z[2,])
lapply(Weather, function(z) round((z[1,]-z[2,])/z[2,],Z))
                                            #«Delivz: temp fluctuations. Will improve



# 10. Using sapply()

#AvgHigh_F for July:
lapply(Weather, "[", 1, 7)
sapplyCWeather, "[", 1, 7)

#AvgHigh_F for 4th quarter:
lapply(Weather, "[", 1, 10:12)
sapply(Weather, "[", 1, 10:12)

#Another example:
lapply(Weather, rowMeans)
sapply(Weather, rowMeans)

round(sapply(Weather, rowMeans), 2) #<< Deliv 1. Awesome!

#Another example:

lapply(Weather, function(z) round((z[1,]-z[2,])/z[2,],2))
sapply(Weather, function(z) round((z[1,]-z[2,])/z[2,],2))


#By the way:
sapply(Weather, rowMeans, Simplify=FALSE) #same as lapply


# Nesting Apply Functions

lapply(Weather, rowMeans)
?rowMeans

Chicago

apply(Chicago, 1, max)

#apply across whole list:
lapply(Weather, apply, 1, max) # Prefered approach
lapply(Weather, function(x) apply(x, 1, max))  # By Function

#tidy up:

sapply(Weather, apply, 1, max) #<< deli v 3
sapply(Weather, apply, 1, min) #<< deliv 4

#Very advanced tutorial!
#Which.max

?which.max
which.max(Chicago[1,])  # Gives the index of max value columnn
names(which.max(Chicago[1,]) # Gives the index name of max value columnn

#by the sounds of it:

#we will have: apply - to iterate over rows of the matrix

#and we will have: lapply or sapply - to iterate over components of the list
lapply(Chicago, 1, function(x) names(which.max(x)))   

lapply(Weather, function(y) apply(y, 1, function(x) names(which.max(x))))
sapply(Weather, function(y) apply(y, 1, function(x) names(which.max(x))))



