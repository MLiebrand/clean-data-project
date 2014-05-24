Getting and Cleaning Data Project
========================================================

This data for this was created by data transformation from the the data in the "UCI HCI Dataset"" downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. This tidy data set will contain the mean of the mean and standard deviation of the variables for each Subject/Activity. The data are of 3 types

* Subjects - this is a numeric 1-30 identifying the subjects in the study.

* Activities - there are 6 values of these that a subject could be doing that the variables are measured against.
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

* Variables - the measurements of various features captured during an activity

The means taken were for the means of the feature that had a corresponding standard deviation.  The mean variables end in "mean"" and standard deviation end in "std".   There are some variables that are further suffixed with an X indicating measurments on a 3-axial signals.  These variable names were taken from the variable names in the source raw data descriptions but had special characters removed.  See the raw description of this data within the features_info.text and features.text in the above download.

  - tBodyAccmeanX
  - tBodyAccmeanY
  - tBodyAccmeanZ
  - tBodyAccstdX
  - tBodyAccstdY
  - tBodyAccstdZ
  - tGravityAccmeanX
  - tGravityAccmeanY
  - tGravityAccmeanZ
  - tGravityAccstdX
  - tGravityAccstdY
  - tGravityAccstdZ
  - tBodyAccJerkmeanX
  - tBodyAccJerkmeanY
  - tBodyAccJerkmeanZ
  - tBodyAccJerkstdX
  - tBodyAccJerkstdY
  - tBodyAccJerkstdZ
  - tBodyGyromeanX
  - tBodyGyromeanY
  - tBodyGyromeanZ
  - tBodyGyrostdX
  - tBodyGyrostdY
  - tBodyGyrostdZ
  - tBodyGyroJerkmeanX
  - tBodyGyroJerkmeanY
  - tBodyGyroJerkmeanZ
  - tBodyGyroJerkstdX
  - tBodyGyroJerkstdY
  - tBodyGyroJerkstdZ
  - tBodyGyroJerkcorrelationYZ
  - tBodyAccMagmean
  - tGravityAccMagmean
  - tGravityAccMagstd
  - tBodyAccJerkMagmean
  - tBodyAccJerkMagstd
  - tBodyGyroMagmean
  - tBodyGyroMagstd
  - tBodyGyroJerkMagmean
  - tBodyGyroJerkMagstd
  - fBodyAccmeanX
  - fBodyAccmeanY
  - fBodyAccmeanZ
  - fBodyAccstdX
  - fBodyAccstdY
  - fBodyAccstdZ
  - fBodyAccJerkmeanX
  - fBodyAccJerkmeanY
  - fBodyAccJerkmeanZ
  - fBodyAccJerkstdX
  - fBodyAccJerkstdY
  - fBodyAccJerkstdZ
  - fBodyGyromeanX
  - fBodyGyromeanY
  - fBodyGyromeanZ
  - fBodyGyrostdX
  - fBodyGyrostdY
  - fBodyGyrostdZ
  - fBodyAccMagmean
  - fBodyAccMagstd
  - fBodyBodyAccJerkMagmean
  - fBodyBodyAccJerkMagstd
  - fBodyBodyGyroMagmean
  - fBodyBodyGyroMagstd
  - fBodyBodyGyroJerkMagmean
  - fBodyBodyGyroJerkMagstd

## Transformation

The data was taken from a "X_test.txt" and "X_Train.txt"" dataset that contained the raw data for various tests and training for the above data.  Datasets "Y_test.txt" and y_train.txt" were combined to these files to identify the activities being performed.  These activities were also translated from a numeric code to their descriptive text translation from the "Activity_lables.txt" file.   There was one line in each of these files to correspond to the "X" files." The "subjects_test.txt", and "subjects_train.txt" were also merged in and again there was one line in each of these files to correspond to the "X" files.





