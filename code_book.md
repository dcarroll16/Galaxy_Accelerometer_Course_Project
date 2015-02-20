---
title: "code_book"
author: "DAPC"
date: "Friday, February 20, 2015"
output: html_document
---

The Merge_Sets function in the run_analysis.R script returns a space-deliminated file, GalaxySII_accel_and_gyro_means.txt, to your working directory with the following variables:

+ subject.....................an integer identifying the test subject
+ activity....................the activity type of the test subject
+ mean(tBodyAcc.mean.X).............average of the mean body acceleration in the x axis
+ mean(tBodyAcc.mean.Y).............average of the mean body acceleration in the y axis
+ mean(tBodyAcc.mean.Z).............average of the mean body acceleration in the z axis
+ mean(tBodyAcc.std.X)..............average of the standard deviation body acceleration in the x axis
+ mean(tBodyAcc.std.Y)..............average of the standard deviation body acceleration in the y axis
+ mean(tBodyAcc.std.Z)..............average of the standard deviation body acceleration in the z axis
+ mean(tGravityAcc.mean.X)..........average of the mean gravity acceleration in the x axis
+ mean(tGravityAcc.mean.Y)..........average of the mean gravity acceleration in the y axis
+ mean(tGravityAcc.mean.Z)..........average of the mean gravity acceleration in the z axis
+ mean(tGravityAcc.std.X)...........average of the standard deviation gravity acceleration in the x axis
+ mean(tGravityAcc.std.Y)...........average of the standard deviation gravity acceleration in the y axis
+ mean(tGravityAcc.std.Z)...........average of the standard deviation gravity acceleration in the z axis
+ mean(tBodyAccJerk.mean.X).........average of the mean of the body jerk acceleration in the x axis
+ mean(tBodyAccJerk.mean.Y).........average of the mean of the body jerk acceleration in the y axis
+ mean(tBodyAccJerk.mean.Z).........average of the mean of the body jerk acceleration in the z axis
+ mean(tBodyAccJerk.std.X)..........average of the standard deviation of the body jerk acceleration in the x axis
+ mean(tBodyAccJerk.std.Y)..........average of the standard deviation of the body jerk acceleration in the y axis
+ mean(tBodyAccJerk.std.Z)..........average of the standard deviation of the body jerk acceleration in the z axis
+ mean(tBodyGyro.mean.X)............average of the mean of the body gyroscope in the x axis
+ mean(tBodyGyro.mean.Y)............average of the mean of the body gyroscope in the y axis
+ mean(tBodyGyro.mean.Z)............average of the mean of the body gyroscope in the z axis
+ mean(tBodyGyro.std.X).............average of the standard deviation of the body gyroscope in the x axis
+ mean(tBodyGyro.std.Y).............average of the standard deviation of the body gyroscope in the y axis
+ mean(tBodyGyro.std.Z).............average of the standard deviation of the body gyroscope in the z axis
+ mean(tBodyGyroJerk.mean.X)........average of the mean of the body gyroscope jerk in the x axis
+ mean(tBodyGyroJerk.mean.Y)........average of the mean of the body gyroscope jerk in the y axis
+ mean(tBodyGyroJerk.mean.Z)........average of the mean of the body gyroscope jerk in the z axis
+ mean(tBodyGyroJerk.std.X).........average of the standard deviation of the body gyroscope jerk in the x axis
+ mean(tBodyGyroJerk.std.Y).........average of the standard deviation of the body gyroscope jerk in the y axis
+ mean(tBodyGyroJerk.std.Z).........average of the standard deviation of the body gyroscope jerk in the z axis
+ mean(tBodyAccMag.mean)............average of the mean of magnitude of the body acceleration
+ mean(tBodyAccMag.std).............average of the standard deviation of magnitude of the body acceleration
+ mean(tGravityAccMag.mean).........average of the mean of magnitude of the gravity acceleration
+ mean(tGravityAccMag.std)..........average of the standard deviation of magnitude of the gravity acceleration
+ mean(tBodyAccJerkMag.mean)........average of the mean of magnitude of the jerk acceleration
+ mean(tBodyAccJerkMag.std).........average of the standard deviation of magnitude of the jerk acceleration
+ mean(tBodyGyroMag.mean)...........average of the mean of magnitude of the body gyroscope
+ mean(tBodyGyroMag.std)............average of the standard deviation of magnitude of the body gyroscope
+ mean(tBodyGyroJerkMag.mean).......average of the mean of magnitude of the body gyroscope jerk
+ mean(tBodyGyroJerkMag.std)........average of the standard deviation of magnitude of the gyroscope jerk
+ mean(fBodyAcc.mean.X).............average of the mean of the FFT of body acceleration in the x axis
+ mean(fBodyAcc.mean.Y).............average of the mean of the FFT of body acceleration in the y axis
+ mean(fBodyAcc.mean.Z).............average of the mean of the FFT of body acceleration in the z axis
+ mean(fBodyAcc.std.X)..............average of the standard deviation of the FFT of body acceleration in the x axis
+ mean(fBodyAcc.std.Y)..............average of the standard deviation of the FFT of body acceleration in the y axis
+ mean(fBodyAcc.std.Z)..............average of the standard deviation of the FFT of body acceleration in the z axis
+ mean(fBodyAccJerk.mean.X).........average of the mean of the FFT of body jerk acceleration in the x axis
+ mean(fBodyAccJerk.mean.Y).........average of the mean of the FFT of body jerk acceleration in the y axis
+ mean(fBodyAccJerk.mean.Z).........average of the mean of the FFT of body jerk acceleration in the z axis
+ mean(fBodyAccJerk.std.X)..........average of the standard deviation of the FFT of body jerk acceleration in the x axis
+ mean(fBodyAccJerk.std.Y)..........average of the standard deviation of the FFT of body jerk acceleration in the y axis
+ mean(fBodyAccJerk.std.Z)..........average of the standard deviation of the FFT of body jerk acceleration in the z axis
+ mean(fBodyGyro.mean.X)............average of the mean of the FFT of body gyroscope in the x axis
+ mean(fBodyGyro.mean.Y)............average of the mean of the FFT of body gyroscope in the y axis
+ mean(fBodyGyro.mean.Z)............average of the mean of the FFT of body gyroscope in the z axis
+ mean(fBodyGyro.std.X).............average of the standard deviation of the FFT of body gyroscope in the x axis
+ mean(fBodyGyro.std.Y).............average of the standard deviation of the FFT of body gyroscope in the y axis
+ mean(fBodyGyro.std.Z).............average of the standard deviation of the FFT of body gyroscope in the z axis
+ mean(fBodyAccMag.mean)............average of the mean of the FFT of magnitude of the body acceleration
+ mean(fBodyAccMag.std).............average of the standard deviation of the FFT of magnitude of the body acceleration
+ mean(tBodyAccJerkMag.mean)........average of the mean of the FFT of magnitude of the jerk acceleration
+ mean(fBodyAccJerkMag.std).........average of the standard deviation of the FFT of magnitude of the jerk acceleration
+ mean(fBodyGyroMag.mean)...........average of the mean of the FFT of magnitude of the body gyroscope
+ mean(fBodyGyroMag.std)............average of the standard deviation of the FFT of magnitude of the body gyroscope
+ mean(fBodyGyroJerkMag.mean).......average of the mean of the FFT of magnitude of the body gyroscope jerk
+ mean(fBodyGyroJerkMag.std)........average of the standard deviation of the FFT of magnitude of the gyroscope jerk