##---------------------------------Libraries
install.packages("pacman")
pacman::p_load( tidyverse, data.table, readxl, writexl) 
pacman::p_load(tidyverse, rmarkdown, shiny,shinydashboard, leaflet, 
               tmaptools,lubridate, plotly, data.table, ggthemes,
               plotly) # https://www.tidyverse.org/packages/

### datasets
library(datasets)  # Load/unload base packages manually
# https://vincentarelbundock.github.io/Rdatasets/datasets.html # datasets files

# Big datsets
install.packages("nycflights13")
babynames::babynames
fueleconomy::vehicles
nasaweather::elev
nycflights13::flights
usdanutrients:: 
mldr.datasets::cal500
ggplot2movies::movies
gapminder::gapminder

#nrow(data)
# head(data)
# colnames(data)
# typeof(data)
# summary(data)
# str(data)
# rownames(data)

library(readxl)  # Read XLSX
dataset <- read_excel(NULL)

pacman::p_load(pacman, rio) 
rio_xlsx <- import("D:\\Careermitra\\MP\\MP Apti 2018\\ssc_mp_feedback_8aug18 mapping.xlsx")
rio_xlsx <- import("D:/Careermitra/MP/MP Apti 2018/ssc_mp_feedback_8aug18 mapping.xlsx")

#------------------------------ EXploring Data

colnames()
rownames()
rm()
nrow(data)
nrow(data)
ncol(data)
head(data, n=)
tail(data, n=)
str(data)
runif(data)  #R Unif 
summary(data)
if
while
for
p<- iris
describe(iris)



# CLEAN UP #################################################

# Clear packages
p_unload(dplyr, tidyr, stringr) # Clear specific packages
p_unload(all)  # Easier: clears all add-ons
detach("package:datasets", unload = TRUE)  # For base

##---------------------------------Functions
grepl(), # which returns TRUE when a pattern is found in the corresponding character string.
grep(), # which returns a vector of indices of the character strings that contains the pattern.
as.Date ()  strptime()
builtins() # List all built-in functions
options()  # Set options to control how R computes & displays results

?NA        # Help page on handling of missing data values
abs(x)     # The absolute value of "x"
append()   # Add elements to a vector
c(x)       # A generic function which combines its arguments 
cat(x)     # Prints the arguments
cbind()    # Combine vectors by row/column (cf. "paste" in Unix)
diff(x)    # Returns suitably lagged and iterated differences
gl()       # Generate factors with the pattern of their levels
grep()     # Pattern matching
identical()  # Test if 2 objects are *exactly* equal
jitter()     # Add a small amount of noise to a numeric vector
julian()     # Return Julian date
length(x)    # Return no. of elements in vector x
ls()         # List objects in current environment
mat.or.vec() # Create a matrix or vector
paste(x)     # Concatenate vectors after converting to character
range(x)     # Returns the minimum and maximum of x
rep(1,5)     # Repeat the number 1 five times
rev(x)       # List the elements of "x" in reverse order
seq(1,10,0.4)  # Generate a sequence (1 -> 10, spaced by 0.4)
sequence()     # Create a vector of sequences
sign(x)        # Returns the signs of the elements of x
sort(x)        # Sort the vector x
order(x)       # list sorted element numbers of x
tolower(),toupper()  # Convert string to lower/upper case letters
unique(x)      # Remove duplicate entries from vector
system("cmd")  # Execute "cmd" in operating system (outside of R)
vector()       # Produces a vector of given length and mode

formatC(x)     # Format x using 'C' style formatting specifications
floor(x), ceiling(x), round(x), signif(x), trunc(x)   # rounding functions

Sys.getenv(x)  # Get the value of the environment variable "x"
Sys.putenv(x)  # Set the value of the environment variable "x"
Sys.time()     # Return system time
Sys.Date()     # Return system date
getwd()        # Return working directory
setwd()        # Set working directory
?files         # Help on low-level interface to file system
list.files()   # List files in a give directory
file.info()    # Get information about files

