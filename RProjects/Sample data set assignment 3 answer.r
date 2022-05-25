options(warn=-1) # to remove the warnings

# importing libraries
# pacman::p_load(tidyverse, dplyr, ggplot2, plotly, shiny, shinydashboard, leaflet, stringr, lubridate, rmarkdown, knitr)

# library(nycflights13)
data <- nycflights13::flights # nrow(data) = 336776
head(data)


statsset <- data %>% filter(dest %in% c('LAX','BWI','ROC','DCA','PHL','DAY','GRR','SMF','BZN','CHO'))
# colnames(statsset) 
# statsset$month` <- as.factor(statsset$month)

# max, min, mean, total, percentage

sub <- statsset  %>% select(2,6,9,15,16)  %>% group_by(month)

summary <- list(
(alltotal <- summarise_all(sub, sum, na.rm=T)),
(allmax <- summarise_all(sub, max, na.rm=T)),
(allmin <- summarise_all(sub, min, na.rm=T)),
(allmean <- summarise_all(sub, mean, na.rm=T)))

rm(sub, alltotal, allmax,allmin,allmean ) 

names(summary) <- c('alltotal','allmax','allmin','allmean')
summary
# unique(statsset$month)
# class(summary$dep_delay)

# colnames(statsset)

cpo <- statsset %>% group_by(origin) %>% summarise(total = sum(flight)) # count per origin
cpd <- statsset %>% group_by(dest) %>% summarise(total = sum(flight)) # count per dest

datatotsumflights <- sum(data$flight)
print(datatotsumflights) # count of all flights in dataset
totsumflights <- sum(statsset$flight)
print(totsumflights) # count of all flights in subset

cpd$perc <- sum(round((cpd$total/sum(statsset$flight))*100,3))

print(cpd)
print(cpo)

# colnames(statsset)
# for most and least dep delay
val3 <- rbind(
statsset[which.max(statsset$dep_delay), c("month", "carrier", "dest", "origin")],
statsset[which.min(statsset$dep_delay), c("month", "carrier", "dest", "origin")],
# for most and least arrival delay
statsset[which.max(statsset$arr_delay), c("month", "carrier", "dest", "origin")],
statsset[which.min(statsset$arr_delay), c("month", "carrier", "dest", "origin")])

val3$value <- c('max_dep_delay', 'min_dep_delay', 'max_arr_delay', 'min_arr_delay' )
print(val3[c(5,1,4,2,3)])

scatterplot <- data[data$carrier==c('YV', 'WN', 'US', 'B6'),]
library(ggplot2)
library(plotly)
pl1<- ggplot(scatterplot,aes(x=dep_delay,y=arr_delay),na.rm=T) + 
      geom_point(col="darkblue",size=4,shape=1, alpha=0.4)+
      xlab("Departure_delay") + ylab("Arrival_delay") +   ggtitle("Scatterplot")
pl2 <- pl1 +  theme(
    axis.title.x = element_text(colour="Blue", size=20),
    axis.title.y = element_text(colour="Blue", size=20),
    axis.text.x = element_text(size=5),
    axis.text.y = element_text(size=5),
    plot.title = element_text(size=20))

print(pl2)

### Simple Linear Regression between dep_delay and arr_delay
# https://analyticsindiamag.com/how-to-code-linear-regression-models-with-r/
library(caTools)
library(dplyr)
library(gridExtra)
set.seed(123)
statsset1 <- statsset[,c(1:9)]
statsset1 <- statsset1[!is.na(statsset1$arr_delay),]

# Splitting the dataset into the Train set and Test set
sample_set <- sample.split(statsset1$dep_delay, SplitRatio = 0.75)
train_set <- subset(statsset1, sample_set == TRUE)
test_set <- subset(statsset1, sample_set == FALSE)


# Creating the Regressor and fitting it with Training Set
regressor = lm(formula = dep_delay ~ arr_delay, data = train_set)

# Predicting the values for test set
y_pred = predict(regressor, newdata = test_set)

# Visualizing train set predictions
library(ggplot2)   # importing the library
training_set_plot <- ggplot() +
  geom_point(aes(x = train_set$arr_delay, y = train_set$dep_delay), colour = 'black') +
  geom_line(aes(x = train_set$arr_delay, y = predict(regressor, newdata = train_set)),colour = 'red') +
  ggtitle('dep_delay vs arr_delay (Training Set)') + xlab('arr_delay') + ylab('dep_delay')

