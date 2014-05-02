## This script generates a tidy dataset from the UCI HAR dataset
## The script assumes that the UCI data will be in a sub directory called "UCI HAR dataset"
## It will combine column names and data into one dataset and,
## will collect and merge both the training and test data into one.
## It then extracts only the mean and standard deviation of each measurement
## and then generates a new table showing the average of these measures by Subject and Activity

setwd("UCI HAR Dataset")

## get column names & activity lables
cols <- read.table("features.txt")
ColNames <- as.vector(cols[,2])

ActivityLables <- read.table("activity_labels.txt")
ActLabel <- as.vector(ActivityLables$V2)

## for debugging, can limit the amount of data read the rows var.  Otherwise set to -1
rows=-1

## get training data
setwd("train")
train <- read.table("X_train.txt", col.names=ColNames, check.names=FALSE, nrows=rows)
trainSubject <- read.table("subject_train.txt", col.names=c("Subject"), nrows=rows)
trainActivity <- read.table("y_train.txt", col.names=c("Activity"), nrows=rows)
setwd("..")

## get test data
setwd("test")
test <- read.table("X_test.txt", col.names=ColNames, check.names=FALSE, nrows=rows)
testSubject <- read.table("subject_test.txt", col.names=c("Subject"), nrows=rows)
testActivity <- read.table("y_test.txt", col.names=c("Activity"), nrows=rows)
setwd("..")
setwd("..")

## merge the two
Data <- rbind(test,train)
Subject <- rbind(testSubject,trainSubject)
Activity <- rbind(testActivity,trainActivity)

## extract means and standard deviations
ColsOfInterest <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,
                    266:271,345:350,424:429,503:504,516:517,529:530,542:543)
## ColsOfInterest <- c(1:2)
Data <- Data[,ColsOfInterest]

## add subjects and activity labels to each record
library(plyr)
Activity <- mapvalues(Activity$Activity,c(1:length(ActLabel)),ActLabel)
Data <- cbind(Subject, Activity, Data)

## create new data set with average of each variable by activity and subject

library(reshape2)
Melt <- melt(Data, id=c("Subject","Activity"), measure.vars=ColNames[ColsOfInterest])
Tidy <- dcast(Melt, Subject + Activity ~ variable, mean)

# and write it out to Tidy.txt
write.table(Tidy, file="Tidy.txt")

