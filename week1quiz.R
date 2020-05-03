##week 1 Quiz
##question 1

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileurl, 
              destfile = "~/R.Studio/Getting_and_Cleaning_Data/Getting_and_cleaning_data_week1/housingsurvey.csv")

data<- read.csv("housingsurvey.csv")
table(data$VAL)

##question 3
fileurl2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileurl2, 
              destfile = "~/R.Studio/Getting_and_Cleaning_Data/Getting_and_cleaning_data_week1/getdata_data_DATA.gov_NGAP.xlsx")

library(readxl)
dat<- read_xlsx("NGAP.xlsx", sheet = 1, range = "G18:O23")
sum(dat$Zip*dat$Ext,na.rm=T)

##question 4
fileurl4 <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
library(XML)
doc<- xmlTreeParse(fileurl4, useInternalNodes = TRUE)
rootNode <- xmlRoot(doc)[[1]]
zipcode<- xpathSApply(rootNode, "//zipcode", xmlValue)
sum(zipcode==21231)

##question 5
fileurl5<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileurl5, destfile = "C:/Users/pmeng2/Documents/R.Studio/Getting_and_Cleaning_Data/Getting_and_cleaning_data_week1/2006housingsurvey.csv")
library(data.table)
DT <- fread("2006housingsurvey.csv")
system.time()
