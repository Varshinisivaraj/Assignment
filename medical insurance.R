#installing packages
library(lattice)
library(MASS)
library(dplyr)
library(ggplot2)
library(tidyverse)
library(rmarkdown)

df<-read.csv("expenses.csv")
View(df)

summary(df)
str(df)
dim(df)

#checking null values
colSums(is.na(df)

#character to categorical variable
df$sex=as.factor(df$sex)
df$smoker=as.factor(df$smoker)
df$region=as.factor(df$region)
str(df)

#histogram
histogram(~age|smoker,data=df,col=c("blue","darkmagenta"),main="smoker wise age analysis")
histogram(~charges|smoker,data=df,col=c("blue","darkmagenta"),main="smoker wise charge analysis")
histogram(~charges|region,data=df,col=c("blue","darkmagenta"),main="charges wise region analysis")

#boxplot
boxplot(bmi~smoker,data=df,col=c("violet","blue"),main="Boxplot for smoker and bmi wise analysis")
p <=ggplot(df,aes(x=bmi,y=smoker))+
  geom_boxplot()

boxplot(age~children,data=df,col=c("violet","blue"),main="Boxplot for age and children wise analysis")
p <=ggplot(df,aes(x=age,y=children))+
  geom_boxplot()

#scatterplot

ggplot(df, aes(x = children, y = charges)) +
  geom_point()

