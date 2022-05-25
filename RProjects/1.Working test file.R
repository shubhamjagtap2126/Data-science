links <- data.frame(
  source=c("group_A","group_A", "group_B", "group_C", "group_C", "group_E"), 
  target=c("group_C","group_D", "group_E", "group_F", "group_G", "group_H"), 
  value=c(2,3, 2, 3, 1, 3)
)

# From these flows we need to create a node data frame: it lists every entities involved in the flow
nodes <- data.frame(
  name=c(as.character(links$source), as.character(links$target)) %>% 
    unique()
)

links$IDsource <- match(links$source, nodes$name)-1 
links$IDtarget <- match(links$target, nodes$name)-1

links$group <- as.factor(c("type_a","type_a","type_a","type_b","type_b","type_b"))

# Add a 'group' column to each node. Here I decide to put all of them in the same group to make them grey
nodes$group <- as.factor(c("my_unique_group"))

# Give a color for each group:
my_color <- 'd3.scaleOrdinal() .domain(["type_a", "type_b", "my_unique_group"]) .range(["#69b3a2", "steelblue", "grey"])'

# Make the Network
networkD3::sankeyNetwork(Links = links, Nodes = nodes, Source = "IDsource", Target = "IDtarget", 
                   Value = "value", NodeID = "name", 
                   colourScale=my_color, LinkGroup="group", NodeGroup="group")


c(1:20)

a <- data.frame(
  v2=c(2,3, 2, 3, 1, 3),
  v1=c(2,3, 2, 3, 1, 3),
  v3=c(2,3, 2, 3, 1, 3)
)


a[,'v1'-'v2'/'v3']
a[,'v1']-a$v2



set.seed(1410)
y <- matrix(runif(30), ncol=3, dimnames=list(letters[1:10], LETTERS[1:3]))
plot(y[,1], y[,2])

set.seed(42); u1 <- runif(30)


grid(5, 5, lwd = 2)
op <- par(mar=c(8,8,8,8), bg="lightblue")
plot(y[,1], y[,2], type="p", col="red", cex.lab=1.2, cex.axis=1.2,
     cex.main=1.2, cex.sub=1, lwd=4, pch=20, xlab="x label",
     ylab="y label", main="My Main", sub="My Sub")
par(op)



a <- function(data, col) {
  col <- data %>%  filter(col == 1) %>% select(6:12) %>% select(-col) %>% 
    apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep(col,length(rownames(.)))) 
  rownames(col) <- NULL
}



test %>%  filter(I_Agri == 1) %>% select(6:12) %>% select(-"I_Agri") %>% 
  apply(.,2,sum)

class(interest)

a <- function(i) {
 return(test %>%  filter(i == 1) %>% select(6:12) %>% select(-i) %>% 
        apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep(i,length(rownames(.))))
)} 

ab <- rbind(ab)

for (i in interest){
ab <- test %>%  filter(i == 1) %>% select(6:12) %>% select(-i) %>% 
         apply(.,2,sum) %>% cbind() %>% cbind(.,rownames(.),rep(i,length(rownames(.))))

}

do.call(interest)

interest <- factor(interest)
interest <- colnames(test[,6:12])
interest1 <- as.data.frame(interest)

rownames(i) <- NULL

### John Hopkins training

list.files(recursive = TRUE)
data.table(x = rnorm(9), z = rnorm(9))
read.table("C:\\Downloads\\Online courses\\Data Science John Hopkins Coursera Courses\\Data Science Specialization Course Notes\\4_EXDATA\\pm25_data\\RD_501_88101_1999-0.txt",header = T, sep = "|")
write.table(data_info,file = "info.txt",col.names = TRUE,fileEncoding = "UTF-8",sep = ",")

pacman::p_load(RMySQL)
dbConnect(MySQL(), user = "genome", db = "hg19", host = "genome-mysql.cse.ucsc.edu")


data.frame("var1" = sample(1:5), "var2" = sample(6:10), "var3" = (11:15))
rnorm(5)
all(variable >0)
ls()
colnames(test)
round(apply(test[1:10,4 & 6:13],2,rank),1)

lapply(test[6:13],rowsum,test$Gender)

library(reticulate)
use_virtualenv("myenv")
reticulate::use_virtualenv("myenv")
reticulate::repl_python()
a = 1
a <- (1:10)


nycflights13::airlines
colnames(data)
data %>%  select(2,5)

library('tidyverse')


d <- nycflights13::flights %>% filter(dest == c('LAX','BWI','ROC','DCA','PHL','DAY','GRR','SMF','BZN','CHO'))
unique(c$dest)
c <- nycflights13::flights %>% filter(dest %in% c('LAX','BWI','ROC','DCA','PHL','DAY','GRR','SMF','BZN','CHO'))



b <- 
12 <- c
12 -> c



