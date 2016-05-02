# CleaningData - TIDY DATA DICTIONARY

### Feature Selection:
The features selected for this data frame are a subset of data in the "Human Activity Recognition Using Smartphones
Dataset Version 1.0", which have been taken from experiments carried out with a group of 30 volunteers within an age
bracket of 19-48 years. 

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing
a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear
acceleration and 3-axial angular velocity at a constant rate of 50Hz data were captured, of accelerometer and gyroscope
3-axial raw signals tAcc-XYZ and tGyro-XYZ.

The subset of features is related to mean and Standard Deviation measurements for the data collected.  Original variable names were changed to make them human readable.
The tidayData.txt file is a space separated dataset which can be read using the following R-programming function:
read.table(tidyData.txt, header = FALSE, sep = "")

### Feature Vector variables:
* __Mean:__  Average mean values of multiple measurements of the original variables. Type: Real number
* __STD:__  Average Standard deviation of multiple measurements of the original variables. Type: Real number
* __ActivityId:__ Identifier, identifying the activity of each subject Type: Integer Values: 1 : 6
* __ActivityName:__ Descriptive name of each subject's activity Type: Factor Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* __SubjectId:__ Identifier, identifying each subject Type: Integer Values: 1 : 30

### Tidy Dataset variables and type
|Variable                     |Type|
|-----------------------------|----|
|SubjectId	|int|
|ActivityId	|chr|
|TimeBodyAccelerometerMean()-X|	num|
|TimeBodyAccelerometerMean()-Y|	num|
|TimeBodyAccelerometerMean()-Z| num|
|TimeGravityAccelerometerMean()-X|	num|
|TimeGravityAccelerometerMean()-Y|	num|
|TimeGravityAccelerometerMean()-Z|	num|
|TimeGravityAccelerometerSTD()-X|	num|
|TimeGravityAccelerometerSTD()-Y|	num|
|TimeGravityAccelerometerSTD()-Z|	num|
|TimeBodyAccelerometerJerkMean()-X|	num|
|TimeBodyAccelerometerJerkMean()-Y|	num|
|TimeBodyAccelerometerJerkMean()-Z|	num|
|TimeBodyAccelerometerJerkSTD()-X|	num|
|TimeBodyAccelerometerJerkSTD()-Y|	num|
|TimeBodyAccelerometerJerkSTD()-Z|	num|
|TimeBodyGyroscopeMean()-X|	num|
|TimeBodyGyroscopeMean()-Y|	num|
|TimeBodyGyroscopeMean()-Z|	num|
|TimeBodyGyroscopeSTD()-X|	num|
|TimeBodyGyroscopeSTD()-Y|	num|
|TimeBodyGyroscopeSTD()-Z|	num|
|TimeBodyGyroscopeJerkMean()-X|	num|
|TimeBodyGyroscopeJerkMean()-Y|	num|
|TimeBodyGyroscopeJerkMean()-Z|	num|
|TimeBodyGyroscopeJerkSTD()-X|	num|
|TimeBodyGyroscopeJerkSTD()-Y|	num|
|TimeBodyGyroscopeJerkSTD()-Z|	num|
|TimeBodyAccelerometerMagnitudeMean()|	num|
|TimeBodyAccelerometerMagnitudeSTD()|	num|
|TimeGravityAccelerometerMagnitudeMean()|	num|
|TimeGravityAccelerometerMagnitudeSTD()|	num|
|TimeBodyAccelerometerJerkMagnitudeMean()|	num|
|TimeBodyAccelerometerJerkMagnitudeSTD()|	num|
|TimeBodyGyroscopeMagnitudeMean()|	num|
|TimeBodyGyroscopeMagnitudeSTD()|	num|
|TimeBodyGyroscopeJerkMagnitudeMean()|	num|
|TimeBodyGyroscopeJerkMagnitudeSTD()|	num|
|FrequencyBodyAccelerometerMean()-X|	num|
|FrequencyBodyAccelerometerMean()-Y|	num|
|FrequencyBodyAccelerometerMean()-Z|	num|
|FrequencyBodyAccelerometerSTD()-X|	num|
|FrequencyBodyAccelerometerSTD()-Y|	num|
|FrequencyBodyAccelerometerSTD()-Z|	num|
|FrequencyBodyAccelerometerMeanFreq()-X|	num|
|FrequencyBodyAccelerometerMeanFreq()-Y|	num|
|FrequencyBodyAccelerometerMeanFreq()-Z|	num|
|FrequencyBodyAccelerometerJerkMean()-X|	num|
|FrequencyBodyAccelerometerJerkMean()-Y|	num|
|FrequencyBodyAccelerometerJerkMean()-Z|	num|
|FrequencyBodyAccelerometerJerkSTD()-X|	num|
|FrequencyBodyAccelerometerJerkSTD()-Y|	num|
|FrequencyBodyAccelerometerJerkSTD()-Z|	num|
|FrequencyBodyAccelerometerJerkMeanFreq()-X|	num|
|FrequencyBodyAccelerometerJerkMeanFreq()-Y|	num|
|FrequencyBodyAccelerometerJerkMeanFreq()-Z|	num|
|FrequencyBodyGyroscopeMean()-X|	num|
|FrequencyBodyGyroscopeMean()-Y|	num|
|FrequencyBodyGyroscopeMean()-Z|	num|
|FrequencyBodyGyroscopeSTD()-X|	num|
|FrequencyBodyGyroscopeSTD()-Y|	num|
|FrequencyBodyGyroscopeSTD()-Z|	num|
|FrequencyBodyGyroscopeMeanFreq()-X|	num|
|FrequencyBodyGyroscopeMeanFreq()-Y|	num|
|FrequencyBodyGyroscopeMeanFreq()-Z|	num|
|FrequencyBodyAccelerometerMagnitudeMean()|	num|
|FrequencyBodyAccelerometerMagnitudeSTD()|	num|
|FrequencyBodyAccelerometerMagnitudeMeanFreq()|	num|
|FrequencyBodyAccelerometerJerkMagnitudeMean()|	num|
|FrequencyBodyAccelerometerJerkMagnitudeSTD()|	num|
|FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()|	num|
|FrequencyBodyGyroscopeMagnitudeMean()|	num|
|FrequencyBodyGyroscopeMagnitudeSTD()|	num|
|FrequencyBodyGyroscopeMagnitudeMeanFreq()|	num|
|FrequencyBodyGyroscopeJerkMagnitudeMean()|	num|
|FrequencyBodyGyroscopeJerkMagnitudeSTD()|	num|
|FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()|	num|
|Angle(tBodyAccelerometerMean,Gravity)|	num|
|Angle(tBodyAccelerometerJerkMean),GravityMean)|	num|
|Angle(tBodyGyroscopeMean,GravityMean)|	num|
|Angle(tBodyGyroscopeJerkMean,GravityMean)|	num|
|Angle(X,GravityMean)|	num|
|Angle(Y,GravityMean)|	num|
|Angle(Z,GravityMean)|	num|
