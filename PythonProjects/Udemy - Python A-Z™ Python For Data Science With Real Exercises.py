# -*- coding: utf-8 -*-
"""
Created on Fri Sep 27 11:49:24 2019
@author: SAF-Shubham
"""
# reticulate::repl_python()

# import libraries
import os
import math
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import warnings # warnings.filterwarnings('ignore')
import scrapy  
import seaborn as sns
from numpy.random import randn # randn()
# %matplotlib inline
plt.rcParams['figure.figsize'] = 10,4

# import keras
# import TensorFlow
# import sklearn  #Scikit.Learn
# PyTorch
# LightGBM
# Eli5
# import SciPy
# import Theano

os.getcwd()

library(reticulate)
use_virtualenv("myenv")
reticulate::use_virtualenv("myenv")
reticulate::repl_python()
a = 1
######-------
# 2. Core Programming Principles
# while loop

#while condition:
#	executable code1
#	executable code2
#	executable code3
#executable code4

pd.array(list(range(1,9)))

counter = 0
while counter < 100:
    print(counter)
    counter = counter + 1
print("Hello")


# for loop
for i in range(5):
    print("Hello Python")

for i in range(100):
    print("Hello Python", i)

#Another way
mylist = [10, 100, 1000]
for jj in mylist:
    print("jj is equal to: ", jj)



x = randn()
if x > 1:
	answer = "Greater than 1"
print(x)
print(answer)


#Nested Statements
answer = None
x = randn()
if x > 1:
	answer = "Greater than 1"
else:
	if x >= -1:
		answer = "Between -1 and 1"
	else:
		answer = "Less than -1"
print(x)
print(answer)

----------
answer = None
x = randn()
if x > 1:
	answer = "Greater than 1"
elif x >= -1:
	answer = "Between -1 and 1"
else:
	answer = "Less than -1"
print(x)
print(answer)


#####-------
# 3. Fundamentals Of Python

MyFirstList = [3, 45, 56, 732]

type(MyFirstList)

["hello", 24, True, 55.3]
['how are you?', 55, MyFirstList]

range(15)
list(range(15))
list(range(8))
list(range(1,8))
list(range(1,8,2))
list(range(1,1000000))

SLICING
2 :7
-1 :7

ADVANCED SLICING
2 : 9 :2

#tuple = immutable list
t1 = (345, 674, 934)

a = list([c, b])
b = pd.array([12, 455, 63.3, True, "A"])
c = np.array([12, 455, 63.3, True, "A"]) # changes to same string of character
([12, 455, 63.3, True, "A"]) # stored as unique character
.pop() # to remove character from object
.copy() # copy the array as seperate dataset

######-------
# 4. Matrices


plt.plot(Salary[0], c='Black', ls='--', marker='s', ms=7)
plt.xticks(list(range(0,10)), Seasons, rotation='vertical')
plt.show()


plt.plot(Salary[0], c='Black', ls='--', marker='s', ms=7, label=Players[0])
plt.plot(Salary[1], c='Red', ls='--', marker='o', ms=7, label=Players[1])
plt.plot(Salary[2], c='Green', ls='--', marker='^', ms=7, label=Players[2])
plt.plot(Salary[3], c='Blue', ls='--', marker='D', ms=7, label=Players[3])
plt.xticks(list(range(0,10)), Seasons, rotation='vertical')
plt.legend(loc='upper left', bbox_to_anchor=(1,1))
plt.show()


def myplot(playerlist):
    for name in playerlist:
        plt.plot(Games[Pdict[name]], c='Black', ls='--', marker='s', ms=7, label=name)
    plt.legend(loc='upper left', bbox_to_anchor=(1,1))
    plt.xticks(list(range(0,10)), Seasons, rotation='vertical')
    plt.show()
myplot( [ "KobeBryant" , "LeBronJames" , "DerrickRose" ] )


# Visualization code in python
#Fix up the inputs:

