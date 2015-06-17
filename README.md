
## Introduction

Analyze data collected from the accelerometers from the Samsung Galaxy S smartphone.  The data was collected from 30 
individuals wearing the Samsung Galaxy S smartphone at their waist.  The individuals preform six activities
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

## Analysis

Merge the training and the test sets to create one data set.
Extract only the measurements on the mean and standard deviation for each measurement. 
Use descriptive activity names to name the activities in the data set
Appropriately label the data set with descriptive variable names. 

## Implementation

*run_analysis.R* performs the following steps.

1. Download and unzip UCI HAR Dataset
   (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

2. Read features data set into a data frame

3. Read activity_label data set into a data frame and rename column names V1 and V2 to
   activity_id and activity

4. Merge all three test data sets into one

5. Merge all three training data sets into one

6. Merge the training and the test sets to create one data set.

7. Appropriately label the data set with descriptive variable names. Replace existing columns names
   with the names provide in the features data set.

8. Data set has duplicate columns (*bandsEnergy() - X,Y) that need to be removed

9. Extracts only the measurements on the mean and standard deviation for each measurement. 

10. Uses descriptive activity names to name the activities in the data set. Merge data set with 
   with activity labels, remove activity_id column, and arrange by subject and activity

11. Create independent tidy data set with the average of each variable for each activity 
   and each subject.  Chose aggregate over tapply because aggregate returns a data.frame.

12. Write tidy data set to week3_course_project.txt

