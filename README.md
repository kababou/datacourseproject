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

<<<<<<< HEAD
   
=======
Notes: 
======


License:
========
Use of the underlying dataset must be acknowledged by referencing the following publication:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
>>>>>>> cd26fe01c10f28ea30d18cffdee1927b4deb3d71
