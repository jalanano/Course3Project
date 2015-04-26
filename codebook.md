#Description of the Variables used in the run_analysis.R script#
==========================================================

**Note:**
**For description on how the data was transformed and manipulated, please refer to the README file.**

The data comes from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. 
These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcc-XYZ, frequencyBodyAccJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccJerkMag, frequencyBodyGyroMag, frequencyBodyGyroJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


**Time Domain:**

- time_BodyAcc-XYZ
- time_GravityAcc-XYZ
- time_BodyAccJerk-XYZ
- time_BodyGyro-XYZ
- time_BodyGyroJerk-XYZ
- time_BodyAccMag
- time_GravityAccMag
- time_BodyAccJerkMag
- time_BodyGyroMag
- time_BodyGyroJerkMag

**Frequency Domain:**

- frequency_BodyAcc-XYZ
- frequency_BodyAccJerk-XYZ
- frequency_BodyGyro-XYZ
- frequency_BodyAccMag
- frequency_BodyAccJerkMag
- frequency_BodyGyroMag
- frequency_BodyGyroJerkMag


**The set of variables that were estimated from these signals are:**

- mean(): Mean value
- std(): Standard deviation
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency



**The complete list of variables and its descriptions are:**

- subject - the subject who who  sperformed the activity for each window sample. Its range is from 1 to 30. 

