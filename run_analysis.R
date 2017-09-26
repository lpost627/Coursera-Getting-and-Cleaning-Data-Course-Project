library(data.table)
library(dplyr)

# Download zip file and unzip the dataset
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"
if(!file.exists(zipFile)) {
  download.file(fileUrl, zipFile, mode = "wb")
}
if(!file.exists("UCI HAR Dataset")){
  unzip(zipFile)
}

# Read training data
trainingSubjects <- read.table(file.path("UCI HAR Dataset", "train", "subject_train.txt"))
trainingValues <- read.table(file.path("UCI HAR Dataset", "train", "X_train.txt"))
trainingActivity <- read.table(file.path("UCI HAR Dataset", "train", "y_train.txt"))

# Read test data
testSubjects <- read.table(file.path("UCI HAR Dataset", "test", "subject_test.txt"))
testValues <- read.table(file.path("UCI HAR Dataset", "test", "X_test.txt"))
testActivity <- read.table(file.path("UCI HAR Dataset", "test", "y_test.txt"))

# Read features
features <- read.table(file.path("UCI HAR Dataset", "features.txt"), as.is = TRUE)

# Read activity labels
activities <- read.table(file.path("UCI HAR Dataset", "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")

# Merge the training and data sets into one data set and concatenate individual data tables
humanActivity <- rbind(cbind(trainingSubjects, trainingValues, trainingActivity), cbind(testSubjects, testValues, testActivity))
rm(trainingSubjects, trainingValues, trainingActivity, testSubjects, testValues, testActivity)
colnames(humanActivity) <- c("subject", features[,2], "activity")

# Extract only the measurements on the mean and standard deviation for each measurement
columnsToKeep <- grepl("subject|activity|mean|std", colnames(humanActivity))
humanActivity <- humanActivity[, columnsToKeep]

# Use descriptive activity names to name the activities in the data set
# Replace activity values with named factor levels
humanActivity$activity <- factor(humanActivity$activity, levels = activities[,1], labels = activities[,2])

# Appropriately label the data set with descriptive variable names
humanActivityCols <- colnames(humanActivity)
humanActivityCols <- gsub("[\\(\\)-]","",humanActivityCols)
humanActivityCols <- gsub("^f", "frequencyDomain", humanActivityCols)
humanActivityCols <- gsub("^t", "timeDomain", humanActivityCols)
humanActivityCols <- gsub("Acc", "Accelerometer", humanActivityCols)
humanActivityCols <- gsub("Gyro", "Gyroscope", humanActivityCols)
humanActivityCols <- gsub("Mag", "Magnitude", humanActivityCols)
humanActivityCols <- gsub("Freq", "Frequency", humanActivityCols)
humanActivityCols <- gsub("mean", "Mean", humanActivityCols)
humanActivityCols <- gsub("std", "StandardDeviation", humanActivityCols)
humanActivityCols <- gsub("BodyBody", "Body", humanActivityCols)
colnames(humanActivity) <- humanActivityCols

# Create a second, independent tidy data set with the average of each variable for each activity and each subject
humanActivityMeans <- humanActivity %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))

write.table(humanActivityMeans, "tidy_dataset.txt", row.names = FALSE, quote = FALSE)

