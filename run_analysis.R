run_analysis<-function(){

  ### loads library that will be needed for the function
  library(dplyr)

  ### setting up the variable names for each data frame and the activity labels
  features<-data.frame(read.table("features.txt"))
  activity<-data.frame(read.table("activity_labels.txt"))
  activity$V2<-sub("_","",activity$V2)
  
  
  ### setting up the complete train data frame
  x_train<-data.frame(read.table("X_train.txt"))
  y_train<-data.frame(read.table("y_train.txt"))
  s_train<-data.frame(read.table("subject_train.txt"))
  names(x_train)<-features$V2
  val<-make.names(names=names(x_train),unique=TRUE,allow_=TRUE)
  names(x_train)<-val
  x_train<-select(x_train,contains(".mean.."),contains(".std..")) ### selects only the mean and stadard deviation for each measurement
  names(s_train)<-"SubjectId"
  names(y_train)<-"act"
  train<-cbind.data.frame(s_train,y_train,x_train)
  
  ### setting up the complete test data frame
  x_test<-data.frame(read.table("X_test.txt"))
  y_test<-data.frame(read.table("y_test.txt"))
  s_test<-data.frame(read.table("subject_test.txt"))
  names(x_test)<-features$V2
  val<-make.names(names=names(x_test),unique=TRUE,allow_=TRUE)
  names(x_test)<-val
  x_test<-select(x_test,contains(".mean.."),contains(".std..")) ### selects only the mean and stadard deviation for each measurement
  names(s_test)<-"SubjectId"
  names(y_test)<-"act"
  test<-cbind.data.frame(s_test,y_test,x_test)
  
  
  ### the data frame merged from train and test data
  total<-rbind.data.frame(train,test)
  total<-tbl_df(total) 
  
  ### creates a column that has the activity names then deletes the column for activity number
  total<-merge(total,activity,by.x="act",by.y="V1",all=FALSE)
  total<-select(total,-act)
  total<-rename(total,Activity=V2)
  
  ### groups data by subject id and activity
  total<-group_by(total,SubjectId,Activity) 
  
  ### summarizes the data frame by subject id and activity and calculates the means of the other variables
  summary_df<-summarize(total,TimeBodyAccelerometerXMean=mean(tBodyAcc.mean...X),
              TimeBodyAccelerometerYMean=mean(tBodyAcc.mean...Y),
              TimeBodyAccelerometerZMean=mean(tBodyAcc.mean...Z),
              TimeGravityAccelerometerXMean=mean(tGravityAcc.mean...X),
              TimeGravityAccelerometerYMean=mean(tGravityAcc.mean...Y),
              TimeGravityAccelerometerZMean=mean(tGravityAcc.mean...Z),
              TimeBodyAccelerometerJerkXMean=mean(tBodyAccJerk.mean...X),
              TimeBodyAccelerometerJerkYMean=mean(tBodyAccJerk.mean...Y),
              TimeBodyAccelerometerJerkZMean=mean(tBodyAccJerk.mean...Z),
              TimeBodyGyroscopeXMean=mean(tBodyGyro.mean...X),
              TimeBodyGyroscopeYMean=mean(tBodyGyro.mean...Y),
              TimeBodyGyroscopeZMean=mean(tBodyGyro.mean...Z),
              TimeBodyGyroscopeJerkXMean=mean(tBodyGyroJerk.mean...X),
              TimeBodyGyroscopeJerkYMean=mean(tBodyGyroJerk.mean...Y),
              TimeBodyGyroscopeJerkZMean=mean(tBodyGyroJerk.mean...Z),
              TimeBodyAccelerometerMagnitudeMean=mean(tBodyAccMag.mean..),
              TimeGravityAccelerometerMagnitudeMean=mean(tGravityAccMag.mean..),
              TimeBodyAccelerometerJerkMagnitudeMean=mean(tBodyAccJerkMag.mean..),
              TimeBodyGyroscopeMagnitudeMean=mean(tBodyGyroMag.mean..),
              TimeBodyGyroscopeJerkMagnitudeMean=mean(tBodyGyroJerkMag.mean..),
              FrequencyBodyAccelerometerXMean=mean(fBodyAcc.mean...X),
              FrequencyBodyAccelerometerYMean=mean(fBodyAcc.mean...Y),
              FrequencyBodyAccelerometerZMean=mean(fBodyAcc.mean...Z),
              FrequencyBodyAccelerometerJerkXMean=mean(fBodyAccJerk.mean...X),
              FrequencyBodyAccelerometerJerkYMean=mean(fBodyAccJerk.mean...Y),
              FrequencyBodyAccelerometerJerkZMean=mean(fBodyAccJerk.mean...Z),
              FrequencyBodyGyroscopeXMean=mean(fBodyGyro.mean...X),
              FrequencyBodyGyroscopeYMean=mean(fBodyGyro.mean...Y),
              FrequencyBodyGyroscopeZMean=mean(fBodyGyro.mean...Z),
              FrequencyBodyAccelerometerMagnitudeMean=mean(fBodyAccMag.mean..),
              FrequencyBodyAccelerometerJerkMagnitudeMean=mean(fBodyBodyAccJerkMag.mean..),
              FrequencyBodyGyroscopeMagnitudeMean=mean(fBodyBodyGyroMag.mean..),
              FrequencyBodyGyroscopeJerkMagnitudeMean=mean(fBodyBodyGyroJerkMag.mean..),
              TimeBodyAccelerometerXStD=mean(tBodyAcc.std...X),
              TimeBodyAccelerometerYStD=mean(tBodyAcc.std...Y),
              TimeBodyAccelerometerZStD=mean(tBodyAcc.std...Z),
              TimeGravityAccelerometerXStD=mean(tGravityAcc.std...X),
              TimeGravityAccelerometerYStD=mean(tGravityAcc.std...Y),
              TimeGravityAccelerometerZStD=mean(tGravityAcc.std...Z),
              TimeBodyAccelerometerJerkXStD=mean(tBodyAccJerk.std...X),
              TimeBodyAccelerometerJerkYStD=mean(tBodyAccJerk.std...Y),
              TimeBodyAccelerometerJerkZStD=mean(tBodyAccJerk.std...Z),
              TimeBodyGyroscopeXStD=mean(tBodyGyro.std...X),
              TimeBodyGyroscopeYStD=mean(tBodyGyro.std...Y),
              TimeBodyGyroscopeZStD=mean(tBodyGyro.std...Z),
              TimeBodyGyroscopeJerkXStD=mean(tBodyGyroJerk.std...X),
              TimeBodyGyroscopeJerkYStD=mean(tBodyGyroJerk.std...Y),
              TimeBodyGyroscopeJerkZStD=mean(tBodyGyroJerk.std...Z),
              TimeBodyAccelerometerMagnitudeStD=mean(tBodyAccMag.std..),
              TimeGravityAccelerometerMagnitudeStD=mean(tGravityAccMag.std..),
              TimeBodyAccelerometerJerkMagnitudeStD=mean(tBodyAccJerkMag.std..),
              TimeBodyGyroscopeMagnitudeStD=mean(tBodyGyroMag.std..),
              TimeBodyGyroscopeJerkMagnitudeStD=mean(tBodyGyroJerkMag.std..),
              FrequencyBodyAccelerometerXStD=mean(fBodyAcc.std...X),
              FrequencyBodyAccelerometerYStD=mean(fBodyAcc.std...Y),
              FrequencyBodyAccelerometerZStD=mean(fBodyAcc.std...Z),
              FrequencyBodyAccelerometerJerkXStD=mean(fBodyAccJerk.std...X),
              FrequencyBodyAccelerometerJerkYStD=mean(fBodyAccJerk.std...Y),
              FrequencyBodyAccelerometerJerkZStD=mean(fBodyAccJerk.std...Z),
              FrequencyBodyGyroscopeXStD=mean(fBodyGyro.std...X),
              FrequencyBodyGyroscopeYStD=mean(fBodyGyro.std...Y),
              FrequencyBodyGyroscopeZStD=mean(fBodyGyro.std...Z),
              FrequencyBodyAccelerometerMagnitudeStD=mean(fBodyAccMag.std..),
              FrequencyBodyAccelerometerJerkMagnitudeStD=mean(fBodyBodyAccJerkMag.std..),
              FrequencyBodyGyroscopeMagnitudeStD=mean(fBodyBodyGyroMag.std..),
              FrequencyBodyGyroscopeJerkMagnitudeStD=mean(fBodyBodyGyroJerkMag.std..)
              )
  
  ### returns the summarized data frame
  return(summary_df)
}
