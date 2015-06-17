library(reshape2)
library(dplyr)
library(data.table)

filename <- "getdata_projectfiles_UCI HAR Dataset.zip"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 

# 1. Download and unzip UCI HAR Dataset
#download.file(url, dest=filename, method="curl")
unzip(filename, exdir = "./")

# 2. Read features data set into a data frame
features <- read.table("./UCI HAR Dataset/features.txt")

# 3. Read activity_label data set into a data frame and rename column names V1 and V2
activity <- read.table("./UCI HAR Dataset/activity_labels.txt") %>% 
  rename(activity_id = V1) %>%
  rename(activity = V2)

# 4. Merge all three test data sets into one
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt") %>% rename(subject = V1)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt") %>% rename(activity_id = V1)
df_test <- data.frame(subject_test) %>% cbind(y_test) %>% cbind(x_test)

# 5. Merge all three training data sets into one
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt") %>% rename(subject = V1)
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt") %>% rename(activity_id = V1)
df_train <- data.frame(subject_train) %>% cbind(y_train) %>% cbind(x_train)

# 6. Merge the training and the test sets to create one data set.
df <- rbind(df_test, df_train)

# 7. Appropriately labels the data set with descriptive variable names. 
setnames(df, old=colnames(df)[-1:-2], new=as.character(features$V2))

# 8. Data set has duplicate columns (*bandsEnergy() - X,Y) that need to be removed
df <- df[!duplicated(colnames(df))]

# 9. Extracts only the measurements on the mean and standard deviation for each measurement. 
df <- select(df, subject, activity_id, contains("std()"), contains("mean()"))

# 10. Uses descriptive activity names to name the activities in the data set. Merge data set with 
# with activity labels, remove activity_id column, and arrange by subject and activity
df <- merge(df, activity, by.x = "activity_id", by.y = "activity_id") %>% 
  subset( select = -activity_id ) %>% 
  select(subject, activity, everything()) %>%
  arrange(subject, activity)

# 11. Create independent tidy data set with the average of each variable for each activity 
# and each subject.  Chose aggregate over tapply because aggregate returns a data.frame.
tidy <- aggregate(df[,c(3:68)], list(df$subject, df$activity), mean) %>% 
  rename(subject = Group.1) %>%
  rename(activity = Group.2)

# 12. Write tidy data set to week3_course_project.txt
write.table(tidy, file="week3_course_project.txt", row.name=FALSE)