# Built-in constants:
pi,letters,LETTERS   # Pi, lower & uppercase letters, e.g. letters[7] = "g"
month.abb,month.name # Abbreviated & full names for months
Maths
log(x),logb(),log10(),log2(),exp(),expm1(),log1p(),sqrt()   # Fairly obvious
cos(),sin(),tan(),acos(),asin(),atan(),atan2()       # Usual stuff
cosh(),sinh(),tanh(),acosh(),asinh(),atanh()         # Hyperbolic functions
union(),intersect(),setdiff(),setequal()             # Set operations
+,-,*,/,^,%%,%/%                                     # Arithmetic operators
  <,>,<=,>=,==,!=                                      # Comparison operators
  eigen()      # Computes eigenvalues and eigenvectors

deriv()      # Symbolic and algorithmic derivatives of simple expressions
integrate()  # Adaptive quadrature over a finite or infinite interval.

sqrt(),sum()
?Control     # Help on control flow statements (e.g. if, for, while)
?Extract     # Help on operators acting to extract or replace subsets of vectors
?Logic       # Help on logical operators
?Mod         # Help on functions which support complex arithmetic in R
?Paren       # Help on parentheses
?regex       # Help on regular expressions used in R
?Syntax      # Help on R syntax and giving the precedence of operators
?Special     # Help on special functions related to beta and gamma functions


Graphical
help(package=graphics) # List all graphics functions

plot()                # Generic function for plotting of R objects
par()                 # Set or query graphical parameters
curve(5*x^3,add=T)    # Plot an equation as a curve
points(x,y)           # Add another set of points to an existing graph
arrows()              # Draw arrows [see errorbar script]
abline()              # Adds a straight line to an existing graph
lines()               # Join specified points with line segments
segments()            # Draw line segments between pairs of points
hist(x)               # Plot a histogram of x
pairs()               # Plot matrix of scatter plots
matplot()             # Plot columns of matrices

?device               # Help page on available graphical devices
postscript()          # Plot to postscript file
pdf()                 # Plot to pdf file
png()                 # Plot to PNG file
jpeg()                # Plot to JPEG file
X11()                 # Plot to X window
persp()               # Draws perspective plot
contour()             # Contour plot
image()               # Plot an image
Fitting / regression / optimisation
lm		# Fit liner model
glm		# Fit generalised linear model
nls		# non-linear (weighted) least-squares fitting
lqs		# "library(MASS)" resistant regression

optim		# general-purpose optimisation
optimize	# 1-dimensional optimisation
constrOptim	# Constrained optimisation
nlm		# Non-linear minimisation
nlminb		# More robust (non-)constrained non-linear minimisation
Statistical
help(package=stats)   # List all stats functions

?Chisquare            # Help on chi-squared distribution functions
?Poisson              # Help on Poisson distribution functions
help(package=survival) # Survival analysis

cor.test()            # Perform correlation test
cumsum(); cumprod(); cummin(); cummax()   # Cumuluative functions for vectors
density(x)            # Compute kernel density estimates
ks.test()             # Performs one or two sample Kolmogorov-Smirnov tests
loess(), lowess()     # Scatter plot smoothing
mad()                 # Calculate median absolute deviation
mean(x), weighted.mean(x), median(x), min(x), max(x), quantile(x)
rnorm(), runif()  # Generate random data with Gaussian/uniform distribution
splinefun()           # Perform spline interpolation
smooth.spline()       # Fits a cubic smoothing spline
sd()                  # Calculate standard deviation
summary(x)            # Returns a summary of x: mean, min, max etc.
t.test()              # Student's t-test
var()                 # Calculate variance
sample()              # Random samples & permutations
ecdf()                # Empirical Cumulative Distribution Function
qqplot()              # quantile-quantile plot


#----------------------------------------------------------------data preprocessing template

# data preprocessing template
# import data and library


# Taking care of missing data ( Mean imputation method )
dataset$Age <-  ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)), dataset$Age)


# Taking care of missing data ( median imputation method )
# https://cran.r-project.org/web/packages/imputeMissings/imputeMissings.pdf
dataset$Age <-  ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) median(x, na.rm = TRUE)), dataset$Age)


# Encoding categorical data
dataset$Country <-  factor(dataset$Country,
                         levels = c('France', 'Spain', 'Germany'), labels = c(1, 2, 3))


# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split <- sample.split(dataset$DependentVariable, SplitRatio = 0.8)
training_set <-  subset(dataset, split == TRUE)
test_set <-  subset(dataset, split == FALSE)

