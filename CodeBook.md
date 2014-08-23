## Code Book for Summarized Tidy Dataset produced from 'Accelerometer and Gyroscope dataset collected using Samsumg Smartphones' 

### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

### Tidy Dataset

For tidy dataset, the average of each variable is calculated for each activity and each subject.

The complete list of variables of tidy dataset is given below:

| Variable           | Description
|--------------------|-----------------------
| subject            | People who participated in the experiment, labelled from 1 to 30.
| activity           | Six activities performed by the subject while measurements were taken. Activities are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
| tBodyAcc-mean()-X  | Average of variable by subject and activity
| tBodyAcc-mean()-Y  | Average of variable by subject and activity
| tBodyAcc-mean()-Z  | Average of variable by subject and activity
| tBodyAcc-std()-X   | Average of variable by subject and activity
| tBodyAcc-std()-Y   | Average of variable by subject and activity
| tBodyAcc-std()-Z   | Average of variable by subject and activity
| tGravityAcc-mean()-X  | Average of variable by subject and activity
| tGravityAcc-mean()-Y  | Average of variable by subject and activity
| tGravityAcc-mean()-Z  | Average of variable by subject and activity
| tGravityAcc-std()-X   | Average of variable by subject and activity
| tGravityAcc-std()-Y   | Average of variable by subject and activity
| tGravityAcc-std()-Z   | Average of variable by subject and activity
| tBodyAccJerk-mean()-X | Average of variable by subject and activity
| tBodyAccJerk-mean()-Y | Average of variable by subject and activity
| tBodyAccJerk-mean()-Z | Average of variable by subject and activity
| tBodyAccJerk-std()-X  | Average of variable by subject and activity
| tBodyAccJerk-std()-Y  | Average of variable by subject and activity
| tBodyAccJerk-std()-Z  | Average of variable by subject and activity
| tBodyGyro-mean()-X    | Average of variable by subject and activity
| tBodyGyro-mean()-Y    | Average of variable by subject and activity
| tBodyGyro-mean()-Z    | Average of variable by subject and activity
| tBodyGyro-std()-X     | Average of variable by subject and activity
| tBodyGyro-std()-Y     | Average of variable by subject and activity
| tBodyGyro-std()-Z     | Average of variable by subject and activity
| tBodyGyroJerk-mean()-X  | Average of variable by subject and activity
| tBodyGyroJerk-mean()-Y  | Average of variable by subject and activity
| tBodyGyroJerk-mean()-Z  | Average of variable by subject and activity
| tBodyGyroJerk-std()-X   | Average of variable by subject and activity
| tBodyGyroJerk-std()-Y   | Average of variable by subject and activity
| tBodyGyroJerk-std()-Z   | Average of variable by subject and activity
| tBodyAccMag-mean()      | Average of variable by subject and activity
| tBodyAccMag-std()       | Average of variable by subject and activity
| tGravityAccMag-mean()   | Average of variable by subject and activity
| tGravityAccMag-std()    | Average of variable by subject and activity
| tBodyAccJerkMag-mean()  | Average of variable by subject and activity
| tBodyAccJerkMag-std()   | Average of variable by subject and activity
| tBodyGyroMag-mean()     | Average of variable by subject and activity
| tBodyGyroMag-std()      | Average of variable by subject and activity
| tBodyGyroJerkMag-mean() | Average of variable by subject and activity
| tBodyGyroJerkMag-std()  | Average of variable by subject and activity
| fBodyAcc-mean()-X       | Average of variable by subject and activity
| fBodyAcc-mean()-Y       | Average of variable by subject and activity
| fBodyAcc-mean()-Z       | Average of variable by subject and activity
| fBodyAcc-std()-X        | Average of variable by subject and activity
| fBodyAcc-std()-Y        | Average of variable by subject and activity
| fBodyAcc-std()-Z        | Average of variable by subject and activity
| fBodyAcc-meanFreq()-X   | Average of variable by subject and activity
| fBodyAcc-meanFreq()-Y   | Average of variable by subject and activity
| fBodyAcc-meanFreq()-Z   | Average of variable by subject and activity
| fBodyAccJerk-mean()-X   | Average of variable by subject and activity
| fBodyAccJerk-mean()-Y   | Average of variable by subject and activity
| fBodyAccJerk-mean()-Z   | Average of variable by subject and activity
| fBodyAccJerk-std()-X    | Average of variable by subject and activity
| fBodyAccJerk-std()-Y    | Average of variable by subject and activity
| fBodyAccJerk-std()-Z    | Average of variable by subject and activity
| fBodyAccJerk-meanFreq()-X  | Average of variable by subject and activity
| fBodyAccJerk-meanFreq()-Y  | Average of variable by subject and activity
| fBodyAccJerk-meanFreq()-Z  | Average of variable by subject and activity
| fBodyGyro-mean()-X         | Average of variable by subject and activity
| fBodyGyro-mean()-Y         | Average of variable by subject and activity
| fBodyGyro-mean()-Z         | Average of variable by subject and activity
| fBodyGyro-std()-X          | Average of variable by subject and activity
| fBodyGyro-std()-Y          | Average of variable by subject and activity
| fBodyGyro-std()-Z          | Average of variable by subject and activity
| fBodyGyro-meanFreq()-X     | Average of variable by subject and activity
| fBodyGyro-meanFreq()-Y     | Average of variable by subject and activity
| fBodyGyro-meanFreq()-Z     | Average of variable by subject and activity
| fBodyAccMag-mean()         | Average of variable by subject and activity
| fBodyAccMag-std()          | Average of variable by subject and activity
| fBodyAccMag-meanFreq()     | Average of variable by subject and activity
| fBodyBodyAccJerkMag-mean() | Average of variable by subject and activity
| fBodyBodyAccJerkMag-std()  | Average of variable by subject and activity
| fBodyBodyAccJerkMag-meanFreq()   | Average of variable by subject and activity
| fBodyBodyGyroMag-mean()    | Average of variable by subject and activity
| fBodyBodyGyroMag-std()     | Average of variable by subject and activity
| fBodyBodyGyroMag-meanFreq() | Average of variable by subject and activity
| fBodyBodyGyroJerkMag-mean() | Average of variable by subject and activity
| fBodyBodyGyroJerkMag-std()  | Average of variable by subject and activity
| fBodyBodyGyroJerkMag-meanFreq()  | Average of variable by subject and activity
