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

##output: meandata.txt - means of all of the variables grouped by Activity Name (actname)
and Subject - the volunteer participant (subjID)
Variable(colname)	Value (sample)	Description
actname			LAYING		Any of six activities: WALKING,WALKING_UPSTAIRSWALKING_DOWNSTAIRS,SITTING,STANDING,LAYING
subjID			1		The subject ID - identifies the volunteer who did the activity (1 - 30)
tbodyacc.mean.x		0.221598244	Variables that start with t - refer to time
tbodyacc.mean.y		-0.040513953	Variables that start with f - refer to frequency
tbodyacc.mean.z		-0.113203554	
tgravityacc.mean.x	-0.248881798	
tgravityacc.mean.y	0.705549773	
tgravityacc.mean.z	0.44581772	
tbodyaccjerk.mean.x	0.081086534	
tbodyaccjerk.mean.y	0.003838204	
tbodyaccjerk.mean.z	0.010834236	
tbodygyro.mean.x	-0.016553094	
tbodygyro.mean.y	-0.064486124	
tbodygyro.mean.z	0.148689436	
tbodygyrojerk.mean.x	-0.107270949	
tbodygyrojerk.mean.y	-0.041517287	
tbodygyrojerk.mean.z	-0.074050121	
tbodyaccmag.mean	-0.841929153	
tgravityaccmag.mean	-0.841929153	
tbodyaccjerkmag.mean	-0.954396265	
tbodygyromag.mean	-0.874759548	
tbodygyrojerkmag.mean	-0.96346103	
fbodyacc.mean.x		-0.939099052	
fbodyacc.mean.y		-0.867065205	
fbodyacc.mean.z		-0.882666876	
fbodyacc.meanfreq.x	-0.158792671	
fbodyacc.meanfreq.y	0.097534842	
fbodyacc.meanfreq.z	0.089437655	
fbodyaccjerk.mean.x	-0.957073884	
fbodyaccjerk.mean.y	-0.92246261	
fbodyaccjerk.mean.z	-0.948060904	
fbodyaccjerk.meanfreq.x	0.132419092	
fbodyaccjerk.meanfreq.y	0.024513619	
fbodyaccjerk.meanfreq.z	0.024387945	
fbodygyro.mean.x	-0.850249175	
fbodygyro.mean.y	-0.952191495	
fbodygyro.mean.z	-0.909302721	
fbodygyro.meanfreq.x	-0.003546796	
fbodygyro.meanfreq.y	-0.091529131	
fbodygyro.meanfreq.z	0.010458126	
fbodyaccmag.mean	-0.861767648	
fbodyaccmag.meanfreq	0.086408563	
fbodybodyaccjerkmag.mean	-0.933300361	
fbodybodyaccjerkmag.meanfreq	0.266391154	
fbodybodygyromag.mean	-0.862190185	
fbodybodygyromag.meanfreq	-0.139775013	
fbodybodygyrojerkmag.mean	-0.942366947	
fbodybodygyrojerkmag.meanfreq	0.176485907	
angle.tbodyaccmean.gravity	0.021365966	
angle.tbodyaccjerkmean.gravitymean	0.003060407	
angle.tbodygyromean.gravitymean	-0.001666985	
angle.tbodygyrojerkmean.gravitymean	0.084437165	
angle.x.gravitymean	0.426706226	
angle.y.gravitymean	-0.520343818	
angle.z.gravitymean	-0.352413109	
...Etc...