# Feature Scaling
# training_set[,2:3] <-  scale(training_set[,2:3])
# test_set[,2:3] <-  scale(test_set[,2:3])


# summary of regressor is must to understand the significance

#--------------------------------------------------------------------------------


#------------------------------ Basic Plots

hist(w1$vals,main='Leaf BioMass in High CO2 Environment',xlab='BioMass of
Leaves',ylim=c(0,16)) stripchart(w1$vals,add=TRUE,at=15.5)
boxplot(w1$vals,horizontal=TRUE,at=16,add=TRUE,axes=FALSE)


#------------------------------ Filter data

filt1 <- s6hw$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony","Universal","WB")
filt2 <- s6hw$Genre %in% c("action", "adventure", "animation", "comedy", "drama")
mov2 <- s6hw[filt1&filt2,]



M2013<- merge.data.frame(D2013, D1, by.x = 'Country.Code', by.y = 'Code')  Merge by vlookup


#------------------------------ ggplot boxplot

p<- ggplot(data=mov2, aes(x=Genre, y=Gross.perc.US))
p + geom_jitter(aes(size=Budget.Mill, colour=Studio)) +
  geom_boxplot(alpha=0.7, outlier.colour=NA)


qplot(x, y, data=, color=, shape=, size=, alpha=, geom=, method=, formula=, facets=, xlim=, ylim= xlab=, ylab=, main=, sub=)
geom="point", "smooth", "boxplot", "line", "histogram", "density", "bar", and "jitter".



x1 + coord_flip()
x1 + coord_flip() + facet_wrap(~Gender)
x1 + coord_flip() + facet_wrap(~District)



#------------------------------lables
#q<- q + xlab("") + ylab("") +   ggtitle("")

#------------------------------themes

q <- q +
  theme(
    axis.title.x = element_text(colour="Blue", size=30),
    axis.title.y = element_text(colour="Blue", size=30),
    axis.text.x = element_text(size=20),
    axis.text.y = element_text(size=20),
    plot.title = element_text(size=40) ,
    legend.title = element_text(size=12),
    legend.text = element_text(size=12),
    text = element_text(fami1y="Comic Sans MS")
  )

#--------------------------------------------------------------------------------themes

# Basic plot
p <- ggboxplot(ToothGrowth, x = "dose", y = "len", color = "dose",
               title = "Box Plot created with ggpubr",
               subtitle = "Length by dose",
               caption = "Source: ggpubr",
               xlab ="Dose (mg)", ylab = "Teeth length")
p

# Change the appearance of titles and labels
p +
  font("title", size = 14, color = "red", face = "bold.italic")+
  font("subtitle", size = 10, color = "orange")+
  font("caption", size = 10, color = "orange")+
  font("xlab", size = 12, color = "blue")+
  font("ylab", size = 12, color = "#993333")+
  font("xy.text", size = 12, color = "gray", face = "bold")

# Change the appearance of legend title and texts
p +
  font("legend.title", color = "blue", face = "bold")+
  font("legend.text", color = "red")

## plot of economist page from bootcamp tutorials

pointsToLabel <- C("Russia", "VenezueTa", "Iraq", "Myanmar", "Sudan")

df <- freadC'Economist_Assignment_Data.csv',drop=l)
pl1<- ggplot(df,aes(x=CPI,y=HDI,color=Region)) + 
      geom_point(size=4,shape=1) + 
      geom_smooth(aes(group=1), method='lm',formula = y~log(x),se=F,color='red') + 
      geom_text(aes(label = Country), coTor = "gray20",
                data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE) +
      scale_x_continuous(limits=c(.9,10.5),breaks=1:10) +
      theme_economist_white()
ggplotly(pl1)
#--------------------------------------------------------------------------------t


install.packages('extrafont')
library(extrafont)
install.packages("extrafontdb")
library(Rttf2pt1)
?loadfonts()       #Register fonts for Windows bitmap output
fonts() 
font_import("AG Times")
loadfonts("AG Times")
y
font_import()
loadfonts("fira")

