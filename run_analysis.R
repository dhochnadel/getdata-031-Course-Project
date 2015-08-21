run_analysis <- function() {
  ## Read in the data tables
  subtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
  ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
  subtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
  ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
  
  ##Extract columns from xtest/xtrain involving means and SDs
  means <- c(1,2,3,41,42,43,81,82,83,121,122,123,161,162,
           163,201,214,227,240,253,266,267,268,345,346,
           347,424,425,426,503,516,529,542)
  SDs <- c(4,5,6,44,45,46,84,85,86,124,125,126,164,165,
           166,202,215,228,241,254,269,270,271,348,349,
           350,427,428,429,504,517,530,543)
  xtest <- xtest[c(means, SDs)]
  xtrain <- xtrain[c(means, SDs)]
  
  ##Bind the various tables
  testdata <- cbind(subtest, ytest, xtest)
  traindata <- cbind(subtrain, ytrain, xtrain)
  data <- rbind(testdata, traindata)
  
  ##Label columns of data set
  columns <- c("Subject", "Activity", "XBodyAccMean", 
               "YBodyAccMean", "ZBodyAccMean", 
               "XBodyAccSD", "YBodyAccSD", "ZBodyAccSD",
               "XGravAccMean", "YGravAccMean", 
               "ZGravAccMean", "XGravAccSD", 
               "YGravAccSD", "ZGravAccSD",
               "XBodyJerkMean", "YBodyJerkMean",
               "ZBodyJerkMean", "XBodyJerkSD",
               "YBodyJerkSD", "ZBodyJerkSD",
               "XGyroAccMean", "YGyroAccMean",
               "ZGyroAccMean", "XGyroAccSD",
               "YGyroAccSD", "ZGyroAccSD",
               "XGyroJerkMean", "YGyroJerkMean",
               "ZGyroJerkMean", "XGyroJerkSD",
               "YGyroJerkSD", "ZGyroJerkSD",
               "BodyAccMagMean", "BodyAccMagSD",
               "GravAccMagMean", "GravAccMagSD",
               "BodyJerkMagMean", "BodyJerkMagSD",
               "GyroMagMean", "GyroMagSD",
               "GyroJerkMagMean", "GyroJerkMagSD",
               "F_XBodyAccMean", "F_YBodyAccMean",
               "F_ZBodyAccMean", "F_XBodyAccSD",
               "F_YBodyAccSD", "F_ZBodyAccSD",
               "F_XBodyJerkMean", "F_YBodyJerkMean",
               "F_ZBodyJerkMean", "F_XBodyJerkSD",
               "F_YBodyJerkSD", "F_ZBodyJerkSD",
               "F_XGyroAccMean", "F_YGyroAccMean",
               "F_ZGyroAccMean", "F_XGyroAccSD",
               "F_YGyroAccSD", "F_ZGyroAccSD",
               "F_BodyAccMagMean", "F_BodyAccMagSD",
               "F_BodyJerkMagMean", "F_BodyJerkMagSD",
               "F_GyroAccMagMean", "F_GyroAccMagSD",
               "F_GyroJerkMagMean", "F_GyroJerkMagSD")
  colnames(data) <- columns
  
  #Rename activity row
  activityorig <- data$Activity
  activity <- data$Activity
  activity <- gsub(1, "Walking", activity)
  activity <- gsub(2 ,"Walking Upstairs", activity)
  activity <- gsub(3, "Walking Downstairs", activity)
  activity <- gsub(4, "Sitting", activity)
  activity <- gsub(5, "Standing", activity)
  activity <- gsub(6, "Laying Down", activity)
  data$Activity <- activity
  
  ##The table "data" is now complete for steps 1-4
  ##of the coursera getdata-031 course project
  
  ##This portion of the code is to complete step 5
  ##of the course project
  sub_act <- data[,c(1,2)]
  data$Activity <- activityorig ##Numbers for activities
                                ##for for loops
  mymeans <- c()
  
  for (i in 1:30) {
    for (j in 1:6) {
      datasubset <- data[data$Subject == i & 
                           data$Activity == j, 3:68]
      meansrow <- colMeans(datasubset)
      mymeans <- rbind(mymeans, meansrow)
    }
  }
  
  data$Activity <- activity
  mydata <- cbind(unique(sub_act), mymeans)
  rownames(mydata) <- 1:180 ##Renumber rows
  
  ##Output the modified data set
  return(mydata)
}