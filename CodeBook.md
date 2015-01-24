# Code Book

  
### Introduction

This document serves as code book for the output generated in the Getting and Cleaning Data course's project, and describes both the `run_analysis.R` script process and the variables on the output file.

### Process

The process to generate the desired output was described in as a series of transformation steps on the project's requirements, which perform the following operations:

1. Train data and Test data is consolidated together as two separate datasets, and then combined together into one unique dataset containing the whole set of observations.
2. The resulting combined data set is projected into a new one containing only the Mean and Standard Deviation measures.
3. The Activity field is added via a lookup operation on the `activity_labels.txt` match table, so a human readable field relates the activity - instead of a numeric value.
4. The resulting dataset column names are amended so they have more human-readable names, via a set of RegEx substitutions.
5. A new dataset, containing only the average measures for each subject and activity, is generated and stored into this repository as `summarizedData.txt`

### Script Usage

In order to use the provided script (`run_Analysis.R`), the following prerequisites must be made:

* R version 3.1.2 must be used (lower versions might work, but have not been tested)
* Package "dplyr" must be installed on the R machine.
* The UCI HAR data set must have been downloaded, since the script does not automate the download process (due to the big size of this dataset).
* R working directory must be set pointed to the directory where the UCI HAR data has been uncompressed.

Once all those prerequisites are met, the script can be run in one go, and it will generate an output with the name `summarizedData.txt` in R's working directory, containing the activity data in form of aggregated means for each subject and each activity type.

### Variables

The following is a list of all the variables on the `summarizedData.txt` file:

* **ActivityId:**  
   
   *Integer* value that serves as Foreign Key to relate the row (observation) to an specific Activity row on the activities file.  
   
   This is kept as reference only, since each row of this file is de-normalized to have an ActivityType textual category (factor) as well. 
   
 
* **ActivityType:**  
   
   *Text* value that specifies the type of activity in which this subject was engaged when capturing the data. 

 The possible values are:  
  
    * WALKING
    * WALKING_UPSTAIRS
    * WALKING_DOWNSTAIRS
    * SITTING
    * STANDING
    * LAYING


* **FreqBodyAcceleration-bandsEnergy-1,24:**  

   *Numeric* value that specifies the mean of the body acceleration after the FFT process for energy bands between 1 and 24, in m/s.


* **FreqBodyAcceleration-bandsEnergy-25,48:** 

   *Numeric* value that specifies the mean of the body acceleration after the FFT process for energy bands between 25 and 48, in m/s.

 
* **FreqBodyAcceleration-std-X:**  

   *Numeric* value that specifies the mean of the body Standard Deviation of the acceleration on the X axis after the FFT process, in m/s.


* **FreqBodyAccelerationJerk-bandsEnergy-1,24:**

   *Numeric* value that specifies the mean of the body jerk acceleration after the FFT process for energy bands between 1 and 24, in m/s.


* **FreqBodyAccelerationJerk-bandsEnergy-25,48:**

   *Numeric* value that specifies the mean of the body jerk acceleration after the FFT process for energy bands between 25 and 48, in m/s.


* **FreqBodyAccelerationJerk-std-X:**
 
   *Numeric* value that specifies the mean of the Standard Deviation of the jerk acceleration on the X axis after the FFT process, in m/s.


* **FreqBodyAccelerationJerkMagnitude-Kurtosis:**

   *Numeric* value that specifies the mean of the kurtosis of the body jerk acceleration total computed magnitude. The magnitude was calculated using the Euclidean form.


* **FreqBodyAccelerationJerkMagnitude-Skewness:**

   *Numeric* value that specifies the mean of the skewness of the body jerk acceleration total computed magnitude. The magnitude was calculated using the Euclidean form.

* **FreqBodyAccelerationJerkMean-X:**

   *Numeric* value that specifies the mean of the body jerk acceleration after the FFT process for the X axis, in m/s.


* **FreqBodyAccelerationJerkMean-Y:**

   *Numeric* value that specifies the mean of the body jerk acceleration after the FFT process for the Y axis, in m/s.


* **FreqBodyAccelerationJerkMean-Z:**

   *Numeric* value that specifies the mean of the body jerk acceleration after the FFT process for the Z axis, in m/s.


* **FreqBodyAccelerationMag-Kurtosis:**

   *Numeric* value that specifies the mean of the kurtosis of the total body acceleration total computed magnitude. The magnitude was calculated using the Euclidean form.


* **FreqBodyAccelerationMag-Skewness:**

   *Numeric* value that specifies the mean of the skewness of the total body acceleration total computed magnitude. The magnitude was calculated using the Euclidean form.