#----Access rows and columns---------------------------------------------
# All Rows and All Columns
df[,]
# First row and all columns
df[1,]
# First two rows and all columns
df[1:2,]
# First and third row and all columns
df[ c(1,3), ]
# First Row and 2nd and third column
df[1, 2:3]
# First, Second Row and Second and Third COlumn
df[1:2, 2:3]
# Just First Column with All rows
df[, 1]
# First and Third Column with All rows
df[,c(1,3)]

# First Column as data frame
as.data.frame( df[,1], drop=false)

# Element at 2nd row, third column
df[2,3]

sample_frac(c,0.1)
complete.cases(b)
b[!complete.cases(b),]


## this is taken from lynda r course by using grepl to find repeate names with any error and assign unique 
inspections %>%
  group_by(RestaurantName) %>%
  summarize(inspections=n()) %>%
  arrange(desc(inspections))

inspections %>%
  filter(grepl("McDo", RestaurantName, ignore.case=TRUE)) %>%
  filter(RestaurantName!='SARAH MCDONALD STEELE') %>%
  select(RestaurantName) %>%
  unique() %>%  # pull(RestaurantName) 
  View() 

#--------------------------------------------------------------Dplyr Function


##### dplyr data manipulation:
  
filter() and slice() to select cases based on their values.
arrange() to reorder the cases.
select() and rename() to select variables based on their names.
mutate() and transmute() to add new variables that are functions of existing variables.
summarise() to condense multiple values to a single value.
sample_n() and sample_frac() to take random samples.

# Filter rows
filter(flights, month == 1, day == 1)
flights[flights$month == 1 & flights$day == 1, ]

# Arrange rows
arrange(flights, desc(arr_delay)) , asce()

# Select columns
select(), like starts_with(), ends_with(), matches() and contains()



##### Tidyr Package


####  Data extration from single sheet to multiple ####

#### install.packages("pacman")
pacman::p_load(readxl, tidyverse, writexl)  
setwd("D:\\Avirata\\CPD Level 3\\Online Training\\Allusers list\\Shared 27 Jan 2020\\Pending 27 Jan")
d <- read_excel('Pending 27 Jan.xlsx')
colnames(d)
d <- d[2:9]
class(d$SchoolIndex)
d$SchoolIndex <- as.character(d$SchoolIndex)
unique(d$District) # length(unique(d$District))
d <- d %>% arrange(., District,Taluka,SchoolIndex) #%>% 
  # filter(., District != "MSCERT") # %>% 
  # select(d, c())   # only few columns to select

ColName <- unique(d$District) # length(ColName)

dList <- d %>% group_split(District, keep=T)
names(dList) <- ColName
#### for xlsx export
mapply(write_xlsx, dList,path= paste0(names(dList), '_Aviratalevel_3_Pendinglist.xlsx'))
# for CSV export
# mapply(write.csv, dList,file=paste0(names(dList), '_Avirata level 3 Pending list_26nov19.csv'))


#### to set back the directory
setwd('C:\\Users\\User\\Documents\\R')
getwd()

# p_load('writexl')
library(writexl)
sheets <- list("Preference_Counts" = Preference_Counts, 'Preference_Counts_Gender'=Preference_Counts_Gender ,"Gender_count" = Gender_count, "schools" = schools) #assume sheet1 and sheet2 are data frames
write_xlsx(sheets, "analysis.xlsx")
# sheets <- list(Preference_Counts, Gender_count, schools) 


# ### to change csv to Excel
# # filenames <- list.files("D:/finished CSVs", pattern="*.csv", full.names=TRUE)
# filenames <- list.files( pattern="*.csv", full.names=TRUE)
# 
# for(i in filenames){
#   a <- read.csv(i)
#   new_name <- sub('.csv', '.xlsx', i, fixed = TRUE)
#   write_xlsx(a, new_name)}
# 
# ### to change excel to CSV
# # filenames <- list.files("D:/finished CSVs", pattern="*.xlsx", full.names=TRUE)
# filenames <- list.files("D:\\Careermitra\\01_Raw Scores\\Maha 2018 Raw" ,pattern="*.xlsx", full.names=TRUE)
# 
# for(i in filenames){
#   a <- read_xlsx(i)
#   new_name <- sub('.xlsx', '.csv', i, fixed = TRUE)
#   write_csv(a, new_name)}




#----



all packages C:\Users\User\AppData\Local\Temp\Rtmp8Q9QrA\downloaded_packages