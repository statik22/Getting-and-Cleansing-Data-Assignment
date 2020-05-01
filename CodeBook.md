---------------------------------------------------------
The Project
---------------------------------------------------------
This activity was carried out for the final assignment of the Coursera Course: Getting and Cleansing Data

---------------------------------------------------------
The Data Used
---------------------------------------------------------
The dataset used in this project is available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The details about the data set and the methodology used for collection is available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

-----------------------------------------------------------
Data Transformation Methodology:
-----------------------------------------------------------

The original dataset provides :
  Two identifier files:
    'features.txt': List of all features
    'activity_labels.txt': Links the class labels with their activity name

  Two sets of data, test and train, each containing three files:
    Training set with name 'x_train' and 'x_test'
    Training labels of activities with name 'y_train' and 'y_test'
    Subject Identifiers for the observations with name 'subject_train' and 'subject_test'
    
Step 1: 
Create one dataset each for train and test sets by combining the 3 files available for each of them

Step 2:
Maintaing/processing column names for identification of variables

Step 3:
Combining the train and test dataset created in Step 1 using the column names in Step 2

Step 4:
Selecting the required columns from dataset in Step 3 i.e. standard deviation and mean values

Step 5: 
Aggregating the Step 4 file to get average of each variable for each activity and each subject.

Step 6:
Writing the file output using Step 5 dataset

---------------------------------------------------------
The variables in the output
---------------------------------------------------------

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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

Notes: 
Features are normalized and bounded within [-1,1].

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation  

Grouping Data:

subjectcode: Identifiers of the subjects (1 to 30)  
activityname: Names of the activities performed by each subject while taking the readings.  
  WALKING  
  WALKING_UPSTAIRS  
  WALKING_DOWNSTAIRS  
  SITTING  
  STANDING  
  LAYING  

-----------------------------------------------------------
Column names (variables sequence) in the final output file: 
-----------------------------------------------------------
subjectcode  
activityname  
tbodyacc-std()-x  
tbodyacc-std()-y  
tbodyacc-std()-z  
tgravityacc-std()-x  
tgravityacc-std()-y  
tgravityacc-std()-z  
tbodyaccjerk-std()-x  
tbodyaccjerk-std()-y  
tbodyaccjerk-std()-z  
tbodygyro-std()-x  
tbodygyro-std()-y  
tbodygyro-std()-z  
tbodygyrojerk-std()-x  
tbodygyrojerk-std()-y  
tbodygyrojerk-std()-z  
tbodyaccmag-std()  
tgravityaccmag-std()  
tbodyaccjerkmag-std()  
tbodygyromag-std()  
tbodygyrojerkmag-std()  
fbodyacc-std()-x   
fbodyacc-std()-y  
fbodyacc-std()-z  
fbodyaccjerk-std()-x  
fbodyaccjerk-std()-y  
fbodyaccjerk-std()-z  
fbodygyro-std()-x  
fbodygyro-std()-y  
fbodygyro-std()-z  
fbodyaccmag-std()  
fbodybodyaccjerkmag-std()  
fbodybodygyromag-std()  
fbodybodygyrojerkmag-std()  
tbodyacc-mean()-x  
tbodyacc-mean()-y  
tbodyacc-mean()-z  
tgravityacc-mean()-x  
tgravityacc-mean()-y  
tgravityacc-mean()-z  
tbodyaccjerk-mean()-x  
tbodyaccjerk-mean()-y  
tbodyaccjerk-mean()-z  
tbodygyro-mean()-x  
tbodygyro-mean()-y  
tbodygyro-mean()-z  
tbodygyrojerk-mean()-x  
tbodygyrojerk-mean()-y  
tbodygyrojerk-mean()-z  
tbodyaccmag-mean()  
tgravityaccmag-mean()  
tbodyaccjerkmag-mean()  
tbodygyromag-mean()  
tbodygyrojerkmag-mean()  
fbodyacc-mean()-x  
fbodyacc-mean()-y  
fbodyacc-mean()-z  
fbodyaccjerk-mean()-x  
fbodyaccjerk-mean()-y  
fbodyaccjerk-mean()-z  
fbodygyro-mean()-x  
fbodygyro-mean()-y  
fbodygyro-mean()-z  
fbodyaccmag-mean()  
fbodybodyaccjerkmag-mean()  
fbodybodygyromag-mean()  
fbodybodygyrojerkmag-mean()  
