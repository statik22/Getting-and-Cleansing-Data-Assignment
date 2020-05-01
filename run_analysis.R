##Submission of Final Assignment : Getting and Cleanising Data- Coursera 
##The below script works if the UCI HAR Dataset is available in the working directory
##Final result: A file with name "transformed_dataset.txt" will be created in the working directory 

##Package Installation: Activate below line if "dplyr" package is not installed
##install.packages("dplyr")

##Library loaded
library(dplyr)

##All files read into the memory
##Files with feature names and activity labels
features <- read.table("UCI HAR Dataset/features.txt")
labels <- read.table("UCI HAR Dataset/activity_labels.txt")

##Test files
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt") 

##Train files
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

##Make.Unique function used to avoid any duplicate names in features 
features1 <- make.unique(as.character(features$V2))

##column names set for test set and train set files 
colnames(x_test) <- tolower(features1)
colnames(x_train) <- tolower(features1)

##column names fixed for labels data frame containing activity code and names
colnames(labels) <- c("activitycode", "activityname")

##Column names fixed for other files in test and train sets 
colnames(y_test) <- c("activitycode")
colnames(y_train) <- c("activitycode")

colnames(subject_test) <- c("subjectcode")
colnames(subject_train) <- c("subjectcode")

##binding the test and train files to make one dataset each for test and train
c_test <- cbind(subject_test,y_test, x_test)
c_train <- cbind(subject_train,y_train, x_train)

##binding the above created test and train datasets to one singular dataset 
c_full <- rbind(c_test,c_train)


##merging the singular dataset with activity labels data frame to achieve point 3 in the assignment
## 3. Uses descriptive activity names to name the activities in the data set
mergeddata <- merge(labels, c_full , by.x = "activitycode", by.y = "activitycode", sort = FALSE)

##finally selecting the required data columns for us
##2. Extracts only the measurements on the mean and standard deviation for each measurement
c_final <- select(mergeddata, subjectcode, activityname, contains("std()"), contains("mean()"))

##from the final dataset, creating the output dataset requested with average values grouped on activity and subject
c_point5 <- aggregate(c_final[,3:68], list(c_final$subjectcode, c_final$activityname),mean)

##renaming coluns 1 and 2 correctly as they take up names "Group.1" and "Group.2" after aggregate function 
dataset_transformed <- rename(c_point5, subjectcode = Group.1, activityname = Group.2)

##writing out the final text file in the working directory
write.table(dataset_transformed, "transformed_dataset.txt")