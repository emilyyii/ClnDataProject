# load required packages
library(data.table)
library(dplyr)

# downlaod file from web to wd
#destpath <- getwd()
#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#zipname <- "Dataset.zip"
#if (!file.exists(destpath)) {
#      dir.create(destpath)}
#download.file(url, file.path(destpath, zipname))

# unzip the downloaded file .zip

#temp <- tempfile()
#unzip(zipfile = "Dataset.zip", exdir = temp)
#filepath <- file.path(temp, "UCI HAR Dataset")
#list.files(filepath, recursive = TRUE)

# reading in files
setwd("C://Users/User/Desktop/MOOC/Getting and Cleaning Data/Project/UCI HAR Dataset/")
# load: activity labels
activityLabels <- read.table("activity_labels.txt", header = FALSE)[,2]
# load: feature names
featureNames <- read.table("features.txt", header = FALSE)[,2]
# load: training set
subjectTrain <- read.table("train/subject_train.txt", header = FALSE, col.names = "subjectID")
setTrain <- read.table("train/X_train.txt", header = FALSE, col.names = featureNames)
labTrain <- read.table("train/y_train.txt", header = FALSE, col.names = "activityID")

# load: test set
subjectTest <- read.table("test/subject_test.txt", header = FALSE, col.names = "subjectID")
setTest <- read.table("test/X_test.txt", header = FALSE, col.names = featureNames)
labTest <- read.table("test/y_test.txt", header = FALSE, col.names = "activityID")

# 1. merging datasets
subjectall <- rbind(subjectTrain, subjectTest)
setall <- rbind(setTrain, setTest)
label <- rbind(labTrain, labTest)
activityall <- mutate(label, activityName = activityLabels[label[,1]])
all <- cbind(subjectall, activityall, setall)
rm("subjectTrain", "subjectTest", "setTrain", "setTest", "labTrain", "labTest", 
   "activityLabels", "subjectall", "setall", "activityall", "label")

# 2. Extracts mean and standard deviation measurements
extractIndex <- grep("-mean\\(\\)|-std\\(\\)", featureNames)
allext <- cbind(all[,1:3], all[,(extractIndex+3)])
rm("all", "featureNames")

# 3. Use descriptive activity names 
all <- select(allext, -activityID)
rm("allext")

# 4. use descriptive variable names
names(all) <- gsub("^t", "time.", names(all))
names(all) <- gsub("^f", "frequency.", names(all))
names(all) <- gsub("Acc", "Accelerometer", names(all))
names(all) <- gsub("Gyro", "Gyroscope", names(all))
names(all) <- gsub("Mag", "Magnitude", names(all))
names(all) <- gsub("BodyBody", "Body", names(all))
names(all) <- gsub("\\.\\.\\.", "\\.", names(all))
names(all) <- gsub("\\.\\.$", "", names(all))

# 5. creates a second data set with average of each variable for each activity 
# and each subject
value <- all[, 3:dim(all)[2]]
result <- aggregate(value,list(all$subjectID, all$activityName), mean)
names(result)[1] <- "SubjectID"
names(result)[2] <- "ActivityName"
rm("all", "value")
write.csv(result, file = "tidy_data.csv")
write.table(result, file = "tidy_data.txt")