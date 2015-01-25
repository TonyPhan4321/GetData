# Set working directory 
setwd("C:\\z_DATAJHU2015\\GettingCleaningData201501\\Project")

# Merges the training and the test sets to create one data set

TrainTestData <- rbind(read.table("UCI HAR Dataset/train/X_train.txt"), 
		       read.table("UCI HAR Dataset/test/X_test.txt"))
TrainTestLabels <- rbind(read.table("UCI HAR Dataset/train/y_train.txt"), 
			 read.table("UCI HAR Dataset/test/y_test.txt"))
Subject <- rbind(read.table("UCI HAR Dataset/train/subject_train.txt"), 
		 read.table("UCI HAR Dataset/test/subject_test.txt"))

# Extracts only the measurements on the mean and standard deviation for each measurement. 

features <- read.table("UCI HAR Dataset/features.txt")
GoodFeaturesIndex <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
TrainTestData <- TrainTestData[, GoodFeaturesIndex]
names(TrainTestData) <- features[GoodFeaturesIndex, 2]
names(TrainTestData) <- gsub("\\(|\\)", "", names(TrainTestData))
names(TrainTestData) <- tolower(names(TrainTestData))

# Uses descriptive activity names to name the activities in the data set

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities[, 2] <- gsub("_", "", tolower(as.character(activities[, 2])))
TrainTestLabels[,1] <- activities[TrainTestLabels[,1], 2]
names(TrainTestLabels) <- "activity"

# Appropriately labels the data set with descriptive variable names

names(Subject) <- "subject"
cleaned <- cbind(Subject, TrainTestLabels, TrainTestData)
write.table(cleaned, "MergedData.txt")

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

UniqueSubjects <- unique(Subject)[,1]
NumSubjects <- length(unique(Subject)[,1])
NumActivities <- length(activities[,1])
NumCols <- dim(cleaned)[2]
Tidy <- cleaned[1:(NumSubjects*NumActivities), ]

row <- 1
for (s in 1:NumSubjects) {
	for (a in 1:NumActivities) {
		Tidy[row, 1] <- UniqueSubjects[s]
		Tidy[row, 2] <- activities[a, 2]
		tmp <- cleaned[cleaned$subject==s & cleaned$activity==activities[a, 2], ]
		Tidy[row, 3:NumCols] <- colMeans(tmp[, 3:NumCols])
		row <- row+1
	}
}
write.table(Tidy, "TidyAverages.txt")