- activity - the six acitivities namely (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

- time_BodyAcc.mean.X - the mean of the time domain body acceleration signals in X axial
- time_BodyAcc.mean.Y - the mean of the time domain body acceleration signals in Y axial
- time_BodyAcc.mean.Z - the mean of the time domain body acceleration signals in Z axial

- time_BodyAcc.std.X - the standard deviation of the time domain body acceleration signals in X axial
- time_BodyAcc.std.Y - the standard deviation of the time domain body acceleration signals in Y axial
- time_BodyAcc.std.Z - the standard deviation of the time domain body acceleration signals in Y axial

- time_GravityAcc.mean.X - the mean of the time domain gravity acceleration signals in X axial
- time_GravityAcc.mean.Y - the mean of the time domain gravity acceleration signals in Y axial
- time_GravityAcc.mean.Z -  the mean of the time domain gravity acceleration signals in Z axial

- time_GravityAcc.std.X - the standard deviation of the time domain gravity acceleration signals in X axial
- time_GravityAcc.std.Y - the standard deviation of the time domain gravity acceleration signals in Y axial
- time_GravityAcc.std.Z -  the standard deviation of the time domain gravity acceleration signals in Z axial
 
- time_BodyAccJerk.mean.X - the mean of the time domain Body Acceleation Jerk signals in X axial
- time_BodyAccJerk.mean.Y - the mean of the time domain Body Acceleation Jerk signals in Y axial
- time_BodyAccJerk.mean.Z - the mean of the time domain Body Acceleation Jerk signals in Z axial

- time_BodyAccJerk.std.X - the standard deviation of the time domain Body Acceleation Jerk signals in X axial
- time_BodyAccJerk.std.Y - the standard deviation of the time domain Body Acceleation Jerk signals in Y axial
- time_BodyAccJerk.std.Z - the standard deviation of the time domain Body Acceleation Jerk signals in Z axial

- time_BodyGyro.mean.X  - the mean of the time Body angular velocity in X axial
- time_BodyGyro.mean.Y - the mean of the time Body angular velocity in Y axial
- time_BodyGyro.mean.Z - the mean of the time Body angular velocity in Z axial

- time_BodyGyro.std.X - the standard deviation of the time Body angular velocity in X axial
- time_BodyGyro.std.Y - the standard deviation of the time Body angular velocity in Y axial
- time_BodyGyro.std.Z - the standard deviation of the time Body angular velocity in Z axial

- time_BodyGyroJerk.mean.X - the mean of the time domain Body angular velocity jerk signals in X axial
- time_BodyGyroJerk.mean.Y - the mean of the time domain Body angular velocity jerk signals in Y axial
- time_BodyGyroJerk.mean.Z - the mean of the time domain Body angular velocity jerk signals in Z axial

- time_BodyGyroJerk.std.X - the standard deviation of the time domain Body angular velocity jerk signals in X axial
- time_BodyGyroJerk.std.Y - the standard deviation of the time domain Body angular velocity jerk signals in Y axial 
- time_BodyGyroJerk.std.Z - the standard deviation of the time domain Body angular velocity jerk signals in Z axial

- time_BodyAccMag.mean - the mean of the time domain Body Acceleration Magnitude
- time_BodyAccMag.std - the standard deviation of the time domain Body Acceleration Magnitude

- time_GravityAccMag.mean - the mean of the time domain Gravity Acceleration Magnitude
- time_GravityAccMag.std - the standard deviation of the time domain Gravity Acceleration Magnitude

- time_BodyAccJerkMag.mean - the mean of the time domain Body Acceleration Jerk Magnitude
- time_BodyAccJerkMag.std - the standard deviation of the time domain Body Acceleration Jerk Magnitude

- time_BodyGyroMag.mean - the mean of the time domain Body angular velocity magnitude
- time_BodyGyroMag.std - the standard deviation of the time domain Body angular velocity magnitude

- time_BodyGyroJerkMag.mean - the mean of the time domain Body angular velocity jerk magnitude
- time_BodyGyroJerkMag.std - the standard deviation of the time domain Body angular velocity jerk magnitude

- frequency_BodyAcc.mean.X - the mean of the frequency domain body acceleration signals in X axial
- frequency_BodyAcc.mean.Y - the mean of the frequency domain body acceleration signals in Y axial
- frequency_BodyAcc.mean.Z - the mean of the frequency domain body acceleration signals in Z axial

- frequency_BodyAcc.std.X - the standard deviation of the frequency domain body acceleration signals in X axial
- frequency_BodyAcc.std.Y - the standard deviation of the frequency domain body acceleration signals in Y axial
- frequency_BodyAcc.std.Z - the standard deviation of the frequency domain body acceleration signals in Z axial

- frequency_BodyAcc.meanFreq.X - the mean Frequency of the frequency domain body acceleration signals in X axial 
- frequency_BodyAcc.meanFreq.Y - the mean Frequency of the frequency domain body acceleration signals in Y axial 
- frequency_BodyAcc.meanFreq.Z - the mean Frequency of the frequency domain body acceleration signals in Z axial 

- frequency_BodyAccJerk.mean.X - the mean of the frequency domain body Acceleation Jerk signals in X axial
- frequency_BodyAccJerk.mean.Y - the mean of the frequency domain body Acceleation Jerk signals in Y axial
- frequency_BodyAccJerk.mean.Z - the mean of the frequency domain body Acceleation Jerk signals in Z axial

- frequency_BodyAccJerk.std.X - the standard deviation of the frequency domain body acceleation Jerk signals in X axial
- frequency_BodyAccJerk.std.Y- the standard deviation of the frequency domain body acceleation Jerk signals in Y axial
- frequency_BodyAccJerk.std.Z - the standard deviation of the frequency domain body acceleation Jerk signals in Z axial

- frequency_BodyAccJerk.meanFreq.X - the mean frequency of the frequency domain body acceleation Jerk signals in X axial
- frequency_BodyAccJerk.meanFreq.Y - the mean frequency of the frequency domain body acceleation Jerk signals in Y axial
- frequency_BodyAccJerk.meanFreq.Z - the mean frequency of the frequency domain body acceleation Jerk signals in Z axial

- frequency_BodyGyro.mean.X - the mean of the frequency domain Body angular velocity in X axial
- frequency_BodyGyro.mean.Y - the mean of the frequency domain Body angular velocity in Y axial
- frequency_BodyGyro.mean.Z - the mean of the frequency domain Body angular velocity in Z axial

- frequency_BodyGyro.std.X - the standard deviation of the frequency domain Body angular velocity in X axial
- frequency_BodyGyro.std.Y - the standard deviation of the frequency domain Body angular velocity in Y axial
- frequency_BodyGyro.std.Z - the standard deviation of the frequency domain Body angular velocity in Z axial

- frequency_BodyGyro.meanFreq.X - the mean frequency of the frequency domain Body angular velocity in X axial
- frequency_BodyGyro.meanFreq.Y - the mean frequency of the frequency domain Body angular velocity in Y axial
- frequency_BodyGyro.meanFreq.Z - the mean frequency of the frequency domain Body angular velocity in Z axial

- frequency_BodyAccMag.mean - the mean of the frequency domain body acceleration magnitude
- frequency_BodyAccMag.std - the standard deviation of the frequency domain body acceleration magnitude
- frequency_BodyAccMag.meanFreq - the mean frequency of the frequency domain body acceleration magnitude

- frequency_BodyAccJerkMag.mean - the mean of the frequency domain body acceleration jerk magnitude
- frequency_BodyAccJerkMag.std - the standard deviation of the frequency domain body acceleration jerk magnitude
- frequency_BodyAccJerkMag.meanFreq- the mean frequency of the frequency domain body acceleration jerk magnitude

- frequency_BodyGyroMag.mean - the mean of the frequency domain Body angular velocity magnitude
- frequency_BodyGyroMag.std - the standard deviation of the frequency domain Body angular velocity magnitude
- frequency_BodyGyroMag.meanFreq - the mean frequency of the frequency domain Body angular velocity magnitude

- frequency_BodyGyroJerkMag.mean - the mean of the frequency domain Body angular velocity jerk magnitude
- frequency_BodyGyroJerkMag.std - the standard deviation of the frequency domain Body angular velocity jerk magnitude
- frequency_BodyGyroJerkMag.meanFreq - the mean frequency of the frequency domain Body angular velocity jerk magnitude

