library(plyr)
library(dplyr)
library(reshape2)
setwd("C:/Projects/coursera/GettingandCleaningData/project/UCI HAR Dataset")
act_names <- read.table("./activity_labels.txt",header=FALSE,sep="")
names(act_names) <- c("actlabel","actname")
features <- read.table("./features.txt",header=FALSE,sep="")

#Read test data
X_test <- read.table("./test/X_test.txt",header=FALSE,sep="")
subject_test <- read.table("./test/subject_test.txt",header=FALSE,sep="")
actlabels_test <- read.table("./test/y_test.txt",header=FALSE,sep="")
names(actlabels_test) <- c("actlabel")
actlabels_test <- join(actlabels_test,act_names)
X_test <- cbind(subject_test,actlabels_test[,2],X_test)
names(X_test) <- cbind("subject","actname",t(as.character(features[,2])))

#Read train data
X_train <- read.table("./train/X_train.txt",header=FALSE,sep="")
subject_train <- read.table("./train/subject_train.txt",header=FALSE,sep="")
actlabels_train <- read.table("./train/y_train.txt",header=FALSE,sep="")
names(actlabels_train) <- c("actlabel")
actlabels_train <- join(actlabels_train,act_names)
X_train <- cbind(subject_train,actlabels_train[,2],X_train)
names(X_train) <- cbind("subject","actname",t(as.character(features[,2])))

#Combine data sets and select mean and std related columns
X_all <- rbind(X_test,X_train)
indmean_std <- grepl("mean",names(X_all)) | grepl("std",names(X_all))
indmean_std[1:2] <- TRUE # first two columns are subject and activity 
X_all <- X_all[,indmean_std]

#reshaping and computing mean for each measurement
cstX_all <- melt(X_all,id=c("subject","actname"),measure.vars=names(X_all)[3:81])
final_dat <- dcast(cstX_all,subject+actname~variable,mean)
write.table(final_dat, "./final_data.txt", row.name=FALSE)



