## Getting and Cleaning Data Course Project (August 2014)

## 1. Merging the training and the test sets to create one data set.
## The files are in our working directory.
TrainX <- read.table("X_train.txt")                ## dim:  7352 x 561
TestX <- read.table("X_test.txt")                  ## dim:  2947 x 561
MergedX <- rbind(TrainX,TestX)                     ## dim: 10299 x 561

TrainY <- read.table("Y_train.txt")                ## dim:  7352 x 1
TestY <- read.table("Y_test.txt")                  ## dim:  2947 x 1
MergedY <- rbind(TrainY,TestY)                     ## dim: 10299 x 1

SubjectTrain <- read.table("subject_train.txt")    ## dim:  7352 x 1
SubjectTest <- read.table("subject_test.txt")      ## dim:  7352 x 1
MergedSubject <- rbind(SubjectTrain,SubjectTest)   ## dim: 10299 x 1

Merged <- cbind(MergedX,MergedY,MergedSubject)     ## dim: 10299 x (561+1+1)


## 2. Extracting the measurements on the mean and standard deviation for each measurement.
## NB: We only extraxct features with 'mean()' or 'std()' in their name.
## Our assumption is that features like 'fBodyAcc-meanFreq()-X' or 'angle(tBodyAccMean,gravity)' do not really represent a mean.
## Thus, we select 66 columns. [mean(): 33 matches ; std(): 33 matches]
mycol <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543,562,563)
Merged68 <- Merged[,mycol]  ## dim(Merged68) : 10299 x (66+1+1)


## 3. Using descriptive activity names to name the activities in the data set.
Merged68$V1.1[Merged68$V1.1 == 1] <- "WALKING"
Merged68$V1.1[Merged68$V1.1 == 2] <- "WALKING_UPSTAIRS"
Merged68$V1.1[Merged68$V1.1 == 3] <- "WALKING_DOWNSTAIRS"
Merged68$V1.1[Merged68$V1.1 == 4] <- "SITTING"
Merged68$V1.1[Merged68$V1.1 == 5] <- "STANDING"
Merged68$V1.1[Merged68$V1.1 == 6] <- "LAYING"


## 4. Labelling the data set with descriptive variable names.
features <- read.table("features.txt")              ## dim: 561 x 2
features[,2] <- gsub("-", "", features[,2])
features[,2] <- gsub(",", "", features[,2])
features[,2] <- gsub("()\\()", "", features[,2])
features[,2] <- gsub("mean", "Mean", features[,2])
features[,2] <- gsub("std", "Std", features[,2])
series66 <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)
features66 <- features[series66,2]
names(Merged68) <- c(features66, "Activity","Subject")


## 5. Createing a second tidy data set with the average of each variable for each activity and each subject.
SecondDataSet <- data.frame() ## dim: 180 x (1+1+66) 
SecondDataSet <- aggregate(Merged68[,1:66] , by=Merged68[,c("Activity","Subject")], FUN=mean)
print(SecondDataSet)

write.table(SecondDataSet, file="TidyDataSet.txt", row.name=FALSE)