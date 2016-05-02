#
# Program Name: run_analysis.R
#
# Program Dataset download:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
#1. Merges the training and the test sets to create one data set.
#2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.	Uses descriptive activity names to name the activities in the data set
#4.	Appropriately labels the data set with descriptive variable names. 
#5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#

  #Directory path of unzipped files
  FilesDirPath <- "c:/coursera/DataCleansing/Project/"
 
  ###################################################
  # Get subject files, merge, add column names
  ###################################################
  subjectFiles = list(list.files(path=FilesDirPath[1], pattern="^subject",recursive=TRUE, full.names=TRUE))
  subject <- do.call("rbind", lapply(subjectFiles[[1]], read.table, header=FALSE, sep=""))
  colnames(subject) <- c( 'SubjectId')
  
  ###################################################
  # Get feature MD files, merge, add column names
  ###################################################
  featureLabelFiles = list(list.files(path=FilesDirPath[1], pattern="^features.txt",recursive=TRUE, full.names=TRUE))
  featureLabels <- do.call("rbind", lapply(featureLabelFiles[[1]], read.table, header=FALSE, sep=""))
  colnames(featureLabels) <- c( 'FeatureId', 'FeatureName')
  
  ###################################################
  # Get activity MD, merge, add column names
  ###################################################
  activityLabelFiles = list(list.files(path=FilesDirPath[1], pattern="^activity_",recursive=TRUE, full.names=TRUE))
  activityLabels <- do.call("rbind", lapply(activityLabelFiles[[1]], read.table, 
                            stringsAsFactors=FALSE,header=FALSE, sep=""))
  colnames(activityLabels) <- c( 'ActivityId', 'ActivityName')
  
  ###################################################
  # Get feature data files, merge, add column names
  ###################################################
  dataFiles = list(list.files(path=FilesDirPath[1], pattern="^X_",recursive=TRUE, full.names=TRUE))
  featureData <- do.call("rbind", lapply(dataFiles[[1]], read.table, header=FALSE, sep=""))
  # Using t() function to transpose featureLabels data frame.
  # Rownames become variable (column) names using t() function. 
  colnames(featureData) <- t(featureLabels[2])
  
  ###################################################
  # Get activity data files, merge, add column names
  ###################################################
  actDataFiles = list(list.files(path=FilesDirPath[1], pattern="^y_",recursive=TRUE, full.names=TRUE))
  activityData <- do.call("rbind", lapply(actDataFiles[[1]], read.table, header=FALSE, sep=""))
  colnames(activityData) <- c('ActivityId')
  
  ###################################################
  # Merge training and test sets into one data set
  ###################################################
  humanData <- cbind(subject, activityData, featureData)
  
  ###################################################
  # Extracts only the measurements on the mean
  # and standard deviation for each measurement.
  ###################################################
  # Get columns with mean and STD data
  meanSTDColumns <- grep(".*Mean.*|.*Std.*", names(humanData), ignore.case=TRUE)
  # Add activity and subject column names to extract column names
  extractColumns <- c(1, 2, meanSTDColumns)
  # extract the mean and STD data from extracted column names
  meanStdData <- humanData[, extractColumns]
  
  ###################################################
  # Uses descriptive variable and activity activity
  # names in the extracted mean/STD dataset.
  #
  #
  # old name -> new name variable names
  # --------------------
  # Acc -> Accelerometer
  # Gyro -> Gyroscope
  # BodyBody -> Body
  # Mag -> Magnitude
  # f -> Frequency
  # t -> Time
  # -mean() -> Mean
  # -std -> Standard
  # -freq() -> Frequency
  # angle -> Angle
  # gravity -> Gravity
  ###################################################
  oldActNames <- c("Acc", "Gyro", "BodyBody", "Mag", "^f", "^t", "-mean()",
                   "-std", "-freq()", "angle", "gravity")
  newActNames <- c("Accelerometer", "Gyroscope", "Body", "Magnitude", "Frequency", "Time", "Mean",
                   "STD", "Frequency", "Angle", "Gravity")
  
  # Loop through and change variable names
  for(idx in 1:length(oldActNames))
    {
       names(meanStdData) <- gsub(oldActNames[idx], newActNames[idx], names(meanStdData))
       #cat(oldActNames[idx], "->",  newActNames[idx], "\n")
    }
  
  ###################################################
  # Change numberic activity numeric value to the
  # descriptive name in the activity dataset
  ###################################################
  meanStdData$ActivityId <- as.character(meanStdData$ActivityId)
  for (i in 1:nrow(activityLabels))
    {
       meanStdData$ActivityId[meanStdData$ActivityId == i] <-
          as.character(activityLabels[i, 2])
    }
  
  
  ###################################################
  # Ouput cleaned-up and extracted data into a
  # single dataset called meanStdData
  ###################################################
  # Ouput cleaned-up data
  meanStdData
  
  
  ###################################################
  # Create tidyData as a dataset with the average
  # for each activity and subject
  # Write tidyData dataset out to project directory
  # path.  Drop row.names column
  ###################################################
  tidyData <- aggregate(. ~SubjectId + ActivityId, meanStdData, mean)
  tidyData <- tidyData[order(tidyData$SubjectId, tidyData$ActivityId),]
  outFile <- paste0(FilesDirPath,"tidyData.txt")
  write.table(tidyData, outFile, row.names=FALSE)
  
  
  
  