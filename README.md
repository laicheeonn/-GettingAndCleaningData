# -GettingAndCleaningData

This repo contains my script and result for Coursera "Getting and Cleaning Data" course project. The purpose of this project is to prepare a set of tidy data that can be used for later analysis.

The data provided are processed data from a study about handphone accelerometers, with readings collected from 30 subjects during 6 different activities. The details of the study can be found in the following link.  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data is divided into two sets, according to the group of the subjects, training and testing. The data contains variables of the feature vector for several pattern, such as mean, standard deviation, maximum, minimum, correlation and etc. The label of the columns (varibles) is stored in seperate data files, same go to the identifier for each row (subject and activities).

For this project, i,
* combined both test and train data into one table.
* added the corresponding subject and activity labels to each row of table.
* replaced activity label with more descriptive names.
* added the corresponding names to each column of the table.
* reduced the data by selecting only the mean and standard devition columns, and taking the average of each variable for each activity and each subject.
* saved the resulting averages in a data file with proper labelling of the columns and rows.
* prepared a cookbook for the tidy data.

Only the following data files were used in the process.
* X_test, (the estimate variables for testing group).
* X_train, (the estimate variables for training group).
* y_test, (the activity label of each row in x_test file).
* y_train, (the activity label of each row in x_train file).
* subject_test, (the subject label of each row in x_test file).
* subject_train, (the subject label of each row in x_train file).
* activity_label, (description of each activities label).
* features, (the name of columns in the X_test and X_train file).
