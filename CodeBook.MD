# Code Book
 This code book describes the variables, the data, and any transformations or work that were performed to clean up the data called CodeBook.md.

## Original Data

The original data were derived from measurements taken while volunteers performed various activities. Further details are available at  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones:

The training data included the folowing files:

*  subject_train, containing the identifiers.
* X_train, containing training data (7352 obs x 561 var.)
* y_train, containing activity codes

Test test data included similar files, but with 2947 obs. .

In addition both training and test data contained folders called 'Inertial Signals'. Since the other data were derived from these, they are not required for analysis.

Others files provided feature names and activity names.

# Tidy Data Frame

* The original data were combine into a single data frame of 10299 obs. and 563 var. The extra two variables are for subject ID and Activity.

* Any variables containing measurements of mean or standard deviation were extracted into a new data frame with 10299 obs. and 88 var.

* Changed the acitivity codes to names in the data frame.

* Changed the variable names to be more descriptive,  including FreqMean.  
Here's how some of them compare with the original names. A full list 

                       NEW                                            ORIGINAL
               TimeBodyAcceleration-Mean()-X               tBodyAcc-mean()-X
               TimeBodyGyro-Mean()-X                       tBodyGyro-mean()-X
               FreqBodyBodyGyroJerkMagnitude-StDev()       fBodyBodyGyroJerkMag-std()      



* Created a tidy data frame which  with the average of each variable for each activity and each subject. The new tidy data frame has 180 observations and 88 variables in the wide format.

# Full List of variables

 [1] "subjectID"                                        "Activity"                                        
 [3] "TimeBodyAcceleration-Mean()-X" .................... "TimeBodyAcceleration-Mean()-Y"                   
 [5] "TimeBodyAcceleration-Mean()-Z" .................... "TimeGravityAcceleration-Mean()-X"                
 [7] "TimeGravityAcceleration-Mean()-Y" ................. "TimeGravityAcceleration-Mean()-Z"                
 [9] "TimeBodyAccelerationJerk-Mean()-X" ................ "TimeBodyAccelerationJerk-Mean()-Y"               
[11] "TimeBodyAccelerationJerk-Mean()-Z" ................ "TimeBodyGyro-Mean()-X"                           
[13] "TimeBodyGyro-Mean()-Y" ............................ "TimeBodyGyro-Mean()-Z"                           
[15] "TimeBodyGyroJerk-Mean()-X" ........................ "TimeBodyGyroJerk-Mean()-Y"                       
[17] "TimeBodyGyroJerk-Mean()-Z" ........................ "TimeBodyAccelerationMagnitude-Mean()"            
[19] "TimeGravityAccelerationMagnitude-Mean()" .......... "TimeBodyAccelerationJerkMagnitude-Mean()"        
[21] "TimeBodyGyroMagnitude-Mean()" ..................... "TimeBodyGyroJerkMagnitude-Mean()"                
[23] "FreqBodyAcceleration-Mean()-X" .................... "FreqBodyAcceleration-Mean()-Y"                   
[25] "FreqBodyAcceleration-Mean()-Z" .................... "FreqBodyAcceleration-MeanFreq()-X"               
[27] "FreqBodyAcceleration-MeanFreq()-Y"  ............... "FreqBodyAcceleration-MeanFreq()-Z"               
[29] "FreqBodyAccelerationJerk-Mean()-X"  ............... "FreqBodyAccelerationJerk-Mean()-Y"               
[31] "FreqBodyAccelerationJerk-Mean()-Z"  ............... "FreqBodyAccelerationJerk-MeanFreq()-X"           
[33] "FreqBodyAccelerationJerk-MeanFreq()-Y" ............ "FreqBodyAccelerationJerk-MeanFreq()-Z"           
[35] "FreqBodyGyro-Mean()-X" ............................ "FreqBodyGyro-Mean()-Y"                           
[37] "FreqBodyGyro-Mean()-Z" ............................ "FreqBodyGyro-MeanFreq()-X"                       
[39] "FreqBodyGyro-MeanFreq()-Y" ........................ "FreqBodyGyro-MeanFreq()-Z"                       
[41] "FreqBodyAccelerationMagnitude-Mean()" ............. "FreqBodyAccelerationMagnitude-MeanFreq()"        
[43] "FreqBodyBodyAccelerationJerkMagnitude-Mean()" ..... "FreqBodyBodyAccelerationJerkMagnitude-MeanFreq()"
[45] "FreqBodyBodyGyroMagnitude-Mean()"   ............... "FreqBodyBodyGyroMagnitude-MeanFreq()"            
[47] "FreqBodyBodyGyroJerkMagnitude-Mean()" ............. "FreqBodyBodyGyroJerkMagnitude-MeanFreq()"        
[49] "Angle(tBodyAccelerationMean,gravity)" ............. "Angle(tBodyAccelerationJerkMean),gravityMean)"   
[51] "Angle(tBodyGyroMean,gravityMean)" ................. "Angle(tBodyGyroJerkMean,gravityMean)"            
[53] "Angle(X,gravityMean)" ............................. "Angle(Y,gravityMean)"                            
[55] "Angle(Z,gravityMean)" ............................. "TimeBodyAcceleration-StDev()-X"                  
[57] "TimeBodyAcceleration-StDev()-Y" ................... "TimeBodyAcceleration-StDev()-Z"                  
[59] "TimeGravityAcceleration-StDev()-X" ................ "TimeGravityAcceleration-StDev()-Y"               
[61] "TimeGravityAcceleration-StDev()-Z" ................ "TimeBodyAccelerationJerk-StDev()-X"              
[63] "TimeBodyAccelerationJerk-StDev()-Y" ............... "TimeBodyAccelerationJerk-StDev()-Z"              
[65] "TimeBodyGyro-StDev()-X" ........................... "TimeBodyGyro-StDev()-Y"                          
[67] "TimeBodyGyro-StDev()-Z" ........................... "TimeBodyGyroJerk-StDev()-X"                      
[69] "TimeBodyGyroJerk-StDev()-Y" ....................... "TimeBodyGyroJerk-StDev()-Z"                      
[71] "TimeBodyAccelerationMagnitude-StDev()" ............ "TimeGravityAccelerationMagnitude-StDev()"        
[73] "TimeBodyAccelerationJerkMagnitude-StDev()" ........ "TimeBodyGyroMagnitude-StDev()"                   
[75] "TimeBodyGyroJerkMagnitude-StDev()" ................ "FreqBodyAcceleration-StDev()-X"                  
[77] "FreqBodyAcceleration-StDev()-Y" ................... "FreqBodyAcceleration-StDev()-Z"                  
[79] "FreqBodyAccelerationJerk-StDev()-X" ............... "FreqBodyAccelerationJerk-StDev()-Y"              
[81] "FreqBodyAccelerationJerk-StDev()-Z" ............... "FreqBodyGyro-StDev()-X"                          
[83] "FreqBodyGyro-StDev()-Y"  .......................... "FreqBodyGyro-StDev()-Z"                          
[85] "FreqBodyAccelerationMagnitude-StDev()" ............ "FreqBodyBodyAccelerationJerkMagnitude-StDev()"   
[87] "FreqBodyBodyGyroMagnitude-StDev()" ................ "FreqBodyBodyGyroJerkMagnitude-StDev()"      
