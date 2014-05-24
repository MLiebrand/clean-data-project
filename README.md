clean-data-project
==================

This project is to process the raw datafiles from a study on wearable computing devices.  To run the script "run_analysis.R" the raw zip file must exist in the same directory that this R script is located.   The unzipped folder "UCI HAR Dataset" from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" is what needs to be in that directory.   All the files used by that script will contained in there.

## Run
To run the script you need to source the script file then run the function run_analysis().

* source("run_analysis.R")
* run_analysis()

### Output 
The output of this script will be a tidy dataset (tidyDS.txt) with the mean of the means of all the variables(see the CodeBook.md for details). It is a text comma delimitted file with headers. This dataset will exist in the directory from which you are running the script.

### Transformation overview
The first step of the transformation is to read in the 66 mean and standard deviation variables from the test and training dataset.
The next step is to read the other related files with data to be merged and/or used to make the data more useful.  That is a file containing the subjects for each of the group of measurements for both test and training.   A file of activities being done for each of the measurements, a file of translations for the activity codes and a file of the feature names.   The last file of feature names was further transformed to remove special or unique characters and these names were used to create the names in the internal data.tables and headers in the tidy dataset output.  After the various files were read and merged they were transformed into this tidy dataset giving a mean of the means/standard deviations for each subject/activity.


