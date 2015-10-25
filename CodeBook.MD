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
Here's how some of them compare with the original names.

                       NEW                                            ORIGINAL
               TimeBodyAcceleration-Mean()-X               tBodyAcc-mean()-X
               TimeBodyGyro-Mean()-X                       tBodyGyro-mean()-X
               FreqBodyBodyGyroJerkMagnitude-StDev()       fBodyBodyGyroJerkMag-std()      



* Created a tidy data frame which  with the average of each variable for each activity and each subject. The new tidy data frame has 180 observations and 88 variables in the wide format.
