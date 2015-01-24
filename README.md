## Getting and Cleaning Data Project

Author: Pablo Doval (pablo.doval@gmail.com)


### Overview
This project is an excersise on data retrieval and cleaning, developed as an assignment for John Hopkins' Getting and Cleaning Data course on Coursera. The project's focus is not in the analysis of the data, but just on the steps to turn the source data on something usable for further analysis processes.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Exercise Objectives

Create an R script called run_analysis.R that does the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names. 

From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

### Script Usage

In order to use the provided script (`run_Analysis.R`), the following prerequisites must be made:

* R version 3.1.2 must be used (lower versions might work, but have not been tested)
* Package "Dplyr" must be installed on the R machine.
* The UCI HAR data set must have been downloaded, since the script does not automate the download process (due to the big size of this dataset).
* R working derectory must be set pointed to the directory where the UCI HAR data has been uncompressed.

Once all those prerequisites are met, the script can be run in one go, and it will generate an output with the name `summarizedData.txt` in R's working directory, containing the activity data in form of aggregated means for each subject and each activity type.



### Code Book
There is an associated code book where detailed information about all variables, as well as the processes that were followed to turn the original data into a clean and tidy data set, can be found. This code book is in the CodeBook.md file.

