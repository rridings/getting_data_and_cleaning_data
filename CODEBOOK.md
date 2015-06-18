
##CODEBOOK for Getting Data and Cleaning Data Course Project##

<br>
<br>
<br>
<br>
<br>

### Description ###

This data set is a transformation of the *Human Activity Recognition Using Smartphones Data Set* provided by UCI Machine Learing Respository.  More information about this data set is available at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

*Human Activity Recognition Using Smartphones Data Set* can downloaded from the link below.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The experiement involved 30 individuals wearing smart phones at their waist and performing five different activities.  These activities were performed multiple times per individual.

The run_analysis.R script transforms the source datasets into a "tidy data set" containing the subject (individual), the activity and the average over the numbers of times the subject performed the activity of several mean and standard deviation calculations on the readings from acceleromator and gyroscope in the smart phone.
<br>
<br>
<br>
<br>

### Data Elements ###

| Variable Name            | Length  | Description                             | Values or Explanation |                                                               
|:-------------------------|:------- |:----------------------------------------|:----------------------|
|subject|2|Subject of the experiment|[1..30]|
|activity|18|Activity performed by the subject|WALKING|
||||WALKING_UPSTAIRS|
||||WALKING_DOWNSTAIRS|
||||SITTING|
||||STANDING|
||||LAYING|
|tBodyAcc-std()-X|18|Mean of the standard deviation of body|[-1..1] %1.15f|
|||acceleration in X direction||
|tBodyAcc-std()-Y|18|Mean of the standard deviation of body|[-1..1] %1.15f|
|||acceleration in Y direction||
|tBodyAcc-std()-Z|18|Mean of the standard deviation of body|[-1..1] %1.15f|
|||acceleration in Z direction||
|tGravityAcc-std()-X|18|Mean of the standard deviation of|[-1..1] %1.15f|
|||gravity acceleration in X direction||
|tGravityAcc-std()-Y|18|Mean of the standard deviation of|[-1..1] %1.15f|
|||gravity acceleration in Y direction||
|tGravityAcc-std()-Z|18|Mean of the standard deviation of|[-1..1] %1.15f|
|||gravity acceleration in Z direction||
|tBodyAccJerk-std()-X|18|Mean of the standard deviation of the|[-1..1] %1.15f|
|||body acceleration jerk signal in X||
|||direction||
|tBodyAccJerk-std()-Y|18|Mean of the standard deviation of the|[-1..1] %1.15f|
|||body acceleration jerk signal in Y||
|||direction||
|tBodyAccJerk-std()-Z|18|Mean of the standard deviation of the|[-1..1] %1.15f|
|||body acceleration jerk signal in Z||
|||direction||
|tBodyGyro-std()-X|18|Mean of the standard deviation of body|[-1..1] %1.15f|
|||gyroscope reading in X direction||
|tBodyGyro-std()-Y|18|Mean of the standard deviation of body|[-1..1] %1.15f|
|||gyroscope reading in Y direction||
|tBodyGyro-std()-Z|18|Mean of the standard deviation of body|[-1..1] %1.15f|
|||gyroscope reading in Z direction||
|tBodyGyroJerk-std()-X|18|Mean of the standard deviation of the|[-1..1] %1.15f|
|||body gyroscope jerk signal in X||
|||direction||
|tBodyGyroJerk-std()-Y|18|Mean of the standard deviation of the|[-1..1] %1.15f|
|||body gyroscope jerk signal in Y||
|||direction||
|tBodyGyroJerk-std()-Z|18|Mean of the standard deviation of the|[-1..1] %1.15f|
|||body gyroscope jerk signal in Z||
|||direction||
|tBodyAccMag-std()|18|Mean of the standard deviation of body|[-1..1] %1.15f|
|||acceleration magnitude of the three||
|||dimensions||
|tGravityAccMag-std()|18|Mean of the standard deviation of|[-1..1] %1.15f|
|||gravity acceleration magnitude of the||
|||three dimensions||
|tBodyAccJerkMag-std()|18|Mean of the standard deviation of the|[-1..1] %1.15f|
|||body acceleration jerk magnitude of the||
|||three dimensions||
|tBodyGyroMag-std()|18|Mean of the standard deviation of body|[-1..1] %1.15f|
|||gyroscope magnitude of the three||
|||dimensions||
|tBodyGyroJerkMag-std()|18|Mean of the standard deviation of|[-1..1] %1.15f|
|||gyroscope jerk magnitude of the three||
|||dimensions||
|fBodyAcc-std()-X|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body acceleration in X direction||
|fBodyAcc-std()-Y|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body acceleration in Y direction||
|fBodyAcc-std()-Z|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body acceleration in Z direction||
|fBodyAccJerk-std()-X|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body acceleration jerk signal in X||
|||direction||
|fBodyAccJerk-std()-Y|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body acceleration jerk signal in Y||
|||direction||
|fBodyAccJerk-std()-Z|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body acceleration jerk signal in Z||
|||direction||
|fBodyGyro-std()-X|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body gyroscope reading in X direction||
|fBodyGyro-std()-Y|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body gyroscope reading in Y direction||
|fBodyGyro-std()-Z|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body gyroscope reading in Z direction||
|fBodyAccMag-std()|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body acceleration magnitude of the three||
|||dimensions||
|fBodyBodyAccJerkMag-std()|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body acceleration jerk magnitude of the||
|||three dimensions||
|fBodyBodyGyroMag-std()|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body gyroscope magnitude of the three||
|||dimensions||
|fBodyBodyGyroJerkMag-std()|18|Mean of the standard deviation of Fast|[-1..1] %1.15f|
|||Fourier Transform (FFT) applied to the||
|||body gyroscope jerk magnitude of the||
|||three dimensions||
|tBodyAcc-mean()-X|18|Mean of the mean values of the body|[-1..1] %1.15f|
|||acceleration jerk signal in X direction||
|tBodyAcc-mean()-Y|18|Mean of the mean values of the body|[-1..1] %1.15f|
|||acceleration jerk signal in Y direction||
|tBodyAcc-mean()-Z|18|Mean of the mean values of the body|[-1..1] %1.15f|
|||acceleration jerk signal in Z direction||
|tGravityAcc-mean()-X|18|Mean of the mean values of gravity|[-1..1] %1.15f|
|||acceleration in X direction||
|tGravityAcc-mean()-Y|18|Mean of the mean values of gravity|[-1..1] %1.15f|
|||acceleration in Y direction||
|tGravityAcc-mean()-Z|18|Mean of the mean values of gravity|[-1..1] %1.15f|
|||acceleration in Z direction||
|tBodyAccJerk-mean()-X|18|Mean of the mean values of the body|[-1..1] %1.15f|
|||acceleration jerk signal in X direction||
|tBodyAccJerk-mean()-Y|18|Mean of the mean values of the body|[-1..1] %1.15f|
|||acceleration jerk signal in Y direction||
|tBodyAccJerk-mean()-Z|18|Mean of the mean values of the body|[-1..1] %1.15f|
|||acceleration jerk signal in Z direction||
|tBodyGyro-mean()-X|18|Mean of the mean values of body|[-1..1] %1.15f|
|||gyroscope reading in X direction||
|tBodyGyro-mean()-Y|18|Mean of the mean values of body|[-1..1] %1.15f|
|||gyroscope reading in Y direction||
|tBodyGyro-mean()-Z|18|Mean of the mean values of body|[-1..1] %1.15f|
|||gyroscope reading in Z direction||
|tBodyGyroJerk-mean()-X|18|Mean of the mean values of the body|[-1..1] %1.15f|
|||gyroscope jerk signal in X direction||
|tBodyGyroJerk-mean()-Y|18|Mean of the mean values of the body|[-1..1] %1.15f|
|||gyroscope jerk signal in Y direction||
|tBodyGyroJerk-mean()-Z|18|Mean of the mean values of the body|[-1..1] %1.15f|
|||gyroscope jerk signal in Z direction||
|tBodyAccMag-mean()|18|Mean of the mean values of body|[-1..1] %1.15f|
|||acceleration magnitude of the three||
|||dimensions||
|tGravityAccMag-mean()|18|Mean of the mean values of gravity|[-1..1] %1.15f|
|||acceleration magnitude of the three||
|||dimensions||
|tBodyAccJerkMag-mean()|18|Mean of the mean values of the body|[-1..1] %1.15f|
|||acceleration jerk magnitude of the||
|||three dimensions||
|tBodyGyroMag-mean()|18|Mean of the mean values of body|[-1..1] %1.15f|
|||gyroscope magnitude of the three||
|||dimensions||
|tBodyGyroJerkMag-mean()|18|Mean of the mean values of gyroscope|[-1..1] %1.15f|
|||jerk magnitude of the three dimensions||
|fBodyAcc-mean()-X|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||acceleration in X direction||
|fBodyAcc-mean()-Y|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||acceleration in Y direction||
|fBodyAcc-mean()-Z|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||acceleration in Z direction||
|fBodyAccJerk-mean()-X|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||acceleration jerk signal in X direction||
|fBodyAccJerk-mean()-Y|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||acceleration jerk signal in Y direction||
|fBodyAccJerk-mean()-Z|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||acceleration jerk signal in Z direction||
|fBodyGyro-mean()-X|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||gyroscope reading in X direction||
|fBodyGyro-mean()-Y|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||gyroscope reading in Y direction||
|fBodyGyro-mean()-Z|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||gyroscope reading in Z direction||
|fBodyAccMag-mean()|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||acceleration magnitude of the three||
|||dimensions||
|fBodyBodyAccJerkMag-mean()|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||acceleration jerk magnitude of the three||
|||dimensions||
|fBodyBodyGyroMag-mean()|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||gyroscope magnitude of the three||
|||dimensions||
|fBodyBodyGyroJerkMag-mean()|18|Mean of the mean values of Fast Fourier|[-1..1] %1.15f|
|||Transform (FFT) applied to the body||
|||gyroscope jerk magnitude of the three||
|||dimensions|