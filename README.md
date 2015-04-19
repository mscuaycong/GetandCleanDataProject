## GetandCleanDataProject
Course project for the Getting and Cleaning Data course

##FILES INCLUDED
run_analysis.R - R script to fulfill the requirements of the course data project in the "Getting and Cleaning Data" course
 
meandat.txt - tidy dataset containing the mean values of the training and test data from the
  "Human Activity Recognition Using Smartphones Dataset Version 1.0"


##Data Input Source:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
##Run_analysis.R
The script creates a tidy dataset using the files from the Human Ativity Recognition Using Smartphones Dataset
Assumes that the data files are in the same directory as the directory from which this script is run.
Also assumes that the files and subdirectories are organized the same way as the original, with its root in directory
of the script.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Source:
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws


##Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been 
randomly partitioned into two sets, where 70% of the volunteers was selected for generating the 
training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##output: meandata.txt - means of all of the variables grouped by Activity Name (g.actname)
and Subject who did it (g.subjID)
Variable (colname)	Description/Values
g.actname		Any of six activities: WALKING,WALKING_UPSTAIRSWALKING_DOWNSTAIRS,SITTING,STANDING,LAYING
g.subjID		The subject ID - identifies the volunteer who did the activity
tBodyAcc-mean()-X	Variables that start with t - refer to time
tBodyAcc-mean()-Y	Variables that start with f - refer to frequency
tBodyAcc-mean()-Z	
tGravityAcc-mean()-X	
tGravityAcc-mean()-Y	
tGravityAcc-mean()-Z	
tBodyAccJerk-mean()-X	
tBodyAccJerk-mean()-Y	
...Etc...
