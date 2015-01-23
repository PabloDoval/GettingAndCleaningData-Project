# File: run_analysis.R
# Author: Pablo Doval (pablo.doval@gmail.com)
# Date Created: 2015-01-24
# Description:
# Performs a series of steps on the HAR Dataset, which can be downloaded at:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# These steps are:
# 1. Merge the training and test data sets to create one combined data set.
# 2. Extract the measurements on the mean and standard deviation for each measurement.
# 3. Use descriptive activity names to name the activities in the data set.
# 4. Appropriately label the data set with descriptive activity names.
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
# NOTES:
# - This script cleans up the workspace
# - This script requires the data file to be downloaded previuosly, and to set the working directoy into the 
#   specific directory where the data was uncompressed.

library(dplyr)

# Initial workspace cleaning and workspace setup
rm(list = ls())
setwd("./UCIHARDataset/");

# STEP 1: LOAD OF THE TRAINING AND TEST DATA SET INTO A SINGLE DATA SET

# We start with the Training Data import into tables
xTrain <- read.table('./train/X_train.txt', header=FALSE);
yTrain <- read.table('./train/y_train.txt', header=FALSE);
activityType <- read.table('./activity_labels.txt', header=FALSE);
subjectTrain <- read.table('./train/subject_train.txt', header=FALSE);
features <- read.table('./features.txt', header=FALSE);

# Let's add some column names to the data set
colnames(features) <- c("FeatureId", "FeatureName");
colnames(xTrain) <- features[,2];
colnames(yTrain) <- "ActivityId";
colnames(activityType) <- c("ActivityId","ActivityType");
colnames(subjectTrain) <- "SubjectId";

# Now we create the training data set
trainingData <- cbind(yTrain,subjectTrain,xTrain);

# As we did before, we will now load the Test data into tables and
# add appropiate column names
xTest <- read.table('./test/X_test.txt', header=FALSE);
yTest <- read.table('./test/y_test.txt', header=FALSE);
subjectTest <- read.table('./test/subject_test.txt', header=FALSE);
colnames(subjectTest) <- "SubjectId";
colnames(xTest) <- features[,2];
colnames(yTest) <- "ActivityId";

# We now create the Test dataset
testData <- cbind(yTest,subjectTest,xTest);

# Now we combine (UNION style) the test and train data into a single data set.
combinedData <- rbind(trainingData,testData);

# STEP 2: EXTRACT MEAN AND STDDEV ON EACH MEASUREMENT

# Here we need to extract the measures which contain "mean" or "std" on 
# their names. We will use a grep expression for selecting those columns, 
# and then subsetting on the indexes.

meanAndStdCols <- grep("-(Activity|mean|std)\\(\\)", features[, 2])
combinedData <- combinedData[, meanAndStdCols]

# Now we have to update the column names, since we have changed the columns
# in the data set.
#colnames(combinedData) <-  features[meanAndStdCols, 2]

# STEP 3: USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET

combinedData <- merge(combinedData, activityType, by='ActivityId', all.x=TRUE);

# STEP 4: LABEL THE DATA SET WITH DESCRIPTIVE ACTIVITY NAMES

# Let's tidy up those column names using some RegEx via gsub.
colNames <- colnames(combinedData)

for (i in 1:length(colNames))
{
  colNames[i] = gsub("-std$","StdDev",colNames[i])
  colNames[i] = gsub("-mean","Mean",colNames[i])
  colNames[i] = gsub("-mean","Mean",colNames[i])
  colNames[i] = gsub("Acc","Acceleration",colNames[i])
  colNames[i] = gsub("^(t)","Time",colNames[i])
  colNames[i] = gsub("^(f)","Freq",colNames[i])
  colNames[i] = gsub("([Gg]ravity)","Gravity",colNames[i])
  colNames[i] = gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",colNames[i])
  colNames[i] = gsub("[Gg]yro","Gyro",colNames[i])
  colNames[i] = gsub("AccMag","AccMagnitude",colNames[i])
  colNames[i] = gsub("([Bb]odyaccjerkmag)","BodyAccJerkMagnitude",colNames[i])
  colNames[i] = gsub("JerkMag","JerkMagnitude",colNames[i])
  colNames[i] = gsub("GyroMag","GyroMagnitude",colNames[i])
  colNames[i] = gsub("kurtosis","Kurtosis",colNames[i])
  colNames[i] = gsub("skewness","Skewness",colNames[i])
  # Remove empty parenthesis on names
  colNames[i] = gsub("\\()","",colNames[i])
};

# Now we assign the descriptive columns back to the dataset

colnames(combinedData) <- colNames

# STEP 5: NEW DATASET WITH AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND SUBJECT

partial <- combinedData[, names(combinedData) != "ActivityType"];
summarizedData <- aggregate(partial[, names(partial) != c("ActivityId", "SubjectId")], by = list( ActivityId = partial$ActivityId, SubjectId <- partial$SubjectId), mean);
summarizedData <- merge(summarizedData, activityType, by="ActivityId", all.x=TRUE);
colnames(summarizedData)[2] <- "SubjectId"

# Finally, we export the new data set

write.table(summarizedData, "./summarizedData.txt", row.names = FALSE, sep = ",");

