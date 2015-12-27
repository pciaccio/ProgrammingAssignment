#Code Book for run_analysis.R

##Information About the Raw Variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

##Information About the Summary Choices

The program run_analysis extracts only the measurements on the mean and standard deviation for each measurement above.
The variables that are in the output from run_analysis are:
* SubjectId
*>Contains the Subject ID of the 30 volunteers in the experiment
** Values should be between 1 and 30
* Activity
* TimeBodyAccelerometerXMean=mean(tBodyAcc.mean...X)
* TimeBodyAccelerometerYMean=mean(tBodyAcc.mean...Y)
* TimeBodyAccelerometerZMean=mean(tBodyAcc.mean...Z)
* TimeGravityAccelerometerXMean=mean(tGravityAcc.mean...X)
* TimeGravityAccelerometerYMean=mean(tGravityAcc.mean...Y)
* TimeGravityAccelerometerZMean=mean(tGravityAcc.mean...Z)
* TimeBodyAccelerometerJerkXMean=mean(tBodyAccJerk.mean...X)
* TimeBodyAccelerometerJerkYMean=mean(tBodyAccJerk.mean...Y)
* TimeBodyAccelerometerJerkZMean=mean(tBodyAccJerk.mean...Z)
* TimeBodyGyroscopeXMean=mean(tBodyGyro.mean...X)
* TimeBodyGyroscopeYMean=mean(tBodyGyro.mean...Y)
* TimeBodyGyroscopeZMean=mean(tBodyGyro.mean...Z)
* TimeBodyGyroscopeJerkXMean=mean(tBodyGyroJerk.mean...X)
* TimeBodyGyroscopeJerkYMean=mean(tBodyGyroJerk.mean...Y)
* TimeBodyGyroscopeJerkZMean=mean(tBodyGyroJerk.mean...Z)
* TimeBodyAccelerometerMagnitudeMean=mean(tBodyAccMag.mean..)
* TimeGravityAccelerometerMagnitudeMean=mean(tGravityAccMag.mean..)
* TimeBodyAccelerometerJerkMagnitudeMean=mean(tBodyAccJerkMag.mean..)
* TimeBodyGyroscopeMagnitudeMean=mean(tBodyGyroMag.mean..)
* TimeBodyGyroscopeJerkMagnitudeMean=mean(tBodyGyroJerkMag.mean..)
* FrequencyBodyAccelerometerXMean=mean(fBodyAcc.mean...X)
* FrequencyBodyAccelerometerYMean=mean(fBodyAcc.mean...Y)
* FrequencyBodyAccelerometerZMean=mean(fBodyAcc.mean...Z)
* FrequencyBodyAccelerometerJerkXMean=mean(fBodyAccJerk.mean...X)
* FrequencyBodyAccelerometerJerkYMean=mean(fBodyAccJerk.mean...Y)
* FrequencyBodyAccelerometerJerkZMean=mean(fBodyAccJerk.mean...Z)
* FrequencyBodyGyroscopeXMean=mean(fBodyGyro.mean...X)
* FrequencyBodyGyroscopeYMean=mean(fBodyGyro.mean...Y)
* FrequencyBodyGyroscopeZMean=mean(fBodyGyro.mean...Z)
* FrequencyBodyAccelerometerMagnitudeMean=mean(fBodyAccMag.mean..)
* FrequencyBodyAccelerometerJerkMagnitudeMean=mean(fBodyBodyAccJerkMag.mean..)
* FrequencyBodyGyroscopeMagnitudeMean=mean(fBodyBodyGyroMag.mean..)
* FrequencyBodyGyroscopeJerkMagnitudeMean=mean(fBodyBodyGyroJerkMag.mean..)
* TimeBodyAccelerometerXStD=mean(tBodyAcc.std...X)
* TimeBodyAccelerometerYStD=mean(tBodyAcc.std...Y)
* TimeBodyAccelerometerZStD=mean(tBodyAcc.std...Z)
* TimeGravityAccelerometerXStD=mean(tGravityAcc.std...X)
* TimeGravityAccelerometerYStD=mean(tGravityAcc.std...Y)
* TimeGravityAccelerometerZStD=mean(tGravityAcc.std...Z)
* TimeBodyAccelerometerJerkXStD=mean(tBodyAccJerk.std...X)
* TimeBodyAccelerometerJerkYStD=mean(tBodyAccJerk.std...Y)
* TimeBodyAccelerometerJerkZStD=mean(tBodyAccJerk.std...Z)
* TimeBodyGyroscopeXStD=mean(tBodyGyro.std...X)
* TimeBodyGyroscopeYStD=mean(tBodyGyro.std...Y)
* TimeBodyGyroscopeZStD=mean(tBodyGyro.std...Z)
* TimeBodyGyroscopeJerkXStD=mean(tBodyGyroJerk.std...X)
* TimeBodyGyroscopeJerkYStD=mean(tBodyGyroJerk.std...Y)
* TimeBodyGyroscopeJerkZStD=mean(tBodyGyroJerk.std...Z)
* TimeBodyAccelerometerMagnitudeStD=mean(tBodyAccMag.std..)
* TimeGravityAccelerometerMagnitudeStD=mean(tGravityAccMag.std..)
* TimeBodyAccelerometerJerkMagnitudeStD=mean(tBodyAccJerkMag.std..)
* TimeBodyGyroscopeMagnitudeStD=mean(tBodyGyroMag.std..)
* TimeBodyGyroscopeJerkMagnitudeStD=mean(tBodyGyroJerkMag.std..)
* FrequencyBodyAccelerometerXStD=mean(fBodyAcc.std...X)
* FrequencyBodyAccelerometerYStD=mean(fBodyAcc.std...Y)
* FrequencyBodyAccelerometerZStD=mean(fBodyAcc.std...Z)
* FrequencyBodyAccelerometerJerkXStD=mean(fBodyAccJerk.std...X)
* FrequencyBodyAccelerometerJerkYStD=mean(fBodyAccJerk.std...Y)
* FrequencyBodyAccelerometerJerkZStD=mean(fBodyAccJerk.std...Z)
* FrequencyBodyGyroscopeXStD=mean(fBodyGyro.std...X)
* FrequencyBodyGyroscopeYStD=mean(fBodyGyro.std...Y)
* FrequencyBodyGyroscopeZStD=mean(fBodyGyro.std...Z)
* FrequencyBodyAccelerometerMagnitudeStD=mean(fBodyAccMag.std..)
* FrequencyBodyAccelerometerJerkMagnitudeStD=mean(fBodyBodyAccJerkMag.std..)
* FrequencyBodyGyroscopeMagnitudeStD=mean(fBodyBodyGyroMag.std..)
* FrequencyBodyGyroscopeJerkMagnitudeStD=mean(fBodyBodyGyroJerkMag.std..)
