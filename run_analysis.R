Merge_Sets <- function(){
        #This function merges the datasets and labels and returns a txt file with the 
        #means of the average and stdev accelerometer and gyroscope data.
        
        #See the readme.md file on the requirements to get this to run properly.
        
        library(plyr)           #make sure you have these two packages installed.
        library(dplyr)
        
        variable_file <- "UCI HAR Dataset/features.txt"
        variables <- read.table(variable_file, sep=" ", colClasses=c("integer", "character"), 
                                col.names=c("label", "variable"))
        #clean up the variable titles to remove extranious . and () characters
        variables[,2] <- gsub("-",".", gsub("\\()","", variables[,2]))
        
        #Gets the data from both the training and test datasets and binds them together
        #in one data frame.  This uses the text ids collected from the features.txt file
        #as the column names of the x.df dataframe.
        x_train_file <- "UCI HAR Dataset/train/X_train.txt"
        x_test_file <- "UCI HAR Dataset/test/X_test.txt"
        x.df <- rbind(read.table(x_train_file, colClasses="numeric", col.names=variables[,2]),
                     read.table(x_test_file, colClasses="numeric", col.names=variables[,2]))
        
        #gives a subset of x.df where the data is only from a mean() or std()
        cols_to_include <- grepl("mean|std", variables[,2]) & 
                !grepl("meanFreq[a-zA-z]*", variables[,2])
        x.df <- x.df[,cols_to_include]
        
        #gets the subject data from both training and test datasets and binds them together
        #in one data frame
        sub_train_file <- "UCI HAR Dataset/train/subject_train.txt"
        sub_test_file <- "UCI HAR Dataset/test/subject_test.txt"        
        sub.df <- rbind(read.table(sub_train_file, colClasses="integer", col.names="subject"),
                         read.table(sub_test_file, colClasses="integer", col.names="subject"))
        
        #gets the activity data from both training and test datasets and binds them together
        #in one data frame
        y_train_file <- "UCI HAR Dataset/train/Y_train.txt"
        y_test_file <- "UCI HAR Dataset/test/Y_test.txt"
        y.df <- rbind(read.table(y_train_file, colClasses="factor", col.names="activity"),
                      read.table(y_test_file, colClasses="factor", col.names="activity"))
        
        
        
        #read the activity labels
        label_file <- "UCI HAR Dataset/activity_labels.txt"
        labels <- read.table(label_file, sep=" ", colClasses=c("integer", "character"), 
                             col.names=c("label", "name"))
        
        #changes the levels of the factor (1,2,3...) to 
        #meaningful character levels of (walking, walking_upstairs, ...)
        y.df[,1] <- mapvalues(y.df[,1], from=labels[,1], to=labels[,2])

        #merges the subjec data, activity data, and accelerometer means and stdevs
        #into a single dataframe
        complete.df <- cbind(sub.df, y.df, x.df) 
        
        complete.tbl <- tbl_df(complete.df) #converts to a data table
        
        #calculates the mean of each column by the grouping
        mean_stats.tbl <- complete.tbl %>% group_by(subject, activity) %>% 
                summarise_each(funs(mean))
                        
        #changes the column names to reflect the mean calculation
        colnames(mean_stats.tbl)<-c("subject", "activity", paste("mean(", 
                                        colnames(mean_stats.tbl[3:68]), ")", sep=""))
        
        #writes the completed dataframe to a file in the working directory
        fname="GalaxySII_accel_and_gyro_means.txt"
        write.table(mean_stats.tbl, file=fname, row.names=FALSE)
}
