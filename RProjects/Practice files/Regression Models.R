
# ******** Regression models ********----

# https://data-flair.training/blogs/logistic-regression-in-r/
# https://www.saedsayad.com/modeling.htm
# https://analyticsindiamag.com/how-to-code-linear-regression-models-with-r/
# https://www.tutorialspoint.com/r/r_linear_regression.htm


# ******** Simple Linear Regression ********----

library(caTools)
set.seed(1)23)
sample_set = sample.split(data, SplitRatio = 0.75)
train_set <- subset(data, sample_set == TRUE)
test_set <- subset(data, sample_set == FALSE)

# Creating the Regressor and fitting it with Training Set
regressor = lm(formula = Y ~ X, data = train_set)

# Predicting the values for test set
y_pred = predict(regressor, newdata = test_set)

# Visualizing training set predictions
library(ggplot2)   # importing the library
ggplot() +
  geom_point(aes(x = train_set$X, y = train_set$Y), colour = 'black') +
  geom_line(aes(x = train_set$X, y = predict(regressor, newdata = train_set)),colour = 'red') +
  ggtitle('Y vs X (Training Set)') + xlab('X') + ylab('y')

# Visualizing test set predictions
ggplot() +
  geom_point(aes(x = test_set$X, y = test_set$Y), colour = 'blue') +
  geom_line(aes(x = train_set$X, y = predict(regressor, newdata = train_set)),colour = 'red') +
  ggtitle('Y vs X (Test Set)') + xlab('X') + ylab('y')

#-----


#^^^^^^^^^^^**************^^^^^^^^----
# Multiple Linear Regression

set.seed(123)
sample_set = sample.split(data, SplitRatio = 0.75)
train_set <- subset(data, sample_data == TRUE)
test_set <- subset(data, sample_data == FALSE)

# Creating the Regressor and fitting it with Training Set
regressor = lm(data = train_set, Y ~ x1 + x2 + x3) # takes all variables except Y in the train_set as independent variables.

# Predicting the values for test set
y_pred = predict(regressor, newdata = test_set)

## Using Backward Elimination
backElim <- function(x, sl) {
  numVars = length(x)
  for (i in c(1:numVars)){
    regressor = lm(formula = Y ~ ., data = x)
    maxVar = max(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"])
    if (maxVar > sl){
      j = which(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"] == maxVar)
      x = x[, -j] }
    numVars = numVars - 1
  }
  return(summary(regressor))
}

SL = 0.05
dataset = dataset[, c(indexes of independent factors separated by a coma)] 

backElim(dataset, SL)


## Using Forward Elimination

## Using bothway Elimination

## Using Random Elimination



### if this model has only one independent veriable left after elimination then use the visualization




#-----


#^^^^^^^^^^^**************^^^^^^^^----
# Nonlinear Regression (polynomial )
#-------------------------------------




#-----

#^^^^^^^^^^^**************^^^^^^^^----
# Logistic Regression 
#-------------------------------------

data(BreastCancer, package = "mlbench")  #Author DataFlair
b_canc = BreastCancer[complete.cases(BreastCancer),]
str(b_canc)


#Author DataFlair
set.seed(100)
Train_Ratio <- createDataPartition(b_canc$Class, p=0.7, list = F)
Train_Data <- b_canc[Train_Ratio, ]
Test_Data <- b_canc[-Train_Ratio, ]

glm(Class ~ Cell.shape, family="binomial", data = Train_Data)


#-----

#^^^^^^^^^^^**************^^^^^^^^----
# Support Vector Regression
#-------------------------------------

set.seed(123)
sample_set = sample.split(data, SplitRatio = 0.75)
train_set <- subset(data, sample_data == TRUE)
test_set <- subset(data, sample_data == FALSE)

library(e1071) #importing the library

# Creating the Regressor and fitting it with Training Set
svr_regressor = svm(formula = Y ~ ., data = train_set, type = 'eps-regression')

# Predicting the values for test set
y_pred = predict(svr_regressor, newdata = test_set)


#-----


#^^^^^^^^^^^**************^^^^^^^^----
# Decision Tree 
#-------------------------------------

rtree <- rpart(Y ~ ., sample_set$train_data)
rpart.plot(rtree)





#-----

#^^^^^^^^^^^**************^^^^^^^^----
# Random Forest 
#-------------------------------------






#--------------

# **************************************************************************-----
# Classification models
# **************************************************************************-----

#^^^^^^^^^^^**************^^^^^^^^----
# Logistic Classification
#-------------------------------------



#-------

#^^^^^^^^^^^**************^^^^^^^^----
# k-Nearest Neighbors Classification
#-------------------------------------



#-------

#^^^^^^^^^^^**************^^^^^^^^----
# Kernal SVM Classification
#-------------------------------------



#-------


#^^^^^^^^^^^**************^^^^^^^^----
# Support Vector Machine Classification
#-------------------------------------



#-------


#^^^^^^^^^^^**************^^^^^^^^----
# Naive Bayes Classification
#-------------------------------------



#-------


#^^^^^^^^^^^**************^^^^^^^^----
# Random Forest Classification
#-------------------------------------



#-------

#^^^^^^^^^^^**************^^^^^^^^----
# Decision Tree classification
#-------------------------------------

rtree <- rpart(Y ~ ., sample_set$train_data)
rpart.plot(rtree)




#-------



# **************************************************************************-----
# Clustering models
# **************************************************************************-----

#^^^^^^^^^^^**************^^^^^^^^----
# K-means clustering
#-------------------------------------



#-------


#^^^^^^^^^^^**************^^^^^^^^----
# Hierarchical Agglomerative clustering
#-------------------------------------



#-------


