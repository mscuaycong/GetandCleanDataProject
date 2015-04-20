##Course Project Script - Getting And Cleaning Data Course
## Input: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## Additional Info re data:
##http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
## authored by:  M Cuaycong
##

#set working directory
#../courseproject

#Call the packages needed for this script
library(data.table)
library(plyr)
library(dplyr)


list.files("./UCI HAR Dataset/train")

#Store directory nmes for data files
traindir<-"./UCI HAR Dataset/train/"
testdir<-"./UCI HAR Dataset/test/"

##READ files common to TRAIN and TEST Groups
#read feature names - these will describe the 561 variable features for each
#activity set
feat<-read.table("./UCI HAR Dataset/features.txt")
feat<-data.table(feat)

#Describes each of the 6 activity types
act_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
act_labels<-data.table(act_labels)

##TRAIN data begins here
#Read the 'train/subject_train.txt'
#Each row identifies the subject who performed the activity for each window sample. 
#Its range is from 1 to 30. 

t_subj<-read.table(paste0(traindir,"subject_train.txt"))
t_subj<-data.table(t_subj)
setnames(t_subj,"V1","subjID")

#read the training set- the header is V1:V561 0 variables for the features
t_X<-read.table(paste0(traindir,"X_train.txt"))
#convert to data.table for speed and other functions
t_X<-data.table(t_X)
#read the training labels which contain the activity code
t_Y<-read.table(paste0(traindir,"Y_train.txt"))
t_Y<-data.table(t_Y)


t_dat<-cbind(t_subj,t_Y)
t_dat<-tbl_df(t_dat)

rm(t_Y,t_subj) # clear vars - don't need these interim tables




#map the training data set variable names to the feature name
setnames(t_X,names(t_X),as.character(feat[,V2]))

#merge the subject data with the feature results

traindata<-cbind(t_dat,t_X)
rm(t_dat,t_X)

#get the label values for the activity
traindata <- join(traindata, act_labels, by = "V1")
#Rename the var columns 
setnames(traindata,c("V1","V2"),c("actcode","actname"))
#move the last column which is now the actname close to actcode
traindata<-select(traindata,subjID,actcode,actname,3:563)
traindata<-mutate(traindata,settype="train")
##END retrieving Train data


## DO the same transformations for TEST data
##TEST data begins here

testdir<-"./UCI HAR Dataset/test/"
#Read the 'test/subject_test.txt'
#Each row identifies the subject who performed the activity for each window sample. 
#Its range is from 1 to 30. 

test_subj<-read.table(paste0(testdir,"subject_test.txt"))
test_subj<-data.table(test_subj)
setnames(test_subj,"V1","subjID")

#read the TEST set- the header is V1:V561 0 variables for the features
test_X<-read.table(paste0(testdir,"X_test.txt"))
#convert to data.table for speed and other functions
test_X<-data.table(test_X)
#read the training labels which contain the activity code
test_Y<-read.table(paste0(testdir,"Y_test.txt"))
test_Y<-data.table(test_Y)


test_dat<-cbind(test_subj,test_Y)
test_dat<-tbl_df(test_dat)

rm(test_Y,test_subj) # clear vars - don't need these interim tables


#map the training data set variable names to the feature name
setnames(test_X,names(test_X),as.character(feat[,V2]))

#Merge the subject data with the feature results

testdata<-cbind(test_dat,test_X)
rm(test_dat,test_X)

#get the label values for the activity
testdata <- join(testdata, act_labels, by = "V1")
#Rename the var columns 
setnames(testdata,c("V1","V2"),c("actcode","actname"))
#move the last column which is now the actname close to actcode
testdata<-select(testdata,subjID,actcode,actname,3:563)
testdata<-mutate(testdata,settype="test")
## END retrieving TEST data

## Combine Training and Test Data
alldata<-rbind(traindata,testdata)
# this is now a Tidy data set
rm(testdata,traindata)#remove this - no longer necessary

#select only the mean and std columns
alldata_1<-select(alldata,settype,subjID,actcode,actname,
                    contains("mean"),contains("std"))

 
##Create another tidy dataset with only the means of the variables
## grouped by Activity and by Subject
by_act_sub<- select(alldata_1,actname,subjID,5:90)

meandat<- ddply(by_act_sub, .(actname,subjID), numcolwise(mean))

#output Meandat which contains the means to a text file.
write.table(meandat,file="./meandat.txt",row.names=FALSE)


##Alternate mean calculation for all columns grouped by
#meandat<-aggregate(by_act_sub,
#                   by=list(g.actname=by_act_sub$actname,g.subjID=by_act_sub$subjID),
#                   mean)
#meandat<-meandat%>%
#     arrange(g.actname,g.subjID)%>%
#     select(-actname,-subjID)