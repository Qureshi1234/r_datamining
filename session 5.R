# some data filtering
# filter function....

# R made it a very simplified process with one single line of code:

# data
# using one dataset from one package:
# aggregate stuff.....small specialization using a chunk of code

# chunk of codes are called as packages....
# data processing or data wrangling.... one package is defined: dplyr

# in r most of the required data mining packages are available for free.

# 3 ways to load the packages.....
# 1. using tools from toolbar
# 2. using package window
# 3. by using code



# nycflights13: contains dataset about flights delayed status
# dplyr: used for data wranglinng

install.packages("dplyr")
install.pacakges("tidyverse")

library("dplyr")
library(tidyverse)
# help us in performing.... data filtering
# data aranging 
# data extracting and aggregating
# data creation....

?nycflights13::flights

flights = nycflights13::flights
flights

head(flights, n = 2)

columns(flights)

View(flights)

dim(flights)

summary(flights)

?dplyr::filter()

# you want to study January based 
# flights information.... 

detach(flights)

jan_flights = filter(flights,flights$month==1)
jan_flights

class(jan_flights)

# store this filtered data into my local machine
write.csv(jan_flights, "C:/Users/mohamednasirq/OneDrive - KPMG/Desktop/rcss/rcss data mining/flights.csv",row.names = FALSE)

# distance analysis

# avg distance ...
# max distant
# min

summary(jan_flights$distance)


# again i want to filter 
# all the jan flights where
# distance is more than 
# avg(distance)

filter(jan_flights, jan_flights$distance > 1007)

write.csv(filter(jan_flights, jan_flights$distance > 1007), "C:/Users/mohamednasirq/OneDrive - KPMG/Desktop/rcss/rcss data mining/jan_flights_with_more_than_average_distance.csv")

# apply filters on 2 variables.... also

filter(flights, month > 2, day == 10)

filter(flights, month == 1, day == 1, distance > 1000)

# logical filters  and , or operators....

# in a row .... month cannot be 1 and 2 at the same time...

# & for and statement

# find out all the rows where month is 1 and also day is 2.
filter(flights, month == 1 & day  == 2)

# | or statement
# find out all the rows where month is 1 or day is 2.
filter(flights, month == 1 | day  == 2)

# Multiple filters in same columns
filter(flights , month == 1 | month == 2)

# too many filters from one columns... day

# %in% operator inside filter command to perform multiple filters
filter(flights , day %in% c(22,5,6,8,23,30))

# i want reverse of the filter
# ! sign with filter statement
filter(flights ,!(day %in% c(22,5,6,8,23,30)))

# performing sorting.... with respect to a column


# arrange() function
# can help us even in filtering columns ...

# first will sort values with respect to day, then month, then year
arrange(flights, day, month, year)

# descending order....

arrange(flights, desc(dep_time))

# instead of all the columns, i want selected columned to study

filtered_data = select(flights, month ,day, dest, 
       origin, distance, air_time)

write.csv(filtered_data, "C:/Users/mohamednasirq/OneDrive - KPMG/Desktop/rcss/rcss data mining/filtered_flights_data.csv")

table(filtered_data$dest, filtered_data$origin)

# till this session, your first term exam will be. k




















