# # Set Working Directory ##
rm(list=ls())
setwd("C:/Users/admin/Documents/UCI HAR Dataset")

## Read Data Sets from Files ##
YTrain <- read.table("C:/Users/admin/Documents/UCI HAR Dataset/train/y_train.txt")
YTest <- read.table("C:/Users/admin/Documents/UCI HAR Dataset/test/y_test.txt")
XTrain <- read.table("C:/Users/admin/Documents/UCI HAR Dataset/train/x_train.txt")
XTest <- read.table("C:/Users/admin/Documents/UCI HAR Dataset/test/x_test.txt")
Y <- rbind(YTrain, YTest)
names(Y)<-"Activity"
Y$Activity <-factor(Y$Activity, levels = c(1,2,3,4,5,6),labels = c("Walking","Walking Upstairs", "Walking Downstairs","Sitting","Standing","Laying")) 
X<-rbind(XTrain, XTest)
Train <- read.table("C:/Users/admin/Documents/UCI HAR Dataset/train/subject_train.txt")
Test <- read.table("C:/Users/admin/Documents/UCI HAR Dataset/test/subject_test.txt")
subject<-rbind(Train, Test)
names(subject)<-"Activity_ID"
features <- read.table("C:/Users/admin/Documents/UCI HAR Dataset/features.txt")
names(X)<-features[,2]

## Mean and Standard Deviation ##
X<-X[,grepl("-mean\\(\\)|-std\\(\\)", names(X))]
names(X) <- gsub("\\(|\\)", "", names(X)) 
names(X) <- tolower(names(X))

tidy <- cbind(subject, Y, X)
write.table(tidy, "TidyDatav1.txt")

## Calculating the Average of Each variable##
agg_mean <-aggregate(tidy[,-2], by=list(tidy$Activity,tidy$Activity_ID),FUN=mean, na.rm=TRUE)
agg_mean<-agg_mean[-2]
agg_mean<-agg_mean[c(2,1,3:68)]
names(agg_mean)[names(agg_mean)=="Group.1"] <- "Activity"
write.table(agg_mean, "TidyDatav2.txt")

