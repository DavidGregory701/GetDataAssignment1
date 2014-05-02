CodeBook.md
========================================================

## Introduction
This file contains a description of the tidy data set generated from UCI HAR by the script
run_anlaysis.R

## Variables

* Subject: An integer identifying the person being measured
* Activity: The activity being performed.  Either:
    WALKING, 
    WALKING_UPSTAIRS, 
    WALKING_DOWNSTAIRS, 
	SITTING, 
	STANDING or
	LAYING
* The remaining 66 variables correspond to measurements in the UCI HAR dataset of the same
name and represent the mean of that variable across all measurements for the indicated subject and activity.  All units are the same as those for the original UCI HAR dataset variables. Only
variables representing the mean or standard deviation of a measurement are included.  The
specific variables included in this dataset are:
    "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"
    "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"
    "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"
    "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"
    "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"
    "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"
    "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"
    "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"
    "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"
    "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"
    "tBodyAccMag-mean()"          "tBodyAccMag-std()"           "tGravityAccMag-mean()"
    "tGravityAccMag-std()"        "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"
    "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"          "tBodyGyroJerkMag-mean()"
    "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"
    "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"
    "fBodyAcc-std()-Z"            "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"
    "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"
    "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"
    "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"
    "fBodyGyro-std()-Z"           "fBodyAccMag-mean()"          "fBodyAccMag-std()"
    "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-mean()"
    "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 

## Data & Transformations

These are described above in the variables section.