def myplot(data, playerlist = Players):
    Col = {"KobeBryant":"Black","JoeJohnson":"Red","LeBronJames":"Green","CarmeloAnthony":"yellow","DwightHoward":"Blue","ChrisBosh":"magenta","ChrisPaul":"cyan","KevinDurant":"blue","DerrickRose":"Green","DwayneWade":"Red"}
    Mrk = {"KobeBryant":"s","JoeJohnson":"o","LeBronJames":"s","CarmeloAnthony":"^","DwightHoward":"D","ChrisBosh":"s","ChrisPaul":"s","KevinDurant":"p","DerrickRose":"o","DwayneWade":"v"}
    for name in playerlist:
        plt.plot(data[Pdict[name]], c=Col[name], ls='--', marker=Mrk[name], ms=7, label=name)
    plt.legend(loc='upper left', bbox_to_anchor=(1,1))
    plt.xticks(list(range(0,10)), Seasons, rotation='vertical')
    plt.show()

myplot(Salary)


import warnings
warnings.filterwarnings('ignore')

myplot(Salary)
myplot(Games)
myplot(Salary/Games)


######-------
# 5. Data Frames

import pandas as pd
pd.read_csv()
pd.read_excel()

import os
print(os.getcwd()) # get WD
os.chdir()

data = pd.read_csv("J:\\6 Online Course\\Udemy - Python A-ZT Python For Data Science With Real Exercises!\\P4-Movie-Ratings.csv")
data.head()
data.info()
data.describe()
data.columns = ['Film', 'Genre', 'CriticsRatings', 'AudienceRatings',
               'BudgetMillDoll', 'ReleaseYear']


len() # check number of rows
data.columns
data.rows
data.head()
data.tail()
data.info() # as str in R
data.describe() # as summary in R


data[ : ] # for the start and end rows to subset
data[ : :1/-1] # order the asc and desc or even odd
data[[column name]] # subset the columns
data.column # as $ to see column in R
data[ : ][[column name]] # to get rows and columns

data["new column"] # add new column
data.drop( , 1) # remove column

data[(filter) & (filter1)] # to filter the dataset

.at  # for labels. Important: even integers are treated as labels
.iat  # for integer location.


## Introduction & visualaization with Seaborn
import matplotlib.pyplot as plt
import seaborn as sns  # Known as ggplot in R
# %matplotlib inline
plt.rcParams['figure.figsize'] = 12,4

# plot regression with seaborn 
sns.lmplot(data=stats, x='InternetUsers', y='BirthRate', \
           fit_reg=False, hue='IncomeGroup', size=10, aspect=1)


#marker size:

# using disctonories of  matplotlib as {}
sns.lmplot[data=stats, x='InternetUsers', y='BirthRate', \
           fit_reg=False, hue='IncomeGroup', size=8, \
           scatter_kws={"s":100}]


######-------
# 6. Advanced Visualization

movies.Genre = movies.Genre.astype('category')
movies.Year = movies.Year.astype('category')

from matplotlib import pyplot as plt
import seaborn as sns
%matplotlib inline
import warnings
warnings.filterwarnings{'ignore')

# jointplot
sns.jointplot(data=movies , x='CriticRating' , y='AudienceRating')

# plot hostogram with
sns.set_style("darkgrid")
sns.set_style("white")
nl = plt.hist(movies.AudienceRating, bins=15)


#Stacked Histograms
plt.hist(movies[movies.Genre == 'Action'].BudgetMillions)
plt.hist(movies[movies.Genre == 'Drama'].BudgetMillions)
plt.hist(movies[movies.Genre == 'Thriller'].BudgetMillions)
plt.show()


plt.hist([movies[movies.Genre == 'Action'].BudgetMillions , \
	movies[movies.Genre == 'Drama'].BudgetMillions , \
	movies[movies.Genre == 'Thriller'].BudgetMillions, \
	movies[movies.Genre == 'Cormedy'].BudgetMillions] , \
	bins=15, stacked=True)
plt. show()

