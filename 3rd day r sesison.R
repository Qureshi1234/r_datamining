# some statistical output functions.....

# happiness19 dataset
happiness19

names(happiness19)
head(happiness19)
str(happiness19)

# perform some in depth statistical analysis on some columns of this dataset

# happiness score of every country

# maximum happiness score and minimum happiness score
# okay... i can make your life easy.... by giving you freedom to write only column name
# and not dataset name or $ sign.....
# fetch out your column information now on.....
attach(happiness19)
names(happiness19)
# if your column name is 1 word,,, then you can directly write it down
max(Score)

# """but if your column name is having a space in between, then use ` ` """

max(`GDP per capita`)

max(happiness19$`GDP per capita`)
# median happiness score 
median(Score)

median(`GDP per capita`)
# mean happiness score
mean(Score)
mean(`GDP per capita`)
# variance in happiness score column
var(Score)
var(`GDP per capita`)
# standard deviation in happiness score column
sd(Score)
sd(`GDP per capita`)

# association between 2 variables.... 
# one variable increase.... second variable decrease
# quantity demanded vs Price
# if price of a good will increase, quantity demanded will decrease....
# one variable is increasing and out of this second variable is decreasing....
# negative correlation 

# positive correlation
# GDP of a country will increase, happiness score of that country will also increase....

cor(Score,`GDP per capita`)

# Global Superstore
# count sum of all the sales

sum(Global_Superstore$Sales)

mean(Global_Superstore$Sales)
median(Global_Superstore$Sales)
var(Global_Superstore$Sales)
sd(Global_Superstore$Sales)

# to check positive or negative correlation between sales and profit

names(Global_Superstore)

# correlation betwenn profit and sales
attach(Global_Superstore)
cor(Profit, Sales)

# all these analysis that we have performed, is applicable only on numerical columns
names(Global_Superstore)

mean(Country)

# we have to understand what are different types of data types in general and how R LANGUAGE
# TREAT EVERY Type of data type

# major 6 types of data types in R

# character/strings
# numerical
# logical 
# complex (3 + 2i)
# vectors
# list
# matrics
# factor type
# data frame/tibble 



# to create a memory in R, we will always assign these data types with a variable name
# combination of eng words, and number.... var1, v, rtegergerogihren, 
# cannot be a variable name: !dsgf , ?dslkfj


# basic data types.....

# character type data:

# string.... unorganized string.... article, paragraph, essay, unreadable string
v1 = 'Taj Mahal' # single string
v2 = "Taj Mahal" # double string

# single and double string can be used together
v3 = "father's"

# type of data type of v1, v2 and v3
class(v1)

# numerical data....
v4 = 2354
class(v4)

v5 = 23.44636
class(v5)

# logical data type is True false

# Logical data type is having a value assinged to
# it....
# TRUE is 1 in R, FALSE is assigned as 0
1 - 1
1 - TRUE
0 - 1 
FALSE - 1
2*TRUE
2*FALSE
v6 = TRUE
v4*v6
class(v6)

v7  = 3 + 2i # complex data type
class(v7)


# advanced data types.....

# vectors
# to define a vector... we use the c function
# c function means combine....

# more than one element of different data types..
# one column data - vector

# one dimensional array.....

apple = c('red', 'green', 'yellow')
class(apple)

# create a 5 emp name vector
employees = c('Ramesh', 'Suresh', 'Yati', 
              'Irfan', 'Hamza')

class(employees)

# integer vector....

# employees salary monthly basis
vector1 = c(20000,35000,45000,33000,20000)

# employees salary yearly basis
vector2 = 12*vector1

# mathematical operations on vectors....

# one day average salary of an employee
vector3 = vector2/365

v8 = c('abc',123)

# list
# box, where you can keep any type of data, multiple
# types of data

list1 = list('abc', 123, c(34,46,54))
class(list1)


# matrics
# 2 dim vector.....

# matrics of information....

vector4 = c('a', 'b', 'c','d')

# one dim.... row and col format....
# 2 by 2; 2 rows,,,,,, 2 col

# a , b in one row, b and c in second..row...
m1 = matrix(vector4, nrow = 2, ncol = 2, byrow = TRUE)

# a , b in one col, c and d in second..col..
m2 = matrix(vector4, nrow = 2, ncol = 2, byrow = FALSE)
m2
# factor type
# data frame/tibble 








