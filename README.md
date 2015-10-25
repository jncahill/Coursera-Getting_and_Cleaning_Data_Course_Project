# Getting and Cleaning Data Course Project

This repositary contains information about the course project for Getting and Cleaning Data  course on Coursera.org. 
## Overview
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The submission will be evaluated by peers. The submission includes:
*  a script which was created to produce the tidy data frame, tidydf.R., a code book and readme files.
* a link to a Github repository containing the script, a code book and this README files.

## Original Data
. The data was supplied from the web page http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
and the download link is https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Variables
There were 561 variables in the original data which were reduced to 86 for the final tidy data frame. In adition two variables were added to identify volunteers (subjectID) and activities(Activity), to make the total number of variables 88. Further information about variables can be found in the code book and in the files in the original data download.

## Files
There are three files in the repository.
* README.md
* CodeBook.md
* run_analysis.R
# tidydf.R
Explanation of how the script works are contained in the comments in the script itself.