vehicles <- fueleconomy::vehicles
colnames(vehicles)
vehicles %>%  distinct(trans)
summary(v1)
as.factor(vehicles$make)
v1 <- vehicles %>% select(2:8,10)  %>%  apply(.,2, as.factor)
v1 <- apply(v1,2, as.factor)
v1 <- tbl_df(v1)


library(purrrlyr)
dmap_at(vehicles[,2:8], as.factor)

library(rvest)
library(readxl)

data <- read_excel("C:\\Users\\User\\Desktop\\Book1.xlsx")
web <- html('http://results.eci.gov.in/ACOCT2019/ConstituencywiseS1368.htm?ac=68')
web %>%  html_nodes('#div1 table') %>%  html_text() %>% tibble()


# importing libraries
pacman::p_load(purrrlyr, tidyverse, plotly, shiny, shinydashboard, leaflet, stringr, lubridate, rmarkdown, knitr)

starwars %>% group_by(skin_color) %>% 
  summarise_at(vars(height:mass), mean, na.rm = TRUE)

nycflights13::flights %>% filter(dest %in% c('LAX','BWI','ROC','DCA','PHL','DAY','GRR','SMF','BZN','CHO'))  %>% 
  select(2,6,9,15,16) %>% group_by(month) %>% 
  summarise_all(., max, na.rm = TRUE)

pacman::p_load(writexl, xlsx)
xlsx::

babynames <- babynames::babynames

unique(babynames$year)
babynames %>%  filter(year %in% 1994) %>% slice() %>%  summarise_at(., prod = n * prop)


as.data.frame(matrix(c(1:100000000),,10)) -> data
data %>% filter()


head(data, 10)
tbl_df(data)
as.data.frame(matrix(c(1:100000000),,20))



nycflights13::flights %>% group_by(month) %>%  summarise(days = n_distinct(day, na.rm= T))

destinations <- group_by(flights, dest)
summarise(destinations,
          plane = n_distinct(tailnum),
          flights = n())

nycflights13::flights %>%  group_by(dest) %>% summarise(.,planes = n_distinct(tailnum),
                                          flights = n())

daily <- group_by(flights, year, month, day)
(per_day   <- summarise(daily, flights = n()))
(per_month <- summarise(per_day, flights = sum(flights)))
(per_year  <- summarise(per_month, flights = sum(flights)))



  
  
nycflights13::flights %>%
  group_by(year, month, day) %>%
  select(arr_delay, dep_delay) %>%
  summarise(
    arr = mean(arr_delay, na.rm = TRUE),
    dep = mean(dep_delay, na.rm = TRUE)) %>%
  filter(arr > 30 | dep > 30)


pl2 <- pl1 +  theme(
  axis.title.x = element_text(colour="Blue", size=20),
  axis.title.y = element_text(colour="Blue", size=20),
  axis.text.x = element_text(size=5),
  axis.text.y = element_text(size=5),
  plot.title = element_text(size=20))



