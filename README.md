# ProgrammingAssignment
##Programming Assignment for Getting and Cleaning Data

The function run_analysis loads the dplyr library then reads in data from the various text files listed below and merges them together.  The function selects the variables that are measurements of the mean and standard deviation for each feature.  The mean is then taken for each measurement based on the Subject ID and Activity performedby the subject.  It returns a data frame that consists of the summary based on the Subject ID and Activity.

The following text files should be in your working directory before running run_analysis.R:
  * features.txt : list of all features
  * activity_labels.txt : links the class labels with their activity name
  * subject_train.txt : Each row identifies the subject who performed the activity for each window sample in the train dataset
  * x_train.txt : training set
  * y_train.txt : training labels
  * subject_test.txt : Each row identifies the subject who performed the activity for each window sample in the train dataset
  * x_test.txt : test set
  * y_test.txt : test labels


##Raw Data
The raw data comes from Human Activity Recognition Using Smartphones Dataset:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

####License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