* **FreqBodyAccelerationMean-X:**

   *Numeric* value that specifies the mean of the total body acceleration after the FFT process for the X axis, in m/s.


* **FreqBodyAccelerationMean-Y:**

   *Numeric* value that specifies the mean of the total body acceleration after the FFT process for the Y axis, in m/s.


* **FreqBodyAccelerationMean-Z:**

   *Numeric* value that specifies the mean of the total body acceleration after the FFT process for the Z axis, in m/s.


* **FreqBodyGyro-bandsEnergy-1,24:**

   *Numeric* value that specifies the mean of the body gyroscope readings after the FFT process for energy bands between 1 and 24, in m/s.


* **FreqBodyGyro-bandsEnergy-25,48:**

   *Numeric* value that specifies the mean of the body gyroscope readings after the FFT process for energy bands between 25 and 48, in m/s.


* **FreqBodyGyro-std-X:**

   *Numeric* value that specifies the mean of the Standard Deviation of the gyrscope readings on the X axis after the FFT process, in m/s.


* **FreqBodyGyroMagnitude-Kurtosis:**

   *Numeric* value that specifies the mean of the kurtosis of the total body gyroscope readings total computed magnitude. The magnitude was calculated using the Euclidean form.


* **FreqBodyGyroMagnitude-Skewness:**

   *Numeric* value that specifies the mean of the skewness of the total body gyroscope readings total computed magnitude. The magnitude was calculated using the Euclidean form.


* **FreqBodyGyroMean-X:**

   *Numeric* value that specifies the mean of the total body Gyroscope readings after the FFT process for the X axis, in m/s.


* **FreqBodyGyroMean-Y:**

   *Numeric* value that specifies the mean of the total body Gyroscope readings after the FFT process for the Y axis, in m/s.


* **FreqBodyGyroMean-Z:**

   *Numeric* value that specifies the mean of the total body Gyroscope readings after the FFT process for the Z axis, in m/s.


* **SubjectId:**  

   *Integer* value that serves as Foreign Key to relate the row (observation) to an specific Subject.


* **TimeBodyAcceleration-correlation-X,Z:**
* **TimeBodyAcceleration-correlation-Y,Z:**
* **TimeBodyAcceleration-std-X:**
* **TimeBodyAccelerationJerk-correlation-X,Z:**
* **TimeBodyAccelerationJerk-correlation-Y,Z:**
* **TimeBodyAccelerationJerk-std-X:**
* **TimeBodyAccelerationJerkMagnitude-arCoeff3:**
* **TimeBodyAccelerationJerkMagnitude-arCoeff4:**
* **TimeBodyAccelerationJerkMean-X:**
* **TimeBodyAccelerationJerkMean-Y:**
* **TimeBodyAccelerationJerkMean-Z:**
* **TimeBodyAccelerationMag-arCoeff3:**
* **TimeBodyAccelerationMag-arCoeff4:**
* **TimeBodyAccelerationMean-X:**
* **TimeBodyAccelerationMean-Y:**
* **TimeBodyAccelerationMean-Z:**
* **TimeBodyGyro-correlation-X,Z:**
* **TimeBodyGyro-correlation-Y,Z:**
* **TimeBodyGyro-std-X:**
* **TimeBodyGyroJerk-correlation-X,Z:**
* **TimeBodyGyroJerk-correlation-Y,Z:**
* **TimeBodyGyroJerk-std-X:**
* **TimeBodyGyroJerkMagnitude-arCoeff3:**
* **TimeBodyGyroJerkMagnitude-arCoeff4:**
* **TimeBodyGyroJerkMean-X:**
* **TimeBodyGyroJerkMean-Y:**
* **TimeBodyGyroJerkMean-Z:**
* **TimeBodyGyroMagnitude-arCoeff3:**
* **TimeBodyGyroMagnitude-arCoeff4:**
* **TimeBodyGyroMean-X:**
* **TimeBodyGyroMean-Y:**
* **TimeBodyGyroMean-Z:**
* **TimeGravityAcceleration-correlation-X,Z:**
* **TimeGravityAcceleration-correlation-Y,Z:**
* **TimeGravityAcceleration-std-X:**
* **TimeGravityAccelerationMag-arCoeff3:**
* **TimeGravityAccelerationMag-arCoeff4:**
* **TimeGravityAccelerationMean-X:**
* **TimeGravityAccelerationMean-Y:**
* **TimeGravityAccelerationMean-Z:**
