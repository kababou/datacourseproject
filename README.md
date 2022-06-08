==================================================================

Getting and Cleaning Data Course Project
Khalil Ababou
Version 2.0 - 08/06/2022

==================================================================

Based on data from 

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

==================================================================

Main Script "run_analysis.R": 
======

   Merges the training and the test sets to create one data set.
   
     ## Load Necessary Packages
     ## Read Data into Dataframes
     ## Rename columns of data-frames with one only column for readability
     ## Join Subject Identifiers with data
     ## Join Train & Test Data frames

   Extracts only the measurements on the mean and standard deviation for each measurement. 
  
     ## Creates Data Frame with Mean & Standard Deviation for each measurement
     ## Groups by Subject and activity and computes mean of measurements Mean & Standard deviation
   
   Uses descriptive activity names to name the activities in the data set
   Appropriately labels the data set with descriptive variable names. 
   
    ## Assign Activity Labels and reorder to make data head more explicit

   From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   
    ## Writes tidy data set "datasummary" into txt file for submission

   