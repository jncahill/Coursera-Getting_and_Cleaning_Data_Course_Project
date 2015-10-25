# Load packages.
library(data.table)
library(dplyr)

# Read in "features.txt"
features_names <- fread("./LABELS/features.txt")
head(features_names)
dim(features_names)

features <- features_names$V2 # the second column is a vector containing all the feature names
f_Names <- c("subjectID", "Activity", features) # add subject id number and activity lable

# Read in training data.
trainX <- fread("./train_data/X_train.txt")
trainy <- fread("./train_data/y_train.txt")
trainSub <- fread("./train_data/subject_train.txt")

dim(trainX) ; dim(trainy) ; dim(trainSub)

# Read in test data.
testX <- fread("./test_data/X_test.txt")
testy <- fread("./test_data/y_test.txt")
testSub <- fread("./test_data/subject_test.txt")

dim(testX) ; dim(test) ; dim(test)


#################################################################################################

# Step 1: Merges the training and the test sets to create one data set.

# combine training data into one data frame and add names
train <- cbind(trainSub, trainy, trainX)
names(train) <- f_Names
dim(train)

# combine test data into one data frame and add names.
test <- cbind(testSub, testy, testX)
names(test) <- f_Names
dim(test)

# Merge training set and test set and order data by activity lable.
df_combined <- rbind(train, test)
df_ordered <- df_combined[order(df_combined$subjectID)]


##################################################################################################

# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.

# Find column names for subsetted data frame
fn_mean <- grep("mean", f_Names, value = T)     # column names that contain "mean" in name
fn_Mean <- grep("Mean", f_Names, value = T)     # column names that contain "Mean" in name
fn_std <- grep("std", f_Names, value = T)       # column names that contain "std" in name
fNames_Extract <- c("subjectID", "Activity", fn_mean, fn_Mean, fn_std)

# Check for duplicate variables
length(fNames_Extract) == length(unique(fNames_Extract))
all(fNames_Extract == unique(fNames_Extract))

# Subset data frame to contain mean and standard deviation.
df <- subset(df_ordered, select = fNames_Extract)
names(df)
dim(df)


################################################################################################

# Step 3: Uses descriptive activity names to name the activities in the data set

# Change class of Activity to factor.
df$Activity <- as.factor(df$Activity)
class(df$Activity)

# Read in the activity labels file
act_lab <- fread("./LABELS/activity_labels.txt")

# Changes the factor levels from integers to descriptions
act_lab <- act_lab$V2
levels(df$Activity) <- act_lab


#################################################################################################

# Step 4: Appropriately labels the data set with descriptive variable names.

names(df)<-gsub("^t", "Time", names(df)); names(df)<-gsub("^f", "Freq", names(df));
names(df)<-gsub("std()", "StDev", names(df)); names(df)<-gsub("^a", "A", names(df));
names(df)<-gsub("jerk", "Jerk", names(df)); names(df)<-gsub("mean()", "Mean", names(df));
names(df)<-gsub("mean", "Mean", names(df)); names(df)<-gsub("Acc", "Acceleration", names(df));
names(df)<-gsub("Mag", "Magnitude", names(df))

names(df)

##################################################################################################

# Step 5: From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.

# Used the formaula method rather than the data frame method for aggregate().
# It keeps the column names intact.
Tidydf <- aggregate(.~ subjectID + Activity, df, mean)

write.table(Tidydf, "tidydf.txt", row.names = F)
