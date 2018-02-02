## Project Objectives ##
> You should create one R script called run_analysis.R that does the following:
 
> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive variable names.
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Using run_analysis.R #
---- 
**IMPORTANT: Remember to set the working directory as the directory wi the run_analysis.R file **
## Preliminary Works ##

### Loading required packages ###
    library(data.table)
    library(dplyr)

### Downlaod file from web to the working directory ###
a .zup file of name Dataset.zip will be downloaded to the working directory 

	destpath <- getwd()
	url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	zipname <- "Dataset.zip"
	if (!file.exists(destpath)) {
      	dir.create(destpath)}
	download.file(url, file.path(destpath, zipname))

### Unzip the downloaded file .zip ###

	temp <- tempfile()
	unzip(zipfile = "Dataset.zip", exdir = temp)
	filepath <- file.path(temp, "UCI HAR Dataset")
	list.files(filepath, recursive = TRUE)

### Load data from file into R ###
set the correct file location to read in extracted unzipped files

	setwd("C://Users/User/Desktop/MOOC/Getting and Cleaning Data/Project/UCI HAR Dataset/")

load: activity labels, only use the second column of activity names

	activityLabels <- read.table("activity_labels.txt", header = FALSE)[,2]

load: feature names, only read in the second column of feature names

	featureNames <- read.table("features.txt", header = FALSE)[,2]

load: training set data, with descriptive column names

	subjectTrain <- read.table("train/subject_train.txt", header = FALSE, col.names = "subjectID")
	setTrain <- read.table("train/X_train.txt", header = FALSE, col.names = featureNames)
	labTrain <- read.table("train/y_train.txt", header = FALSE, col.names = "activityID")

load: test set data, with descriptive column names

	subjectTest <- read.table("test/subject_test.txt", header = FALSE, col.names = "subjectID")
	setTest <- read.table("test/X_test.txt", header = FALSE, col.names = featureNames)
	labTest <- read.table("test/y_test.txt", header = FALSE, col.names = "activityID")

## 1. Merging training and test sets ##
Merging training sets and test sets together for each of the 3 data frames, and combine the 3 into a bigger date frame. Some of the older data frames are **removed** to clear memory spaces for future manipulation. Activity names are **added in** to their corresponding IDs.

	subjectall <- rbind(subjectTrain, subjectTest)
	setall <- rbind(setTrain, setTest)
	label <- rbind(labTrain, labTest)
	activityall <- mutate(label, activityName = activityLabels[label[,1]])
	all <- cbind(subjectall, activityall, setall)
	rm("subjectTrain", "subjectTest", "setTrain", "setTest", "labTrain", "labTest", "activityLabels", "subjectall", "setall", "activityall", "label")

## 2. Extracts only the measurements on the mean and standard deviation for each measurement ##
Extracting by searching for words **mean()** or **std()**.

	extractIndex <- grep("-mean\\(\\)|-std\\(\\)", featureNames)
	allext <- cbind(all[,1:3], all[,(extractIndex+3)])
	rm("all", "featureNames")

## 3. Uses descriptive activity names to name the activities ##
Remove activity ID column due to repetition. 

	all <- select(allext, -activityID)
	rm("allext")

## 4. Appropriately labels the data set with descriptive variable names ##
Change column names of features to make it more reader-friendly. 

	names(all) <- gsub("^t", "time.", names(all))
	names(all) <- gsub("^f", "frequency.", names(all))
	names(all) <- gsub("Acc", "Accelerometer", names(all))
	names(all) <- gsub("Gyro", "Gyroscope", names(all))
	names(all) <- gsub("Mag", "Magnitude", names(all))
	names(all) <- gsub("BodyBody", "Body", names(all))
	names(all) <- gsub("\\.\\.\\.", "\\.", names(all))
	names(all) <- gsub("\\.\\.$", "", names(all))

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject ##
A .csv file and a .txt file are created for the resulting data. Both files are the same, but I find .csv more readable for users without any S programming tools. Yet, .txt file might be easier for data transmission and uploading.

	value <- all[, 3:dim(all)[2]]
	result <- aggregate(value,list(all$subjectID, all$activityName), mean)
	names(result)[1] <- "SubjectID"
	names(result)[2] <- "ActivityName"
	rm("all", "value")
	write.csv(result, file = "tidy_data.csv")
	write.table(result, file = "tidy_data.txt")

## Data Abstract ##
This Human Activity Recognition database consists of data recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
- Multivariate, Time-Series
- Number of Instances: **10299**
- Number of Attributes: **561**
- Date Donated: 2012-12-10
- Missing Values: N/A 
- Number of Web Hits: 591928 

> ### Sources ###
> Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain

## Date Set Information ##
### Data Collection ##
The data set was collected though experiments with a group of 30 volunteers of **age 19-48 years**, each performing six activities wearing Samsung Galaxy S II on the waist. 3-axial linear acceleration and 3-axial angular velocity was collected at a constant **rate of 50Hz** with manual video labels. 
The **6** Activities including:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING, STANDING
- LAYING

### Preliminary Data Processing ###
Obtained data set was randomly partitioned into two sets by percentage:
- **70%** for generating the training data
- **30%** as the test data
> The sensor signals from accelerometer and gyroscope were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute Information ##

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A **561-feature** vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.