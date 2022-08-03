# to load dataset, we can load dataset into 
# r studio by two main method.....

# either by using coding
# or by using functional method

# how to load dataset using functional way:

# codes to load excel file
# library ..... function to load a package in R 
# WHICH CAN BE USED TO PERFORM SOME TASK
# readxl is a package which can load excel files into R

library(readxl)

# one equal sign =
# second equal sign <-

happiness19 = read_excel("happiness2019.xlsx")

happiness19

names(Global_Superstore)

# descriptive statistics about Global_superstore dataset
summary(Global_Superstore)

# individual columns analysis
# $ notation to fetch out single columns capabilities

# descriptive statistics about sales column
summary(Global_Superstore$Sales)
summary(Global_Superstore$Profit)

# first few rows of your dataset
head(Global_Superstore)

# head function with $ notation also 
head(Global_Superstore$`Product ID`)

# first 10 product id
head(Global_Superstore$`Product ID`,n = 10)

# fetch first 20 order id
head(Global_Superstore$`Order ID`, n = 20)

# fetching last few rows :: tail command
tail(Global_Superstore$`Order ID`)

# finding out categorical data values
names(Global_Superstore)

head(Global_Superstore$Segment)

# in my dataset, how much contribution is coming all the segments???
table(Global_Superstore$Segment)

# in my dataset, how much contribution is coming all the categories???
table(Global_Superstore$Category)

# create a pivot table of information out of my dataset category and segment column
table(Global_Superstore$Category, Global_Superstore$Segment)

# table based on sub category and Market
table(Global_Superstore$`Sub-Category`, Global_Superstore$Market)

# sales, profit
# sales and Sub-category table : non categorcal values are not coming?????
table(Global_Superstore$`Sub-Category`, Global_Superstore$Sales)
table(Global_Superstore$`Sub-Category`, Global_Superstore$Category)

# subset of data
# Global superstore..... Category, Profit
profit_analysis = subset(Global_Superstore, select = c(Category, Profit))

summary(profit_analysis)
table(profit_analysis$Category)