# Visualizing test set predictions
test_set_plot <- ggplot() +
  geom_point(aes(x = test_set$arr_delay, y = test_set$dep_delay), colour = 'blue') +
  geom_line(aes(x = train_set$arr_delay, y = predict(regressor, newdata = train_set)),colour = 'red') +
  ggtitle('dep_delay vs arr_delay (Test Set)') + xlab('arr_delay') + ylab('dep_delay')

par(mfrow=c(1,2))
grid.arrange(training_set_plot, test_set_plot, nrow = 1)

#### Support Vector Regression of dep_time vs dep_delay
library(caTools)
library(dplyr)
library(gridExtra)
set.seed(123)
statsset1 <- statsset[,c('dep_time' , 'dep_delay')]
colnames(statsset1)
statsset1 <- statsset1[!is.na(statsset1$dep_time),]
# statsset1[is.na(statsset1$dep_time),]
# statsset1[is.na(statsset1$dep_delay),]

# Splitting the dataset into the Train set and Test set
sample_set <- sample.split(statsset1$dep_delay, SplitRatio = 0.75)
train_set <- subset(statsset1, sample_set == TRUE)
test_set <- subset(statsset1, sample_set == FALSE)

# Feature Scaling
train_set = tbl_df(scale(train_set))
test_set = tbl_df(scale(test_set))

colnames(train_set)
library(e1071) #importing the library
# Creating the Regressor and fitting it with Training Set
svm_regressor = svm(formula = train_set$dep_time ~ train_set$dep_delay, type = 'eps-regression', kernel = 'radial')

# Predicting the values for test set
svm_y_pred = predict(svm_regressor, newdata = test_set)

# Visualizing train set predictions
library(ggplot2)   # importing the library
svm_training_set_plot <- ggplot() +
  geom_point(aes(x = train_set$dep_delay, y = train_set$dep_time), colour = 'lightgreen') +
  geom_line(aes(x = train_set$dep_delay, y = predict(svm_regressor, newdata = train_set)),colour = 'red') +
  ggtitle('dep_time vs dep_delay (Training Set) by SVM Regression') + xlab('dep_delay') + ylab('dep_time')

# length(predict(svm_regressor, newdata = train_set))
# Visualizing test set predictions
svm_test_set_plot <- ggplot() +
  geom_point(aes(x = test_set$dep_delay, y = test_set$dep_time), colour = 'skyblue') +
  geom_line(aes(x = train_set$dep_delay, y = predict(svm_regressor, newdata = train_set)),colour = 'red') +
  ggtitle('dep_time vs dep_delay (Test Set) by SVM Regression') + xlab('dep_delay') + ylab('dep_time')

par(mfrow=c(1,2))
grid.arrange(svm_training_set_plot, svm_test_set_plot, nrow = 1)

# K-Means Clustering distance vs airtime
dataset2 <-  statsset[,c('distance' , 'air_time')]
dataset2 <- tbl_df(dataset2)
dataset2 <- dataset2[!is.na(dataset2$air_time),]
# dataset2 <- scale(dataset2)
# Splitting the dataset into the Training set and Test set
library(caTools)
set.seed(123)
split <- sample.split(dataset2$distance, SplitRatio = 0.8)
training_set<- subset(dataset2, split == TRUE)
test_set<- subset(dataset2, split == FALSE)
pacman::p_load(factoextra, NbClust, cluster ) 
# Feature Scaling
training_set <- scale(training_set)
test_set <- scale(test_set)

pacman::p_load(factoextra, NbClust, cluster)  
#library("NbClust")
# Silhouette method to find the optimal number of clusters
# https://www.datanovia.com/en/lessons/determining-the-optimal-number-of-clusters-3-must-know-methods/
# fviz_nbclust(dataset2, kmeans, method = "silhouette")+
#  labs(subtitle = "Silhouette method")

library(cluster)
# Fitting K-Means to the dataset
set.seed(29)
kmeans = kmeans(x = dataset2, centers = 2)
y_kmeans = kmeans$cluster

# Visualising the clusters
library(cluster)
clusplot(dataset2, y_kmeans, lines = 0, shade = TRUE, color = TRUE, labels = 2, plotchar = FALSE, span = TRUE,
         main = paste('Clusters'), xlab = 'air_time', ylab = 'distance')