datasets::AirPassengers #Monthly Airline Passenger Numbers 1949-1960
datasets::Puromycin #Reaction Velocity of an Enzymatic Reaction
datasets::JohnsonJohnson #Quarterly Earnings per Johnson & Johnson Share
datasets::Theoph #Pharmacokinetics of Theophylline
datasets::cars #Speed and Stopping Distances of Cars
datasets::Nile #Flow of the River Nile
datasets::ChickWeight #Weight versus age of chicks on different diets
datasets::BOD #Biochemical Oxygen Demand
datasets::LakeHuron #Level of Lake Huron 1875--1972
datasets::infert #Infertility after Spontaneous and Induced Abortion
datasets::anscombe #Anscombe's Quartet of 'Identical' Simple Linear Regressions
datasets::Formaldehyde #Determination of Formaldehyde
datasets::attenu #The Joyner--Boore Attenuation Data
datasets::chickwts #Chicken Weights by Feed Type
datasets::Harman74.cor #Harman Example 7.4
datasets::pressure #Vapor Pressure of Mercury as a Function of Temperature
datasets::USAccDeaths #Accidental Deaths in the US 1973--1978
datasets::morley #Michelson Speed of Light Data
datasets::UCBAdmissions #Student Admissions at UC Berkeley
datasets::precip #Annual Precipitation in US Cities
datasets::HairEyeColor #Hair and Eye Color of Statistics Students
datasets::mtcars #Motor Trend Car Road Tests
datasets::co2 #Mauna Loa Atmospheric CO2 Concentration
datasets::iris #Edgar Anderson's Iris Data
datasets::sunspot.month #Monthly Sunspot Data, from 1749 to "Present"
datasets::sunspot.year #Yearly Sunspot Data, 1700--1988
datasets::Orange #Growth of Orange Trees
datasets::VADeaths #Death Rates in Virginia (1940)
datasets::UKDriverDeaths #Road Casualties in Great Britain 1969--84
datasets::WWWusage #Internet Usage per Minute
datasets::sleep #Student's Sleep Data
datasets::longley #Longley's Economic Regression Data
datasets::attitude #The Chatterjee--Price Attitude Data
datasets::Harman23.cor #Harman Example 2.3
datasets::discoveries #Yearly Numbers of Important Discoveries
datasets::Indometh #Pharmacokinetics of Indomethacin
datasets::DNase #Elisa assay of DNase
datasets::euro #Conversion Rates of Euro Currencies
datasets::WorldPhones #The World's Telephones
datasets::InsectSprays #Effectiveness of Insect Sprays
datasets::austres #Quarterly Time Series of the Number of Australian Residents
datasets::crimtab #Student's 3000 Criminals Data
datasets::BJsales #Sales Data with Leading Indicator
datasets::sunspots #Monthly Sunspot Numbers, 1749--1983
datasets::ToothGrowth #The Effect of Vitamin C on Tooth Growth in Guinea Pigs
datasets::USArrests #Violent Crime Rates by US State
datasets::airquality #New York Air Quality Measurements
datasets::trees #Diameter, Height and Volume for Black Cherry Trees
datasets::airmiles #Passenger Miles on Commercial US Airlines, 1937--1960
datasets::esoph #Smoking, Alcohol and (O)esophageal Cancer
datasets::UKLungDeaths #Monthly Deaths from Lung Diseases in the UK
datasets::OrchardSprays #Potency of Orchard Sprays
datasets::faithful #Old Faithful Geyser Data
datasets::beavers #Body Temperature Series of Two Beavers
datasets::quakes #Locations of Earthquakes off Fiji
datasets::eurodist #Distances Between European Cities and Between US Cities
datasets::rivers #Lengths of Major North American Rivers
datasets::randu #Random Numbers from Congruential Generator RANDU
datasets::treering #Yearly Treering Data, -6000--1979
datasets::freeny #Freeny's Revenue Data
datasets::LifeCycleSavings #Intercountry Life-Cycle Savings Data
datasets::Titanic #Survival of passengers on the Titanic
datasets::EuStockMarkets #Daily Closing Prices of Major European Stock Indices, 1991--1998
datasets::Loblolly #Growth of Loblolly pine trees
datasets::PlantGrowth #Results from an Experiment on Plant Growth
datasets::npk #Classical N, P, K Factorial Experiment
datasets::USJudgeRatings #Lawyers' Ratings of State Judges in the US Superior Court
datasets::USPersonalExpenditure #Personal Expenditure Data
datasets::uspop #Populations Recorded by the US Census
datasets::presidents #Quarterly Approval Ratings of US Presidents
datasets::UKgas #UK Quarterly Gas Consumption
datasets::ability.cov #Ability and Intelligence Tests
datasets::warpbreaks #The Number of Breaks in Yarn during Weaving
datasets::rock #Measurements on Petroleum Rock Samples
datasets::CO2 #Carbon Dioxide Uptake in Grass Plants
datasets::islands #Areas of the World's Major Landmasses
datasets::datasets-package #The R Datasets Package
datasets::stackloss #Brownlee's Stack Loss Plant Data
datasets::lynx #Annual Canadian Lynx trappings 1821--1934
datasets::occupationalStatus #Occupational Status of Fathers and their Sons
datasets::nhtemp #Average Yearly Temperatures in New Haven
datasets::nottem #Average Monthly Temperatures at Nottingham, 1920--1939
datasets::lh #Luteinizing Hormone in Blood Samples
datasets::state #US State Facts and Figures
datasets::women #Average Heights and Weights for American Women
datasets::swiss #Swiss Fertility and Socioeconomic Indicators (1888) Data
datasets::volcano #Topographic Information on Auckland's Maunga Whau Volcano


datasets::nottem
datasets::nottem %>% 
  ggplot() + geom_point(aes(x=height, y=weight)) +
  geom_line(aes(x=height, y=weight))


library()

xl.read.file("D:\\Careermitra\\Gujarat\\Guj data 2019-20\\Std 10 Student Data_v4.xlsx", password="ShyamS@1920")

## ------------------------------------------------------
as.tibble(airquality)
read_csv('http://594442.youcanlearnit.net/coal.csv', skip=2) 
colname(coal)[1] <- 'region'
# austinwater.csv
# breakfast.xls
# chicagoemployees.txt
# coal.csv
# drugdeaths.txt
# inpatient.tsv
# inspections.csv
# mexicanweather.csv
# pew.csv
# ssadisability.csv
# tb2.csv
# weather.csv
# workstoppages.txt

pacman::p_load(tidyverse, ggmap, writexl)

data <- nycflights13::flights
colnames(data)

data[1:3] %>% lapply(., as.factor)




