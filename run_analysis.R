########### reading base data
set_train <- read.table("X_train.txt")
set_test <- read.table("X_test.txt")
features <- read.table("features.txt")
subjects_train <- read.table("subject_train.txt") 
subjects_test <- read.table("subject_test.txt")
activity_labels <- read.table("activity_labels.txt")
activities_train <- read.table("y_train.txt") 
activities_test <- read.table("y_test.txt")

#1. Merges the training and the test sets to create one data set.
#4. Appropriately labels the data set with descriptive variable names. 
set_complete <- rbind(set_train, set_test)
col_names <- features$V2
colnames(set_complete) <- col_names

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
mean_positions <- grep("mean()", col_names)
std_positions <- grep("std()", col_names)
freq_positions <- grep("meanFreq()",  col_names)
select_positions <- c(mean_positions, std_positions)
select_positions <- select_positions[! select_positions %in% freq_positions]
select_positions <- sort(select_positions)
set_complete_mean_sd <- set_complete[, select_positions]

########### creating a the list of the activities as names (in the right order) for each row in the set and adding 
########### it as the first column to the set
activities <- c(activities_train[,1], activities_test[,1])
activities <- as.data.frame(activities)
activities$order_var  <- 1:nrow(activities)
activity_mapping <- merge(activity_labels,activities, by.x="V1", by.y="activities")
activity_mapping <- activity_mapping[order(activity_mapping$order_var), ]
set_complete_mean_sd_act <- cbind(activity_mapping$V2, set_complete_mean_sd)
colnames(set_complete_mean_sd_act)[1] <- "activity"

########### creating a the list of the subjects for each row in the set and adding it as the first column to the set
#3. Uses descriptive activity names to name the activities in the data set
subjects <- c(subjects_train[,1], subjects_test[,1])
set_complete_mean_sd_act_sub <- cbind(subjects, set_complete_mean_sd_act)


########## creating the means per column and subject + activity
set_meansof_mean_sd_agg <- aggregate(set_complete_mean_sd_act_sub[,3:length(set_complete_mean_sd_act_sub)], by = list(set_complete_mean_sd_act_sub$subjects, set_complete_mean_sd_act_sub$activity), FUN = mean)
colnames(set_meansof_mean_sd_agg)[1] <- "subject"
colnames(set_meansof_mean_sd_agg)[2] <- "activity"



#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
write.table(set_meansof_mean_sd_agg,"tidy_data_set.txt",row.name=FALSE)




