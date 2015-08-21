##This is the cookbook, describing tidydata, the output data file for this project.

* Column 1, "Group", character strings, indicates weather the subject is from testing group ("test") or training group ("train").
* Column 2, "Subject, integer, identifier of the subject, the reading was taken from. 
* Column 3, "Activity" character strings, indicates the movement at the time of reading was taken, ie "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" and "LAYING".
* Column 4 to 69, numeric, represents the average of each variable for each activity and each subject. Each features in the original data have been normalized and bounded within [-1,1].

Explainations of the varibles column 4 to 69,
* mean() denotes Mean value.
* std() denotes Standard deviation.
* 't' denotes time.
* 'f' indicates frequency domain signals. 
* XYZ' denotes 3-axial signals in the X, Y and Z directions.

The processing done during the study to derive the varibles column 4 to 69, as mentioned in the feature_info file come together with original data set,
* The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals  were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
* The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
* The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
* The magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
* A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 

