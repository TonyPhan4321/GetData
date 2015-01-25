
## This code book only provides information regarding the data set created by run_analysis.R script, please consult the following files for information regarding original data set.
README.txt
features_info.txt

## The run_analysis.R script performs the following functions:
### Merges the training and the test sets to create one data set. Extracts only the measurements on the mean and standard deviation for each measurement. 

MergedData.txt
--------------

 [1] "subject"                   "activity"                  "tbodyacc-mean-x"          
 [4] "tbodyacc-mean-y"           "tbodyacc-mean-z"           "tbodyacc-std-x"           
 [7] "tbodyacc-std-y"            "tbodyacc-std-z"            "tgravityacc-mean-x"       
[10] "tgravityacc-mean-y"        "tgravityacc-mean-z"        "tgravityacc-std-x"        
[13] "tgravityacc-std-y"         "tgravityacc-std-z"         "tbodyaccjerk-mean-x"      
[16] "tbodyaccjerk-mean-y"       "tbodyaccjerk-mean-z"       "tbodyaccjerk-std-x"       
[19] "tbodyaccjerk-std-y"        "tbodyaccjerk-std-z"        "tbodygyro-mean-x"         
[22] "tbodygyro-mean-y"          "tbodygyro-mean-z"          "tbodygyro-std-x"          
[25] "tbodygyro-std-y"           "tbodygyro-std-z"           "tbodygyrojerk-mean-x"     
[28] "tbodygyrojerk-mean-y"      "tbodygyrojerk-mean-z"      "tbodygyrojerk-std-x"      
[31] "tbodygyrojerk-std-y"       "tbodygyrojerk-std-z"       "tbodyaccmag-mean"         
[34] "tbodyaccmag-std"           "tgravityaccmag-mean"       "tgravityaccmag-std"       
[37] "tbodyaccjerkmag-mean"      "tbodyaccjerkmag-std"       "tbodygyromag-mean"        
[40] "tbodygyromag-std"          "tbodygyrojerkmag-mean"     "tbodygyrojerkmag-std"     
[43] "fbodyacc-mean-x"           "fbodyacc-mean-y"           "fbodyacc-mean-z"          
[46] "fbodyacc-std-x"            "fbodyacc-std-y"            "fbodyacc-std-z"           
[49] "fbodyaccjerk-mean-x"       "fbodyaccjerk-mean-y"       "fbodyaccjerk-mean-z"      
[52] "fbodyaccjerk-std-x"        "fbodyaccjerk-std-y"        "fbodyaccjerk-std-z"       
[55] "fbodygyro-mean-x"          "fbodygyro-mean-y"          "fbodygyro-mean-z"         
[58] "fbodygyro-std-x"           "fbodygyro-std-y"           "fbodygyro-std-z"          
[61] "fbodyaccmag-mean"          "fbodyaccmag-std"           "fbodybodyaccjerkmag-mean" 
[64] "fbodybodyaccjerkmag-std"   "fbodybodygyromag-mean"     "fbodybodygyromag-std"     
[67] "fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std" 

### From the data set in above step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

TidyAverages.txt
----------------
> print(colnames(Tidy))
 [1] "subject"                   "activity"                  "tbodyacc-mean-x"          
 [4] "tbodyacc-mean-y"           "tbodyacc-mean-z"           "tbodyacc-std-x"           
 [7] "tbodyacc-std-y"            "tbodyacc-std-z"            "tgravityacc-mean-x"       
[10] "tgravityacc-mean-y"        "tgravityacc-mean-z"        "tgravityacc-std-x"        
[13] "tgravityacc-std-y"         "tgravityacc-std-z"         "tbodyaccjerk-mean-x"      
[16] "tbodyaccjerk-mean-y"       "tbodyaccjerk-mean-z"       "tbodyaccjerk-std-x"       
[19] "tbodyaccjerk-std-y"        "tbodyaccjerk-std-z"        "tbodygyro-mean-x"         
[22] "tbodygyro-mean-y"          "tbodygyro-mean-z"          "tbodygyro-std-x"          
[25] "tbodygyro-std-y"           "tbodygyro-std-z"           "tbodygyrojerk-mean-x"     
[28] "tbodygyrojerk-mean-y"      "tbodygyrojerk-mean-z"      "tbodygyrojerk-std-x"      
[31] "tbodygyrojerk-std-y"       "tbodygyrojerk-std-z"       "tbodyaccmag-mean"         
[34] "tbodyaccmag-std"           "tgravityaccmag-mean"       "tgravityaccmag-std"       
[37] "tbodyaccjerkmag-mean"      "tbodyaccjerkmag-std"       "tbodygyromag-mean"        
[40] "tbodygyromag-std"          "tbodygyrojerkmag-mean"     "tbodygyrojerkmag-std"     
[43] "fbodyacc-mean-x"           "fbodyacc-mean-y"           "fbodyacc-mean-z"          
[46] "fbodyacc-std-x"            "fbodyacc-std-y"            "fbodyacc-std-z"           
[49] "fbodyaccjerk-mean-x"       "fbodyaccjerk-mean-y"       "fbodyaccjerk-mean-z"      
[52] "fbodyaccjerk-std-x"        "fbodyaccjerk-std-y"        "fbodyaccjerk-std-z"       
[55] "fbodygyro-mean-x"          "fbodygyro-mean-y"          "fbodygyro-mean-z"         
[58] "fbodygyro-std-x"           "fbodygyro-std-y"           "fbodygyro-std-z"          
[61] "fbodyaccmag-mean"          "fbodyaccmag-std"           "fbodybodyaccjerkmag-mean" 
[64] "fbodybodyaccjerkmag-std"   "fbodybodygyromag-mean"     "fbodybodygyromag-std"     
[67] "fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std" 