# plot with for loop
list1 = list()
for gen in movies.Genre.cat.categories:
	list1.append(movies[movies.Genre == gen].BudgetMillions)
	mylabels.append(gen)

h = plt.hist(list1, bins=30, stacked=True, rwidth=l, label=mylabels)
plt.legends()
plt.show()


# KDE plot
k1 = sns.kdeplot(movies.CriticRating, movies.AudienceRating, \
		shade=True, shade_lowest=False, cmap='Reds')
#TIP:
klb = sns.kdeplot(movies.CriticRating, movies.AudienceRating, \
		cmap='Reds')

#can populate with any type of chart in Facet. Example: histograms
g = sns.FacetGrid(movies, row='Genre', col='Year', hue='Genre')
g = g.map(plt.hist, 'BudgetMillions')

# can populate scatterplots in Facet:
g = sns.FacetGrid[movies, row='Genre', col='Year', hue='Genre')
g = g.map(plt.scatter, 'CriticRating', 'AudienceRating')


#back to the scatterplots with dictonories:
g = sns.FacetGrid(movies, row='Genre', col='Year', hue='Genre')
kws = dict(s=50, linewidth=0.5, edgecolor='black') # with dictonories
g = g.map(plt.scatter, 'CriticRating', 'AudienceRating', **kws)
g.set(xlim=(0,100), ylim=(0,100))
for ax in g.axes.flat:
    ax.plot((0,100), (0,100), c="gray", ls="-—")
g.add_legend()



# # Building Dashboards ---------
from matplotlib import pyplot as plt
import seaborn as sns
%matplotlib inline
import warnings
warnings.filterwarnings('ignore')

# bulding the grid
f, axes = plt.subplots(2, 2, figsize=(10,10))

# plot with grids
sns.set_style("darkgrid")
f, axes = plt.subplots(2, 2, figsize=(10,10))
k1 = sns.kdeplot(movies.BudgetMillions, movies.AudienceRating,ax=axes[0,0])
k2 = sns.kdeplot(movies.BudgetMillions, movies.CriticRating,ax=axes[0,1])
z = sns.violinplot(data=movies[movies.Genre=='Drama'], x='Year', y='CriticRating', ax=axes[1,0])
k4 = sns.kdeplot(movies.CriticRating, movies.AudienceRating, \
                shade=True, shade_lowest=False, cmap='Reds', \
                ax=axes[1,1])
#TIP:
#k4b = sns.kdeplot(movies.CriticRating, movies.AudienceRating, \
                # cmap='Reds',ax=axes[1,1] )
# axes[1,1].hist(movies.CriticRating, bins=15) # for non (seaborn) sns plots
k1.set(xlim=(-20,160))
k2.set(xlim=(-20,160))
plt.show()


##  11. BONUS Styling Tips
sns.set_style("dark", {"axes.facecolor": "black"}) #White, Whitegrid, dark, darkgrid, ticks
f, axes = p1t.subplots(2, 2, figsize=(10,10))

#Plot [0,0]
k1 = sns.kdeplot(movies.BudgetMillions, movies.AudienceRating, \
                shade=True, shade_lowest=True, cmap='inferno', \
                ax=axes[0,0])

k1b = sns.kdeplot(movies.BudgetMillions, movies.AudienceRating, \
                  cmap='cool', ax=axes[0,0])

#plot [0,1]
k2 = sns.kdeplot(movies.BudgetMillions, movies.CriticRating, \
shade=True, shade_lowest=True, cmap='inferno', \
ax=axes[0,1])

k2b = sns.kdeplot(movies.BudgetMillions, movies.CriticRating, \
                  cmap='cool', ax=axes[0,1])

#Plot [1,0]
k3 = sns.violinplot(data=movies, x='Year', y='BudgetMillions', ax=axes[1,0], \
                   palette='YlOrRd')

#Plot [1,1]
k4 = sns.kdhplot(movies.CriticRating, movies.AudienceRating, \
                shade=True, shade_lowest=False, cmap='Blues_r', \
                ax=axes[1,1])

