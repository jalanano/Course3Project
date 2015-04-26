#Course 3 Project
####Getting and Cleaning Data Course Project



The purpose of this project is to demonstrate an ability to collect, work with, and clean a data set. An R script called 'run_analysis.R'
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

1. Reads the features.txt data and store it into a data frame.
2. Reads the train data files from the train subfolder (UCI HAR Dataset\train) and creates a data frame for 
    each of these files:
        subject_train.txt, Y_train.txt, X_train.txt 
3. Labels the columns for each of the data frames (dataframes: train_subject, train_y, train_x).
4. For the train_x data frame, gets the subset of data having columns with names containing "mean" or "std" string.
5. Combines the 3 data frames into 1 data frame (dataframe: train_combined).
6. Repeats a similar process (1-5) for the test data files (dataframe: test_combined).
7. Combined the two dataframe (train and test) into 1 data frame (dataframe: combined_traintest).
8. Substitutes the activity number value with the actual acitivity name.
9. Edit the column names to improve readability by:
    - removing symbols (-, ())
    - removing redundant words such as BodyBody
    - replace tBody with time_Body
    - replace tGravity with time_Gravity
    - replace fBody with frequency_Body
10. From the previous data set (dataframe: combined_traintest), create another data set containing the average of each measurement for each subject and activity (dataframe:data_summary).
11. Exports the new data set(dataframe:data_summary) to a file named (mean_per_measurement.txt) in the current directory.


**Note:**

You may read the new data set by running the code below:

        ```
        my_data<-read.table("mean_per_measurement.txt")
        View(my_data)
        ```

       

