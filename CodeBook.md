#Data
The data used for this project was for a group 30 volunteers who performed various activities while wearing Samsung Galaxy SII smartphone on their waist. The activities include walking, walking upstairs, walking downstairs, sitting, standing, and laying. Using the embedded accelerometer and gyroscope in the Samsung Galaxy SII, data on 3-axial linear acceleration and 3-axial angular velocity were collected. The indviduals were video recorded during the experiment to label the activities manually. The dataset was randomly divided into two sets;(1)train- 70% of the volunteers were assigned to the train group (2)test- 30% of the volunteers were assigned to the test group.
The final dataset had 561 variables related to triaxial acceleration,estimated body acceleration, and triaxial angular velocity. The activity label and the indentifier of the subject were included in separate files

#Transformation
The following series of steps were taken to transform both the train and test raw data:
* The data that included information on the activity labels for each record in the main dataset was joined to the dataset that included activity names. At the end of this step, each record had both activity label and activity name.
* The main data set that included 561 variables was joined to the two datasets that included the (1)identifier of the subject, and (2)activity name (from previous step) for each record in the database. 
* All the variables were assigned descriptive variable names

The train and test datasets after undergoing the cleanup described in the above sections were joined to each other yielding one comprehensive dataset. From the comprehensive datasets, all the variables that were not related to mean or standard deviation of a measurement were deleted. The average of each variable in the tidy data was taken for each activity and each subject. The final dataset had mean of variables by activity and subject.

#Description of R script
The raw data was unzipped outside of R and saved in the following directory:
C:/Projects/coursera/GettingandCleaningData/project/UCI HAR Dataset

Following R functions were used in the code:
##read.table
The read.table function was used to read all the raw data in text format. 
##join
The dataset containing activity label for each record was joined to the dataset containing activity names using the join function
##cbind
The three different datasets that included (1) 561 variables from the smartphone,(2) Subject identifier, and (3) activity label were joined using cbind. 
##rbind
The train and test data were joined using rbind
##grepl
The variables names that include mean and std were selected using grepl function
##melt
The dataset was reshaped using melt function. Subject and activity name were used as identifiers
##dcast
The mean of variables by subject and activity were computed using dcast function

#Variables
The variable included in the final dataset are the following:
* subject
* actname
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAcc-meanFreq()-X
* fBodyAcc-meanFreq()-Y
* fBodyAcc-meanFreq()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyAccJerk-meanFreq()-X
* fBodyAccJerk-meanFreq()-Y
* fBodyAccJerk-meanFreq()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyGyro-meanFreq()-X
* fBodyGyro-meanFreq()-Y
* fBodyGyro-meanFreq()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyAccMag-meanFreq()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroMag-meanFreq()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()
* fBodyBodyGyroJerkMag-meanFreq()