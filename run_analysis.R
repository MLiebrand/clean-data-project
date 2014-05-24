run_analysis <- function() {
library("data.table", lib.loc="/Library/Frameworks/R.framework/Versions/3.0/Resources/library")  
library("reshape2", lib.loc="/Library/Frameworks/R.framework/Versions/3.0/Resources/library")
# create a vector for the getting attributes of mean and standard deviations from the testing and training files
colVector <- rep(c(rep(c(rep(c(-1,15), 6), -544), 5), rep(c(rep(c(-1, 15), 2), -176), 5), rep(c(rep(c(-1, 15), 6), -1168), 3), rep(c(rep(c(-1, 15), 2), -176), 3), rep(c(-1, 15), 2), -288)) 

# read the testing and training files
print("reading test file")
testRes <- data.table(read.fwf("./UCI HAR Dataset/test/X_test.txt", widths= colVector,  header = FALSE, stringsAsFactors=FALSE))
print("reading training file")
trainRes <- data.table(read.fwf("./UCI HAR Dataset/train/X_train.txt", widths= colVector,  header = FALSE, stringsAsFactors=FALSE))

# read the subjects for testing and training files
print("Final processing")
testSubject <- fread("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
trainSubject <- fread("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)

# read the feature names and create a vector corresponding to the attributes used in reading the dataset.
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, sep = " ", stringsAsFactors=FALSE)
featureNames <- c(features[1:6, 2], features[41:46, 2], features[81:86, 2], features[121:126, 2], features[161:166, 2])
featureNames <- c(featureNames, features[200:201, 2], features[214:215, 2], features[227:228, 2], features[240:241, 2], features[253:254, 2])
featureNames <- c(featureNames, features[266:271, 2], features[345:350, 2], features[424:429, 2])
featureNames <- c(featureNames, features[503:504, 2], features[516:517, 2], features[529:530, 2], features[542:543, 2])
featureNames <-gsub("[(),-]","",featureNames)

# read the subjects activity files.
testMember <- fread("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
trainMember <- fread("./UCI HAR Dataset/train/y_train.txt", header = FALSE)

# read subject activity labels
activity_labels <- fread("./UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = " ")
setnames(activity_labels, c("Activity", "ActivityDescription"))

# Assign featureNames to files
setnames(testRes, featureNames)
setnames(trainRes, featureNames)

#merge tables
testRes[, Subject := testSubject$V1]
testRes[, Activity := testMember$V1]
trainRes[, Subject := trainSubject$V1]
trainRes[, Activity := trainMember$V1]
testTrainRes <- rbind(testRes, trainRes)
finalTestTrain <- merge(testTrainRes, activity_labels, by = "Activity")

# make tidy dataset.
testTrainMelt <- melt(finalTestTrain, id=c("Subject", "ActivityDescription"), measure.vars=featureNames)
testTrainCast <- dcast(testTrainMelt, Subject + ActivityDescription ~ variable, mean)

# write tidy dataset
write.csv(testTrainCast, "tidyDS.txt")
print("Complete")
}
