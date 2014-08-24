#Code Book

The features selected come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The **acceleration signal** from the smartphone accelerometer X axis in standard **gravity units 'g'.**

The **body acceleration signal** obtained by subtracting the gravity from the total acceleration. 

The **angular velocity** vector measured by the gyroscope for each window sample. The **units are radians/second.** 

Features are normalized and bounded within [-1,1].

The **set of variables** that were estimated from these signals are **Mean** (Mean value) and **Std** (Standard deviation).

**The dataset TidyDataset contains 180 observations of 68 variables.**

The 180 observations come from **30 subjects** and from **6 activities.**


## Description of the variables

The **68 variables** (i.e. 2+66) are the following:

**Number Name                   Type  Range (Min, Max)**
* 01   **Activity**                 chr  "WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"
* 02   **Subject**                  int   1, 30
* 03   tBodyAccMeanX            num   0.2216, 0.3015
* 04   tBodyAccMeanY            num  -0.040514, -0.001308
* 05   tBodyAccMeanZ            num  -0.15251, -0.07538
* 06   tBodyAccStdX             num  -0.9961, 0.6269
* 07   tBodyAccStdY             num  -0.99024, 0.61694
* 08   tBodyAccStdZ             num  -0.9877, 0.6090
* 09   tGravityAccMeanX         num  -0.6800, 0.9745
* 10   tGravityAccMeanY         num  -0.47989, 0.95659
* 11   tGravityAccMeanZ         num  -0.49509, 0.95787
* 12   tGravityAccStdX          num  -0.9968, -0.8296
* 13   tGravityAccStdY          num  -0.9942, -0.6436
* 14   tGravityAccStdZ          num  -0.9910, -0.6102
* 15   tBodyAccJerkMeanX        num   0.04269, 0.13019
* 16   tBodyAccJerkMeanY        num  -0.0386872, 0.0568186
* 17   tBodyAccJerkMeanZ        num  -0.067458, 0.038053
* 18   tBodyAccJerkStdX         num  -0.9946, 0.5443
* 19   tBodyAccJerkStdY         num  -0.9895, 0.3553
* 20   tBodyAccJerkStdZ         num  -0.99329, 0.03102
* 21   tBodyGyroMeanX           num  -0.20578, 0.19270
* 22   tBodyGyroMeanY           num  -0.20421, 0.02747
* 23   tBodyGyroMeanZ           num  -0.07245, 0.17910
* 24   tBodyGyroStdX            num  -0.9943, 0.2677
* 25   tBodyGyroStdY            num  -0.9942, 0.4765
* 26   tBodyGyroStdZ            num  -0.9855, 0.5649
* 27   tBodyGyroJerkMeanX       num  -0.15721, -0.02209
* 28   tBodyGyroJerkMeanY       num  -0.07681, -0.01320
* 29   tBodyGyroJerkMeanZ       num  -0.092500, -0.006941
* 30   tBodyGyroJerkStdX        num  -0.9965, 0.1791
* 31   tBodyGyroJerkStdY        num  -0.9971, 0.2959
* 32   tBodyGyroJerkStdZ        num  -0.9954, 0.1932
* 33   tBodyAccMagMean          num  -0.9865, 0.6446
* 34   tBodyAccMagStd           num  -0.9865, 0.4284
* 35   tGravityAccMagMean       num  -0.9865, 0.6446
* 36   tGravityAccMagStd        num  -0.9865, 0.4284
* 37   tBodyAccJerkMagMean      num  -0.9928, 0.4345
* 38   tBodyAccJerkMagStd       num  -0.9946, 0.4506
* 39   tBodyGyroMagMean         num  -0.9807, 0.4180
* 40   tBodyGyroMagStd          num  -0.9814, 0.3000
* 41   tBodyGyroJerkMagMean     num  -0.99732, 0.08758
* 42   tBodyGyroJerkMagStd      num  -0.9977, 0.2502
* 43   fBodyAccMeanX            num  -0.9952, 0.5370
* 44   fBodyAccMeanY            num  -0.98903, 0.52419
* 45   fBodyAccMeanZ            num  -0.9895, 0.2807
* 46   fBodyAccStdX             num  -0.9966, 0.6585
* 47   fBodyAccStdY             num  -0.99068, 0.56019
* 48   fBodyAccStdZ             num  -0.9872, 0.6871
* 49   fBodyAccJerkMeanX        num  -0.9946, 0.4743
* 50   fBodyAccJerkMeanY        num  -0.9894, 0.2767
* 51   fBodyAccJerkMeanZ        num  -0.9920, 0.1578
* 52   fBodyAccJerkStdX         num  -0.9951, 0.4768
* 53   fBodyAccJerkStdY         num  -0.9905, 0.3498
* 54   fBodyAccJerkStdZ         num  -0.993108, -0.006236
* 55   fBodyGyroMeanX           num  -0.9931, 0.4750
* 56   fBodyGyroMeanY           num  -0.9940, 0.3288
* 57   fBodyGyroMeanZ           num  -0.9860, 0.4924
* 58   fBodyGyroStdX            num  -0.9947, 0.1966
* 59   fBodyGyroStdY            num  -0.9944, 0.6462
* 60   fBodyGyroStdZ            num  -0.9867, 0.5225
* 61   fBodyAccMagMean          num  -0.9868, 0.5866
* 62   fBodyAccMagStd           num  -0.9876, 0.1787
* 63   fBodyBodyAccJerkMagMean  num  -0.9940, 0.5384
* 64   fBodyBodyAccJerkMagStd   num  -0.9944, 0.3163
* 65   fBodyBodyGyroMagMean     num  -0.9865, 0.2040
* 66   fBodyBodyGyroMagStd      num  -0.9815, 0.2367
* 67   fBodyBodyGyroJerkMagMean num  -0.9976, 0.1466
* 68   fBodyBodyGyroJerkMagStd  num  -0.9976, 0.2878
