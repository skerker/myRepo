setwd("/Users/MBP2015/Desktop/myGithub/assignment1")
mydata <- read.table(file="household_power_consumption.txt",header=TRUE,sep=";",na.strings="?", stringsAsFactors = FALSE)
mydata$Date <- as.Date(mydata$Date, "%d/%m/%Y")
library(dplyr)
mydf <- tbl_df(mydata)
rm("mydata")

# select a range of dates

date_selected <- filter(mydf, Date >= "2007-02-01" & Date <= "2007-02-02")

#   Source: local data frame [2,880 x 9]

# plot #1

hist(date_selected$Global_active_power)


# make a new column with date and time combined


date_selected$DateTime <- as.POSIXct(paste(date_selected$Date, date_selected$Time),format="%Y-%m-%d %H:%M:%S")

# plot #2

within(date_selected,plot(DateTime, Global_active_power))

# plot #3

within(date_selected,plot(DateTime, Sub_metering_1, type="l", col = "black",ylab="Energy sub metering",xlab=""))   # black

within(date_selected,lines(DateTime, Sub_metering_2, type="l", col = "red"))  # red

within(date_selected,lines(DateTime, Sub_metering_3, type="l", col = "blue"))  # blue


# plot 4

#  set up a four panel graph 


# subplot -1


# subplot-2

within(date_selected,plot(DateTime, Voltage))


# subplot-3



# subplot-4


within(date_selected,plot(DateTime, Global_reactive_power))


#  upload the script and graphs to github






# http://stackoverflow.com/questions/23622338/subset-a-dataframe-between-2-dates-in-r-better-way


# http://stackoverflow.com/questions/24006475/subsetting-data-based-on-a-date-range-in-r


# add a new column to the data frame 

library(data.table)
newFile <- fread("course_4_proj_1.txt", na.strings = "?")

newFile[,DateTime := as.Date(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")]


library(dplyr)
subsetted <- filter(newFile, DateTime >= as.Date("2007-02-01 00:00:00"), DateTime < as.Date("2007-02-03 00:00:00"))


#  

data[,1] <- strptime(data[,1], "%Y-%m-%d")




#   stats[,i] <- as.numeric(as.character(stats[,i]))

for (i in c(1,2) {
  newdata[,i] <- as.Date(newdata[,i])
}



for(i in c(1,3:ncol(stats))) {
  stats[,i] <- as.numeric(stats[,i])
}


dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
newDates <- as.Date(dates, "%m/%d/%y")

Date[1:5], format: "1992-02-27" "1992-02-27" "1992-01-14" "1992-02-28" "1992-02-01"

16/12/2006
%d/%m/%y




Convert to date from character


date <- as.Date(col1[1,1], "%d/%m/%Y")

Date[1:1], format: "2006-12-16"

"2006-12-16"





Select col1 from mydata
for loop to convert from chr to date

col1 <- select(mydata, Date)
for (i in 1:2075259) {col1[i,1] <- as.Date(col1[i,1],"%d/%m/%Y") }

> for (i in 1:10) {newCol1[i] <- as.Date(col1[i,1],"%d/%m/%Y") }
> newCol1
[1] "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16"
> str(newCol1)
Date[1:10], format: "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16"
> 
  
mutate(data.frame, as.Date(Date))


# add a new column to data frame that is 
  

mutate(myList, as.Date(Date, "%d/%m/%Y"))


OK it worked!
  
  
> finalList <- mutate(myList, as.Date(Date, "%d/%m/%Y"))
> head(finalList)
Source: local data frame [6 x 2]

Date as.Date(Date, "%d/%m/%Y")
(chr)                    (date)
1 16/12/2006                2006-12-16
2 16/12/2006                2006-12-16
3 16/12/2006                2006-12-16
4 16/12/2006                2006-12-16
5 16/12/2006                2006-12-16
6 16/12/2006                2006-12-16


> str(finalList)
Classes ‘tbl_df’, ‘tbl’ and 'data.frame':	2075259 obs. of  2 variables:
  $ Date                     : chr  "16/12/2006" "16/12/2006" "16/12/2006" "16/12/2006" ...
$ as.Date(Date, "%d/%m/%Y"): Date, format: "2006-12-16" "2006-12-16" "2006-12-16" "2006-12-16" ...


Can I just specify correct formats when I do read.table?

for Date

as.Date(Date, "%d/%m/%Y")


for time






