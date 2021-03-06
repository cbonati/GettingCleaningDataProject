GettingCleaningDataCourseProject
================================

This README.md file presents an **overview of the study** and **describes how the script** (run_analysis.R) **works**.

# A. The study
  One of the most exciting areas in all of data science right now is **wearable computing**.
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.
**The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.**

The experiments have been carried out with a group of **30 volunteers** within an age bracket of 19-48 years.
Each person performed **six activities** (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Using its embedded accelerometer and gyroscope, we captured **3-axial linear acceleration and 3-axial angular velocity** at a constant rate of 50Hz.
The experiments have been video-recorded to label the data manually.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


# B. The programming process

The R programming process follows **5 distinct steps**:

* **Merging** the training and the test sets to create one data set.

* **Extracting** the measurements on the mean and standard deviation for each measurement.

*NB: We only extracted features with 'mean()' or 'std()' in their name.
Our assumption is that features like 'fBodyAcc-meanFreq()-X' or 'angle(tBodyAccMean,gravity)' do not really represent a mean.
Thus, we selected 66 columns. [mean(): 33 matches ; std(): 33 matches]*

* **Using descriptive activity names** to name the activities in the dataset.

* **Labelling** the data set with descriptive variable names.

* **Creating a second tidy dataset** (TidyDataSet.txt) with the average of each variable for each activity and each subject.