k4b = sns.kdeplot(movies.CriticRating, movies.AudienceRating, \
                  cmap='gist_gray_r', ax=axes[1,1])

#axes[1,1].hist(movies.CriticRating, bins=15)
k1.set(xlim=(-20,l60))
k2.set(xlim=(—20,160))
p1t.show()



list1 = list()
mylabels = list()

for gen in movies.Genre.cat.categories:
    list1.append(movies[movies.Genre == gen].BudgetMi11ions)
    mylabels.append(gen)

sns.set_style("whitegrid")
fig, ax = plt.subplots()
fig.set_size_inches(11.7, 8.27) #size of A4 paper
h = plt.hist(list1, bins=30, stacked=True, rwidth=l, label=mylabels)
plt.title("Movie Budget Distribution", fontsize=35, \
          color="DarkBlue", fontname="Console")
plt.ylabel("Number of Movies“, fontsize=25, color="Red")
plt.xlabel("Budget", fontsize=25, color="Green")
plt.yticks(fontsize=20)
plt.xticks(fontsize=20)
plt.legend(frameon=True, fancybox=True, shadow=True,\
           framealpha=1, prop={'size':20})
plt.show()




### Homework
import timeit
import numpy as np
from numpy.random import randn

timeit.timeit
N = 10000000
counter = 0
for i in randn(N):
    if i > -1 and i < 1:
        counter = counter + 1
counter/N


### 7. Homework Solution Section 6 Movie Domestic % Gross 
# apply multiple filter to data from same column
genre_filters = ['action', 'adventure', 'animation', 'comedy', 'drama']
mov2 = mov[mov.Genre.isin(genne_filters)]
# for multiple column filters 
datafilter = data[dats.c1() | data.c2()]
# to see unique values in columns
data.c1.unique()

## plot the boxplot
sns.set(style='darkgrid', palette='muted', color_codes = True)
ax = sns.boxplot( data = mov3, x = 'Genre', y = 'Gross % US', orient = 'v', color = 'lightgray', showfliers = False )
plt.setp(ax.artists, alpha=9.5)
sns.stripplot(x = 'Genre', y = 'Gross % US', data = mov3, jitter = True, size = 6, linewidth =0, hue = 'Studio', alpha = 0.7)
ax.axes.set_title('Domestic Gross % by Genre', fontsize=30)
ax.axes.xlabel('Domestic Gross % by Genre', fontsize=30)
ax.axes.ylabel('Domestic Gross % by Genre', fontsize=30)
ax.legend(bbox_to_anchor=(1.65, 1), loc = 2)



--------------- # dataset loading and analysing

from sklearn.datasets import load_iris
iris = load_iris()
data = pd.DataFrame(data= np.c_[iris['data'], iris['target']], columns= iris['feature_names'] + ['target'])
data
data.head()
data.info()
data.describe()
data.columns = # ['sepallength(cm)', 'sepalwidth(cm)', 'petallength(cm)','petal width(cm)', 'target']
data.columns = # ['sepallengthcm', 'sepalwidthcm', 'petallengthcm','petal widthcm', 'target']

data["sepallengthcm"] * data["sepallengthcm"]
data[0:8]["sepallengthcm"] * data[0:8]["sepallengthcm"]

sns.barplot(data= data, x= 'sepallengthcm' , y= 'sepalwidthcm')
plt.show()

sns.boxplot(data= data, x= 'sepallengthcm' , y= 'sepalwidthcm')
plt.show()

sns.scatterplot(data= data, x= 'sepallengthcm' , y= 'sepalwidthcm')
plt.show()

sns.jointplot(data= data, x= 'sepallengthcm' , y= 'sepalwidthcm')
plt.show()

plt.hist(data= data, x= 'sepallengthcm')
plt.show()


sns.violinplot(data= data, x= 'sepallengthcm' , y= 'sepalwidthcm')
plt.show()
-------------



