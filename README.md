# CleaningData
Cleaning Data Course
Run_Analysis.R R-script on Human Activity Recognition Using Smartphones Dataset
### Version 1.0
The run_analysis.R script reads data from the "Human Activity Recognition Using Smartphones Dataset Version 1.0" and produces a new - tidy - dataset which may be used for further analysis.
The data in the "Human Activity Recognition Using Smartphones Dataset Version 1.0" have been taken from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz data were captured. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data. 
### The original dataset included the following data files:
*	'features.txt': List of all features.
*	__activity_labels.txt:__ List of class labels and their activity name.
*	__train/X_train.txt:__ Training set.
*	__train/y_train.txt':__ Training labels.
*	__train/subject_train.txt':__ ID's of subjects in the training data
*	__test/X_test.txt':__ Test set.
*	__test/y_test.txt':__ Test labels.
*	__test/subject_test.txt':__ ID's of subjects in the training data

  __The original data is available at:__
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### A brief description of the script:
The run_analysis.R script merges data from a number of .txt files and produces a tidy data set which may be used for further analysis.
*	The script reads all required data and meta-data files using pattern matching by dataset name to merge like datasets for “test” and “training” data.  Required column names are added after every file is read and merge completed.
*	Data from Human subjects Id numbers, activity and features are merged into a single Human Dataset
*	The Human dataset is used to create an extracted dataset which only includes measurements for mean and standard deviation.
*	Column names are cleaned up to make them more readable
*	Activity numeric values are turned into readable activity names
*	“tidyData.txt” dataset is create with the average for each activity and subject
A description of the "tidyData.txt" file may be found in the "CodeBook.md" file. 

### Acknowledgements:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

### License:
Use of the Run_Analysis.R script is free for all users.
Use of the resulting dataset "tidyData.txt" in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the author for its use or misuse. Any commercial use is prohibited.
