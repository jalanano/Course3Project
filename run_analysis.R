
library(dplyr)

## load the features names
features_data<-read.table("features.txt")

##load the train data
train_subject<-read.table("./train/subject_train.txt")
train_y<-read.table("./train/y_train.txt")
train_x<-read.table("./train/X_train.txt")

##labeling the columns for train data
train_subject<-rename(train_subject, subject = V1)

train_y<-rename(train_y, activity = V1)

## label the data set for X train data
names(train_x)=NULL
names(train_x)<-features_data$V2

##get the subset of data having columns with mean or std as its column name
col_names<-names(train_x)
cols_with_meanstd<-grepl("mean|std", col_names)
train_x_subset<-train_x[,cols_with_meanstd]


##combined data for train data sets
train_combined<-cbind(train_subject, train_y, train_x_subset)


##load the 3 test data files
test_subject<-read.table("./test/subject_test.txt")
test_y<-read.table("./test/y_test.txt")
test_x<-read.table("./test/X_test.txt")

##labeling the columns for test data

test_subject<-rename(test_subject, subject = V1)
test_y<-rename(test_y, activity = V1)
## label the data set for X test data
names(test_x)=NULL
names(test_x)<-features_data$V2

##get the subset of data having columns with mean or std as its column name
col_names<-names(test_x)
cols_with_meanstd<-grepl("mean|std", col_names)
test_x_subset<-test_x[,cols_with_meanstd]

##combined data for test data sets
test_combined<-cbind(test_subject, test_y, test_x_subset)


## combined the 2 data frame into 1 data set
combined_traintest = rbind(train_combined,test_combined)

#combined_traintest2<-combined_traintest


##substitute the activity value with the actual acitivity name
combined_traintest$activity[combined_traintest$activity==1]<-"WALKING"
combined_traintest$activity[combined_traintest$activity==2]<-"WALKING_UPSTAIRS"
combined_traintest$activity[combined_traintest$activity==3]<-"WALKING_DOWNSTAIRS"
combined_traintest$activity[combined_traintest$activity==4]<-"SITTING"
combined_traintest$activity[combined_traintest$activity==5]<-"STANDING"
combined_traintest$activity[combined_traintest$activity==6]<-"LAYING"

##cleanup the variable to remove symbols
## replace t with Time and f with Frequency to add readability
names(combined_traintest) <- sub("\\()","",names(combined_traintest),fixed=FALSE)
names(combined_traintest) <- sub("-",".",names(combined_traintest),fixed=FALSE)
names(combined_traintest) <- sub("-",".",names(combined_traintest),fixed=FALSE)
names(combined_traintest) <- sub("BodyBody","Body",names(combined_traintest),fixed=FALSE)
names(combined_traintest) <- sub("tBody","time_Body",names(combined_traintest),fixed=FALSE)
names(combined_traintest) <- sub("fBody","frequency_Body",names(combined_traintest),fixed=FALSE)


##################


#data set containing the mean of each measurement per subject and activity
data_summary <- combined_traintest %>% group_by(subject,activity) %>% summarise_each(funs(mean))

#exports the data to a file in your current directory
write.table(data_summary,file="mean_per_measurement.txt",row.names = FALSE)


##to read the exported file
#my_data<-read.table("mean_per_measurement.txt")
#View(my_data)


