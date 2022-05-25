
movie <- ggplot2movies::movies
version
getwd()
summary(movie)
str(movie)
colnames(movie)

levels(movie$ )
movie$Year.of.release <- factor(movie$Year.of.release)
colnames(movie) <- c("Film", "Genre", "CriticsR", "AudienceR", "Budget.M", "Year")

colnames(movie)
P <-  c("Film", "Genre", "CriticsR", "AudienceR", "Budget.M", "Year")
rm(P)        
rm(A)

pacman::p_load(ggplot2, tidyverse)
ggplot(data=movie,aes(x=Animation,y=Comedy, colour=budget)) +
 geom_jitter() + geom_boxplot(size=1.2, alpha=0.4)
 ggplot(data=movie,aes(x=Genre,y=AudienceR, colour=Genre))

b + geom_jitter() + geom_boxplot(size=1.2, alpha=0.4)

as.data.frame(matrix(c(1:100000000),,20))