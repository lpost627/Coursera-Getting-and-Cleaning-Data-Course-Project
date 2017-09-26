# Coursera-Getting-and-Cleaning-Data-Course-Project

This is my submission for the Coursera Getting and Cleaning Data Course Project. This repository contains the following files:
1. README.md which explains the analysis files 
2. CodeBook.md that describes the variables, the data, and any transformations or work performed to clean up the data
3. run_analysis.R which is the script used to create the data set
4. tidy_dataset.txt which is the tidy data set

The R script run_analysis.R does the following:
1. Downloads and unzips the dataset if it is not already in the working directory
2. Reads the training, test and features data
3. Merges the training and test sets to create one data set
4. Extracts only the measurements on the mean and standard deviation for each measurement
5. Uses descriptive activity names to name the activities in the data set
6. Appropriately labels the data set with descriptive variable names
7. Creates a second, independent tidy data set with the average of each variable for each activity and each subject
The end result is shown in the file tidy_dataset.txt.
