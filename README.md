---
title: "README"
author: "DAPC"
date: "Friday, February 20, 2015"
output: html_document
---

####Summary
The run_analysis.R script contains a function, Merge_Sets(), that takes the data from the "Human Activity Recognition Using Smartphones Dataset" and returns the means of the acceleration and gyroscope means and standard deviation data by the subject and activity type of the study.

####References
Details about the original study and dataset can be found at <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>  

####Requirements
For this script to work correctly, you need:

1. The **plyr** and **dplry** packages.  Make sure these are installed.  If not, install these two packages from the CRAN repository.
2. A folder in your working directory named, "UCI HAR Dataset/" that includes the data files from the original study.  If you extract the UCI HAR Dataset folder from the "UCI HAR Dataset.zip" file found at the link above into your working directory, the files and folder structure will be correct for running this script.  The files and folder structure necessary for this script are as follows:
    + /UCI HAR Dataset/features.txt
    + /UCI HAR Dataset/activity_labels.txt
    + /UCI HAR Dataset/test/subject_test.txt
    + /UCI HAR Dataset/test/X_test.txt
    + /UCI HAR Dataset/test/y_test.txt
    + /UCI HAR Dataset/train/subject_train.txt
    + /UCI HAR Dataset/train/X_train.txt
    + /UCI HAR Dataset/train/y_train.txt
    


####The MERGE_Sets() function
The study mentioned above has the data split into multiple files.  This function takes these files and merges them into a tidy dataset.  It then will calculate the average of all of the means and standard deviations collected by the study for the individual activities and subject combinations tested in the study.  It will write a *space* deliminated text file titled, "GalaxySII_accel_and_gyro_means.txt" to your working directory that has the averages by subject and activity.

For a list of all of the resultant variables, see the code_book.MD file.  A full list of the original variables in the study as well as their descriptions can be found in the features.txt and features_info.txt files.
