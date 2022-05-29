## Load Necessary Packages

library(dplyr)
library(reshape)

## Read Data into Dataframes

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table ("./UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

##body_acc_x_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")

## Rename columns of data-frames with one only column for readability

y_train <- rename(y_train, activity_class = V1)
y_test <- rename(y_test, activity_class = V1)

subject_train <- rename(subject_train, subject = V1)
subject_test <- rename(subject_test, subject = V1)

activity_labels <- rename(activity_labels, activity_class = V1, activity_label = V2)


## Join Subject Identifiers with data

traindata <- cbind(subject_train, y_train, X_train)
testdata <- cbind(subject_test, y_test, X_test)

## Join Train & Test Data frames

data <- rbind(testdata, traindata)

## Assign Activity Labels and reorder to make data head more explicit

data <- merge(data, activity_labels)
data <- data %>% select(subject, activity_class, activity_label, everything())
data <- arrange(data, subject)

## Creates Data Frame with Mean & Standard Deviation for each measurement


datasummary <- cbind(data[1:3], mean = apply(data[4:564], 1, mean), standard_deviation = apply (data[4:564], 1, sd))

## Groups by Subject and activity and computes mean of measurements Mean & Standard deviation

datasummary <- group_by(datasummary, subject, activity_class, activity_label)
datasummary <- summarize(datasummary, mean = mean(mean), standard_deviation = mean(standard_deviation))
