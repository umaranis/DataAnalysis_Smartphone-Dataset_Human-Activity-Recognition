# Cleaning and Analysis of Accelerometer and Gyroscope dataset collected using Samsumg Smartphone 

The project is part of **'Getting and Cleaning Data'** course offered by John Hopkins University through [coursera](https://class.coursera.org/getdata-006).

## Dataset information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

More information about dataset is available at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Dataset can be downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Cleaning and Analysis performed on the dataset
Following cleaning and analysis is performed on the dataset in the below order.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How to use script file (run_analysis) to repeat the above 5 steps
* Download the samsung smartphone dataset from the link provided above
* Extract the dataset in the working directory
* run_analysis.R contains 3 functions:
  * Call **run_analysis()** function to get the summarized tidy dataset with the average of each variable for each activity and each subject. Dataset is returned after performing all 5 processing steps explained in the above section.
  * Call **write_to_file()** function to write the dataset to file. It takes the dataset as a parameter.
  * Call **get_detailed_dataset()** function to get the detailed dataset generated after performing first 4 steps described in 'Cleaning and Analysis performed on the dataset' section.