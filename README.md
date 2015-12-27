# ProgrammingAssignment
##Programming Assignment for Getting and Cleaning Data

The function run_analysis reads in data from the various text files listed above and merges them together.  It returns a data frame that consists of a summary of the data based on the Subject ID and Activity performed. The data is the summary of the data is the mean calculated for the Mean and Standard Deviation measurement variables.

##Raw Data
The raw data comes from Human Activity Recognition Using Smartphones Dataset:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The following text files should be in your working directory before running run_analysis.R:
  * features.txt : list of all features
  * activity_labels.txt : links the class labels with their activity name
  * subject_train.txt : Each row identifies the subject who performed the activity for each window sample in the train dataset
  * x_train.txt : training set
  * y_train.txt : training labels
  * subject_test.txt : Each row identifies the subject who performed the activity for each window sample in the train dataset
  * x_test.txt : test set
  * y_test.txt : test labels
  
####License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
