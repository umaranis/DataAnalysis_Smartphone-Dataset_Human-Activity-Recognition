
## Performs task # 1 to 4 and produce a detailed dataset.
## Dataset contains subject, activity labels and all measurement for mean and standard deviation features.  
get_detailed_dataset <- function() {
  
  ## 1) Merges the training and the test sets to create one data set.
  
  # change working directory to the folder where data is extracted
  
  # file names
  features.file <- "getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\features.txt"
  
  train.data.file <- "getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\X_train.txt"
  train.activity.no.file <- "getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\y_train.txt"
  train.subject.file <- "getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\subject_train.txt"
  
  test.data.file <- "getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\X_test.txt"
  test.activity.no.file <- "getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\y_test.txt"
  test.subject.file <- "getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\subject_test.txt"
  
  # loading data
  train.data <- read.table(train.data.file)
  test.data <- read.table(test.data.file)
  
  # loading activity data
  train.activity <- read.table(train.activity.no.file)
  test.activity <- read.table(test.activity.no.file)
  
  # loading subject data
  train.subject <- read.table(train.subject.file)
  test.subject <- read.table(test.subject.file)
  
  # loading feature descriptions
  features <- read.table(features.file)
  
  # merged training and test data
  data <- rbind(train.data, test.data)
  activity <- rbind(train.activity, test.activity) 
  colnames(activity) <- "activity"
  subject <- rbind(train.subject, test.subject)
  colnames(subject) <- "subject"
  data <- cbind(subject, activity, data) 
  
  ## 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
  
  filter <- sapply(features$V2, grepl, pattern = "mean|std")
  
  # add TRUE for subject and activity
  filter <- c(TRUE, TRUE, filter)
  
  data <- data[, filter]
  
  ## 3) Uses descriptive activity names to name the activities in the data set.
  data$activity <- factor(data$activity)
  levels(data$activity) <- c( "WALKING", 
                              "WALKING_UPSTAIRS",
                              "WALKING_DOWNSTAIRS",
                              "SITTING",
                              "STANDING",
                              "LAYING")
  
  ## 4) Appropriately labels the data set with descriptive variable names. 
  variable_names <- c("subject", "activity", as.character(features$V2))
  
  variable_names <- variable_names[filter]
  
  colnames(data) <- variable_names
  
  data

}

## Produces a tidy dataset as per task # 5.
## Dataset contain subject and activity wise average for features in detailed dataset produced by 'get_detailed_dataset()' function.
run_analysis <- function() {
  
  # tasks 1 to 4
  data <- get_detailed_dataset()
  
  ## 5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
  # load plyr libaray
  require(plyr)
  
  # create a copy for second data set
  second_data_set <- data
  
  # convert activity column numeric for ddply
  second_data_set$activity <- as.numeric(second_data_set$activity)
  
  # summarizing data set
  second_data_set <- ddply(second_data_set, .(subject, activity), colMeans)
  
  # converting activity column from numeric to factor
  second_data_set$activity <- factor(second_data_set$activity)
  
  # converting activity column back to factor
  levels(second_data_set$activity) <- c(  "WALKING", 
                                          "WALKING_UPSTAIRS",
                                          "WALKING_DOWNSTAIRS",
                                          "SITTING",
                                          "STANDING",
                                          "LAYING")
  
  second_data_set
  
}

## Writes given dataset to file
write_to_file <- function(data) {
  write.table(data, "tidy_dataset.txt" ,row.name=FALSE)
}
