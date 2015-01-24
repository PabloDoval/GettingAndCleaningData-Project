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

   *Numeric* value that shows the mean of the correlation between axis X and Z on the Body acceleration measurement.


* **TimeBodyAcceleration-correlation-Y,Z:**

   *Numeric* value that shows the mean of the correlation between axis Y and Z on the Body acceleration measurement.


* **TimeBodyAcceleration-std-X:**

   *Numeric* value that shows the mean of standard deviation of the Body acceleration measurement on the X axis.


* **TimeBodyAccelerationJerk-correlation-X,Z:**

   *Numeric* value that shows the mean of the correlation between axis X and Z on the Body jerk acceleration measurement.


* **TimeBodyAccelerationJerk-correlation-Y,Z:**

   *Numeric* value that shows the mean of the correlation between axis X and Z on the Body jerk acceleration measurement.


* **TimeBodyAccelerationJerk-std-X:**

   *Numeric* value that shows the mean of standard deviation of the Body jerk acceleration measurement on the X axis.


* **TimeBodyAccelerationJerkMagnitude-arCoeff3:**

   *Numeric* value that shows the mean of ar Corefficient 3.


* **TimeBodyAccelerationJerkMagnitude-arCoeff4:**

   *Numeric* value that shows the mean of ar Corefficient 4.


* **TimeBodyAccelerationJerkMean-X:**

   *Numeric* value that specifies the mean of the body jerk acceleration for the X axis, in m/s.


* **TimeBodyAccelerationJerkMean-Y:**

   *Numeric* value that specifies the mean of the body jerk acceleration for the Y axis, in m/s.


* **TimeBodyAccelerationJerkMean-Z:**

   *Numeric* value that specifies the mean of the body jerk acceleration for the Z axis, in m/s.


* **TimeBodyAccelerationMag-arCoeff3:**

   *Numeric* value that shows the mean of the magnitude in Euclidean form of the ar Corefficient 3.


* **TimeBodyAccelerationMag-arCoeff4:**

   *Numeric* value that shows the mean of the magnitude in Euclidean form of the ar Corefficient 4.


* **TimeBodyAccelerationMean-X:**

   *Numeric* value that specifies the mean of the total body acceleration for the X axis, in m/s.


* **TimeBodyAccelerationMean-Y:**

   *Numeric* value that specifies the mean of the total body acceleration for the Y axis, in m/s.


* **TimeBodyAccelerationMean-Z:**

   *Numeric* value that specifies the mean of the total body acceleration for the Z axis, in m/s.


* **TimeBodyGyro-correlation-X,Z:**

   *Numeric* value that shows the mean of the correlation between axis X and Z on the Body gyroscopic readings measurement, in radians/s.


* **TimeBodyGyro-correlation-Y,Z:**

   *Numeric* value that shows the mean of the correlation between axis Y and Z on the Body gyroscopic readings measurement, in radians/s.


* **TimeBodyGyro-std-X:**

   *Numeric* value that specifies the mean of the Standard Deviation of the body gyroscope readings on the X axis, in m/s.


* **TimeBodyGyroJerk-correlation-X,Z:**

   *Numeric* value that shows the mean of the correlation between axis X and Z on the Body jerk gyroscopic readings measurement, in radians/s.


* **TimeBodyGyroJerk-correlation-Y,Z:**

   *Numeric* value that shows the mean of the correlation between axis Y and Z on the Body jerk gyroscopic readings measurement, in radians/s.

* **TimeBodyGyroJerk-std-X:**

   *Numeric* value that specifies the mean of the Standard Deviation of the body jerk gyroscope readings on the X axis, in m/s.

* **TimeBodyGyroJerkMagnitude-arCoeff3:**

   *Numeric* value that shows the mean of ar Corefficient 3 for the gyroscope reading.


* **TimeBodyGyroJerkMagnitude-arCoeff4:**

   *Numeric* value that shows the mean of ar Corefficient 4 for the gyroscope reading.


* **TimeBodyGyroJerkMean-X:**

   *Numeric* value that specifies the mean of the total body jerk gyroscope readings for the X axis, in m/s.


* **TimeBodyGyroJerkMean-Y:**

   *Numeric* value that specifies the mean of the total body jerk gyroscope readings for the Y axis, in m/s.


* **TimeBodyGyroJerkMean-Z:**

   *Numeric* value that specifies the mean of the total body jerk gyroscope readings for the Z axis, in m/s.


* **TimeBodyGyroMagnitude-arCoeff3:**

   *Numeric* value that shows the mean of ar Corefficient 3 of the gyroscope magnitude in Euclidean form.


* **TimeBodyGyroMagnitude-arCoeff4:**

   *Numeric* value that shows the mean of ar Corefficient 4 of the gyroscope magnitude in Euclidean form.


* **TimeBodyGyroMean-X:**

   *Numeric* value that specifies the mean of the total body gyroscope readings for the X axis, in m/s.


* **TimeBodyGyroMean-Y:**

   *Numeric* value that specifies the mean of the total body gyroscope readings for the Y axis, in m/s.


* **TimeBodyGyroMean-Z:**

   *Numeric* value that specifies the mean of the total body gyroscope readings for the Z axis, in m/s.


* **TimeGravityAcceleration-correlation-X,Z:**

   *Numeric* value that shows the mean of the correlation between axis X and Z on the Gravity acceleration measurement.


* **TimeGravityAcceleration-correlation-Y,Z:**

   *Numeric* value that shows the mean of the correlation between axis Y and Z on the Gravity acceleration measurement.


* **TimeGravityAcceleration-std-X:**

   *Numeric* value that specifies the mean of the Standard Deviation of the gravity acceleration on the X axis, in m/s.


* **TimeGravityAccelerationMag-arCoeff3:**

   *Numeric* value that shows the mean of ar Corefficient 3 of the gravity magnitude in Euclidean form.


* **TimeGravityAccelerationMag-arCoeff4:**

   *Numeric* value that shows the mean of ar Corefficient 4 of the gravity magnitude in Euclidean form.


* **TimeGravityAccelerationMean-X:**

   *Numeric* value that specifies the mean of the total gravity acceleration readings for the X axis, in m/s.


* **TimeGravityAccelerationMean-Y:**

   *Numeric* value that specifies the mean of the total gravity acceleration readings for the X axis, in m/s.


* **TimeGravityAccelerationMean-Z:**

   *Numeric* value that specifies the mean of the total gravity acceleration readings for the X axis, in m/s.

