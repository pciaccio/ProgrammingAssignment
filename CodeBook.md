#Code Book for run_analysis.R

##Information About the Raw Variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
Features are normalized and bounded within [-1,1]
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
The variables that are in the summary data shown in the output from run_analysis are:

######SubjectId
* Contains the Subject ID of the 30 volunteers in the experiment
* Values should be between 1 and 30

######Activity
* One of six activities performed by the subject
* activities include:
    * WALKING 
    * WALKING UPSTAIRS
    * WALKING DOWNSTAIRS
    * SITTING
    * STANDING
    * LAYING

######TimeBodyAccelerometerXMean
* Calculated as mean(tBodyAcc-mean()-X) for each Subject ID and Activity

######TimeBodyAccelerometerYMean
* Calculated as mean(tBodyAcc-mean()-Y) for each Subject ID and Activity

######TimeBodyAccelerometerZMean
* Calculated as mean(tBodyAcc-mean()-Z) for each Subject ID and Activity

######TimeGravityAccelerometerXMean
* Calculated as mean(tGravityAcc-mean()-X) for each Subject ID and Activity

######TimeGravityAccelerometerYMean
* Calculated as mean(tGravityAcc-mean()-Y) for each Subject ID and Activity

######TimeGravityAccelerometerZMean
* Calculated as mean(tGravityAcc-mean()-Z) for each Subject ID and Activity

######TimeBodyAccelerometerJerkXMean
* Calculated as mean(tBodyAccJerk-mean()-X) for each Subject ID and Activity

######TimeBodyAccelerometerJerkYMean
* Calculated as mean(tBodyAccJerk-mean()-Y) for each Subject ID and Activity

######TimeBodyAccelerometerJerkZMean
* Calculated as mean(tBodyAccJerk-mean()-Z) for each Subject ID and Activity

######TimeBodyGyroscopeXMean
* Calculated as mean(tBodyGyro-mean()-X) for each Subject ID and Activity

######TimeBodyGyroscopeYMean
* Calculated as mean(tBodyGyro-mean()-Y) for each Subject ID and Activity

######TimeBodyGyroscopeZMean
* Calculated as mean(tBodyGyro-mean()-Z) for each Subject ID and Activity

######TimeBodyGyroscopeJerkXMean
* Calculated as mean(tBodyGyroJerk-mean()-X) for each Subject ID and Activity

######TimeBodyGyroscopeJerkYMean
* Calculated as mean(tBodyGyroJerk-mean()-Y) for each Subject ID and Activity

######TimeBodyGyroscopeJerkZMean
* Calculated as mean(tBodyGyroJerk-mean()-Z) for each Subject ID and Activity

######TimeBodyAccelerometerMagnitudeMean
* Calculated as mean(tBodyAccMag-mean()) for each Subject ID and Activity

######TimeGravityAccelerometerMagnitudeMean
* Calculated as mean(tGravityAccMag-mean()) for each Subject ID and Activity

######TimeBodyAccelerometerJerkMagnitudeMean
* Calculated as mean(tBodyAccJerkMag-mean()) for each Subject ID and Activity

######TimeBodyGyroscopeMagnitudeMean
* Calculated as mean(tBodyGyroMag-mean()) for each Subject ID and Activity

######TimeBodyGyroscopeJerkMagnitudeMean
* Calculated as mean(tBodyGyroJerkMag-mean()) for each Subject ID and Activity

######FrequencyBodyAccelerometerXMean
* Calculated as mean(fBodyAcc-mean()-X) for each Subject ID and Activity

######FrequencyBodyAccelerometerYMean
* Calculated as mean(fBodyAcc-mean()-Y) for each Subject ID and Activity

######FrequencyBodyAccelerometerZMean
* Calculated as mean(fBodyAcc-mean()-Z) for each Subject ID and Activity

######FrequencyBodyAccelerometerJerkXMean
* Calculated as mean(fBodyAccJerk-mean()-X) for each Subject ID and Activity

######FrequencyBodyAccelerometerJerkYMean
* Calculated as mean(fBodyAccJerk-mean()-Y) for each Subject ID and Activity

######FrequencyBodyAccelerometerJerkZMean
* Calculated as mean(fBodyAccJerk-mean()-Z) for each Subject ID and Activity

######FrequencyBodyGyroscopeXMean
* Calculated as mean(fBodyGyro-mean()-X) for each Subject ID and Activity

######FrequencyBodyGyroscopeYMean
* Calculated as mean(fBodyGyro-mean()-Y) for each Subject ID and Activity

######FrequencyBodyGyroscopeZMean
* Calculated as mean(fBodyGyro-mean()-Z) for each Subject ID and Activity

######FrequencyBodyAccelerometerMagnitudeMean
* Calculated as mean(fBodyAccMag-mean()) for each Subject ID and Activity

######FrequencyBodyAccelerometerJerkMagnitudeMean
* Calculated as mean(fBodyBodyAccJerkMag-mean()) for each Subject ID and Activity

