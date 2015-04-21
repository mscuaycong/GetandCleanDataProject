
#Transformed Datasets - produced by run_analysis.R

##alldata : tidy dataset that has all 561 features/variables (see features.txt in original files) with the settype, subjID, actcode, actname.  The variables V1..Vn have been converted to the feature
names and actcode (1-6) is associated with the descriptive labels.  Observations from training and test data are combined here.

##alldata_1:  is the datatable subset from alldata but only contains the variables that correspond to mean and standard deviation.  Alldata has all 561 features.			
this dataset has 10,299 observations			
			
	Variable (col)	Type	Description
	settype		chr	train, test - label describes whether the observation came from the test or training sample datasets
	subjID		int		1-30, values or subject ID to determine the participant from which the measurements were take
	actcode		int		values 1-6 to designate one of  6 activities
	actname		Factor		the activity corresponding to actcode 1-6: WALKING,WALKING_UPSTAIRSWALKING_DOWNSTAIRS,SITTING,STANDING,LAYING
	tbodyacc.mean.x		num	The measurements that correspond to mean
	tbodyacc.mean.y		num	
	tbodyacc.mean.z		num	
	tgravityacc.mean.x	num	
	tgravityacc.mean.y	num	
	tgravityacc.mean.z	num	
	tbodyaccjerk.mean.x	num	
	tbodyaccjerk.mean.y	num	
	tbodyaccjerk.mean.z	num	
	tbodygyro.mean.x	num	
	tbodygyro.mean.y	num	
	tbodygyro.mean.z	num	
	tbodygyrojerk.mean.x	num	
	tbodygyrojerk.mean.y	num	
	tbodygyrojerk.mean.z	num	
	tbodyaccmag.mean	num	
	tgravityaccmag.mean	num	
	tbodyaccjerkmag.mean	num	
	tbodygyromag.mean	num	
	tbodygyrojerkmag.mean	num	
	fbodyacc.mean.x		num	
	fbodyacc.mean.y		num	
	fbodyacc.mean.z		num	
	fbodyacc.meanfreq.x	num	
	fbodyacc.meanfreq.y	num	
	fbodyacc.meanfreq.z	num	
	fbodyaccjerk.mean.x	num	
	fbodyaccjerk.mean.y	num	
	fbodyaccjerk.mean.z	num	
	fbodyaccjerk.meanfreq.x	num	
	fbodyaccjerk.meanfreq.y	num	
	fbodyaccjerk.meanfreq.z	num	
	fbodygyro.mean.x	num	
	fbodygyro.mean.y	num	
	fbodygyro.mean.z	num	
	fbodygyro.meanfreq.x	num	
	fbodygyro.meanfreq.y	num	
	fbodygyro.meanfreq.z	num	
	fbodyaccmag.mean	num	
	fbodyaccmag.meanfreq	num	
	fbodybodyaccjerkmag.mean	num	
	fbodybodyaccjerkmag.meanfreq	num	
	fbodybodygyromag.mean	num	
	fbodybodygyromag.meanfreq	num	
	fbodybodygyrojerkmag.mean	num	
	fbodybodygyrojerkmag.meanfreq	num	
	angle.tbodyaccmean.gravity	num	
	angle.tbodyaccjerkmean.gravitymean	num	
	angle.tbodygyromean.gravitymean	num	
	angle.tbodygyrojerkmean.gravitymean	num	
	angle.x.gravitymean	num	
	angle.y.gravitymean	num	
	angle.z.gravitymean	num	
	tbodyacc.std.x	num	The mesurements that correspond to standard deviation.
	tbodyacc.std.y	num	
	tbodyacc.std.z	num	
	tgravityacc.std.x	num	
	tgravityacc.std.y	num	
	tgravityacc.std.z	num	
	tbodyaccjerk.std.x	num	
	tbodyaccjerk.std.y	num	
	tbodyaccjerk.std.z	num	
	tbodygyro.std.x	num	
	tbodygyro.std.y	num	
	tbodygyro.std.z	num	
	tbodygyrojerk.std.x	num	
	tbodygyrojerk.std.y	num	
	tbodygyrojerk.std.z	num	
	tbodyaccmag.std	num	
	tgravityaccmag.std	num	
	tbodyaccje#rkmag.std	num	
	tbodygyromag.std	num	
	tbodygyrojerkmag.std	num	
	fbodyacc.std.x	num	
	fbodyacc.std.y	num	
	fbodyacc.std.z	num	
	fbodyaccjerk.std.x	num	
	fbodyaccjerk.std.y	num	
	fbodyaccjerk.std.z	num	
	fbodygyro.std.x	num	
	fbodygyro.std.y	num	
	fbodygyro.std.z	num	
	fbodyaccmag.std	num	
	fbodybodyaccjerkmag.std	num	
	fbodybodygyromag.std	num	
	fbodybodygyrojerkmag.std	num	

##output dataset:meandata.txt
-subset of alldata_1 with 180 observations containing the means of all of the feature measurements in alldata_1 grouped
by activity and then by subject.  The variables settype and actcode have been dropped.