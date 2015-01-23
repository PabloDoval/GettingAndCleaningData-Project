# Introduction

This document serves as code book for the output generated in the Getting and Cleaning Data course's project, and describes both the `run_analysis.R` script process and the variables on the output file.

# Process

The process to generate the desired output was descibed in as a series of transformation steps on the project's requirements, which perform the following operations:

1. Train data and Test data is consolidated together as two sepparate datasets, and then combined together into one unique dataset containing the whole set of observations.
2. The resulting cobined data set is projected into a new one containing only the Mean and Standard Deviation measures.
3. The Activity field is added via a lookup operation on the `activity_labels.txt` match table, so a human readable field relates the activity - instead of a numeric value.
4. The resulting dataset column names are amended so they have more human-readable names, via a set of RegEx substitutions.
5. A new dataset, containing only the average measures for each subject and activity, is generated and stored into this repository as `summarizedData.txt`

# Variables

The following is a list of all the variables on the `summarizedData.txt` file:

* ActivityId
* ActivityType
* FreqBodyAcceleration-bandsEnergy-1,24
* FreqBodyAcceleration-bandsEnergy-25,48
* FreqBodyAcceleration-std-X
* FreqBodyAccelerationJerk-bandsEnergy-1,24
* FreqBodyAccelerationJerk-bandsEnergy-25,48
* FreqBodyAccelerationJerk-std-X
* FreqBodyAccelerationJerkMagnitude-Kurtosis
* FreqBodyAccelerationJerkMagnitude-Skewness
* FreqBodyAccelerationJerkMean-X
* FreqBodyAccelerationJerkMean-Y
* FreqBodyAccelerationJerkMean-Z
* FreqBodyAccelerationMag-Kurtosis
* FreqBodyAccelerationMag-Skewness
* FreqBodyAccelerationMean-X
* FreqBodyAccelerationMean-Y
* FreqBodyAccelerationMean-Z
* FreqBodyGyro-bandsEnergy-1,24
* FreqBodyGyro-bandsEnergy-25,48
* FreqBodyGyro-std-X
* FreqBodyGyroMagnitude-Kurtosis
* FreqBodyGyroMagnitude-Skewness
* FreqBodyGyroMean-X
* FreqBodyGyroMean-Y
* FreqBodyGyroMean-Z
* SubjectId
* TimeBodyAcceleration-correlation-X,Z
* TimeBodyAcceleration-correlation-Y,Z
* TimeBodyAcceleration-std-X
* TimeBodyAccelerationJerk-correlation-X,Z
* TimeBodyAccelerationJerk-correlation-Y,Z
* TimeBodyAccelerationJerk-std-X
* TimeBodyAccelerationJerkMagnitude-arCoeff3
* TimeBodyAccelerationJerkMagnitude-arCoeff4
* TimeBodyAccelerationJerkMean-X
* TimeBodyAccelerationJerkMean-Y
* TimeBodyAccelerationJerkMean-Z
* TimeBodyAccelerationMag-arCoeff3
* TimeBodyAccelerationMag-arCoeff4
* TimeBodyAccelerationMean-X
* TimeBodyAccelerationMean-Y
* TimeBodyAccelerationMean-Z
* TimeBodyGyro-correlation-X,Z
* TimeBodyGyro-correlation-Y,Z
* TimeBodyGyro-std-X
* TimeBodyGyroJerk-correlation-X,Z
* TimeBodyGyroJerk-correlation-Y,Z
* TimeBodyGyroJerk-std-X
* TimeBodyGyroJerkMagnitude-arCoeff3
* TimeBodyGyroJerkMagnitude-arCoeff4
* TimeBodyGyroJerkMean-X
* TimeBodyGyroJerkMean-Y
* TimeBodyGyroJerkMean-Z
* TimeBodyGyroMagnitude-arCoeff3
* TimeBodyGyroMagnitude-arCoeff4
* TimeBodyGyroMean-X
* TimeBodyGyroMean-Y
* TimeBodyGyroMean-Z
* TimeGravityAcceleration-correlation-X,Z
* TimeGravityAcceleration-correlation-Y,Z
* TimeGravityAcceleration-std-X
* TimeGravityAccelerationMag-arCoeff3
* TimeGravityAccelerationMag-arCoeff4
* TimeGravityAccelerationMean-X
* TimeGravityAccelerationMean-Y
* TimeGravityAccelerationMean-Z