######FrequencyBodyGyroscopeMagnitudeMean
* Calculated as mean(fBodyBodyGyroMag-mean()) for each Subject ID and Activity

######FrequencyBodyGyroscopeJerkMagnitudeMean
* Calculated as mean(fBodyBodyGyroJerkMag-mean()) for each Subject ID and Activity

######TimeBodyAccelerometerXStD
* Calculated as mean(tBodyAcc-std()-X) for each Subject ID and Activity

######TimeBodyAccelerometerYStD
* Calculated as mean(tBodyAcc-std()-Y) for each Subject ID and Activity

######TimeBodyAccelerometerZStD
* Calculated as mean(tBodyAcc-std()-Z) for each Subject ID and Activity

######TimeGravityAccelerometerXStD
* Calculated as mean(tGravityAcc-std()-X) for each Subject ID and Activity

######TimeGravityAccelerometerYStD
* Calculated as mean(tGravityAcc-std()-Y) for each Subject ID and Activity

######TimeGravityAccelerometerZStD
* Calculated as mean(tGravityAcc-std()-Z) for each Subject ID and Activity

######TimeBodyAccelerometerJerkXStD
* Calculated as mean(tBodyAccJerk-std()-X) for each Subject ID and Activity

######TimeBodyAccelerometerJerkYStD
* Calculated as mean(tBodyAccJerk-std()-Y) for each Subject ID and Activity

######TimeBodyAccelerometerJerkZStD
* Calculated as mean(tBodyAccJerk-std()-Z) for each Subject ID and Activity

######TimeBodyGyroscopeXStD
* Calculated as mean(tBodyGyro-std()-X) for each Subject ID and Activity

######TimeBodyGyroscopeYStD
* Calculated as mean(tBodyGyro-std()-Y) for each Subject ID and Activity

######TimeBodyGyroscopeZStD
* Calculated as mean(tBodyGyro-std()-Z) for each Subject ID and Activity

######TimeBodyGyroscopeJerkXStD
* Calculated as mean(tBodyGyroJerk-std()-X) for each Subject ID and Activity

######TimeBodyGyroscopeJerkYStD
* Calculated as mean(tBodyGyroJerk-std()-Y) for each Subject ID and Activity

######TimeBodyGyroscopeJerkZStD
* Calculated as mean(tBodyGyroJerk-std()-Z) for each Subject ID and Activity

######TimeBodyAccelerometerMagnitudeStD
* Calculated as mean(tBodyAccMag-std()) for each Subject ID and Activity

######TimeGravityAccelerometerMagnitudeStD
* Calculated as mean(tGravityAccMag-std()) for each Subject ID and Activity

######TimeBodyAccelerometerJerkMagnitudeStD
* Calculated as mean(tBodyAccJerkMag-std()) for each Subject ID and Activity

######TimeBodyGyroscopeMagnitudeStD
* Calculated as mean(tBodyGyroMag-std()) for each Subject ID and Activity

######TimeBodyGyroscopeJerkMagnitudeStD
* Calculated as mean(tBodyGyroJerkMag-std()) for each Subject ID and Activity

######FrequencyBodyAccelerometerXStD
* Calculated as mean(fBodyAcc-std()-X) for each Subject ID and Activity

######FrequencyBodyAccelerometerYStD
* Calculated as mean(fBodyAcc-std()-Y) for each Subject ID and Activity

######FrequencyBodyAccelerometerZStD
* Calculated as mean(fBodyAcc-std()-Z) for each Subject ID and Activity

######FrequencyBodyAccelerometerJerkXStD
* Calculated as mean(fBodyAccJerk-std()-X) for each Subject ID and Activity

######FrequencyBodyAccelerometerJerkYStD
* Calculated as mean(fBodyAccJerk-std()-Y) for each Subject ID and Activity

######FrequencyBodyAccelerometerJerkZStD
* Calculated as mean(fBodyAccJerk-std()-Z) for each Subject ID and Activity

######FrequencyBodyGyroscopeXStD
* Calculated as mean(fBodyGyro-std()-X) for each Subject ID and Activity

######FrequencyBodyGyroscopeYStD
* Calculated as mean(fBodyGyro-std()-Y) for each Subject ID and Activity

######FrequencyBodyGyroscopeZStD
* Calculated as mean(fBodyGyro-std()-Z) for each Subject ID and Activity

######FrequencyBodyAccelerometerMagnitudeStD
* Calculated as mean(fBodyAccMag-std()) for each Subject ID and Activity

######FrequencyBodyAccelerometerJerkMagnitudeStD
* Calculated as mean(fBodyBodyAccJerkMag-std()) for each Subject ID and Activity

######FrequencyBodyGyroscopeMagnitudeStD
* Calculated as mean(fBodyBodyGyroMag-std()) for each Subject ID and Activity

######FrequencyBodyGyroscopeJerkMagnitudeStD
* Calculated as mean(fBodyBodyGyroJerkMag-std()) for each Subject ID and Activity
