# Course3Project
##Getting and Cleaning Data Course Project


The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. An R script called 'run_analysis.R'
is created for this purpose.


**Source Data:**

The data used for the run_analysis script can be found in the link below:

(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 


**Directions:**
For the script to work, please follow the steps below:

1. Download the data from the link above and save it in your local directory.
2. Extract the file.
3. Using R or RStudio, point your working directory to the extracted file named **UCI HAR Dataset** folder.
4. Run the run_analysis.R script.


**The Script Flow Description:**

*Loads all data into separate data frames

    - Reads the features.txt data and store it into a data frame
    - Reads the train data files from the train subfolder (UCI HAR Dataset\train) and creates a data frame for 
    each of these files:
        subject_train.txt, Y_train.txt, X_train.txt

    - Reads the test data files from the test subfolder (UCI HAR Dataset\train) and creates a data frame for each of these files:
        subject_test.txt, Y_test.txt, X_test.txt
       
