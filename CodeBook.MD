Getting-and-Cleaning-Data-Course Project
================================
This is to describe the variables, the data, and any transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.
Source Data

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Source:
================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 


Data Set Information:
================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information:
================================
For each record in the dataset it is provided: 

•	Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 

•	Triaxial Angular velocity from the gyroscope. 

•	A 561-feature vector with time and frequency domain variables. 

•	Its activity label. 

•	An identifier of the subject who carried out the experiment.

Transformations
================================
•	Created the train and test datasets adding them the subject and the activity.

•	Merged the training and the test sets to create one data set.

•	Set the column names

•	Extracted only the measurements on the mean and standard deviation for each measurement.

•	Set descriptive activity names to name the activities in the data set

•	Created the second, independent tidy data set with the average of each variable for each activity and each subject.



Data Structure:
================================
```
'data.frame':	10299 obs. of  68 variables:
 $ Activity_ID              : int  1 1 1 1 1 1 1 1 1 1 ...
 $ Activity                 : Factor w/ 6 levels "Walking","Walking Upstairs",..: 5 5 5 5 5 5 5 5 5 5 ...
 $ tbodyacc-mean-x          : num  0.289 0.278 0.28 0.279 0.277 ...
 $ tbodyacc-mean-y          : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
 $ tbodyacc-mean-z          : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
 $ tbodyacc-std-x           : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
 $ tbodyacc-std-y           : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
 $ tbodyacc-std-z           : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
 $ tgravityacc-mean-x       : num  0.963 0.967 0.967 0.968 0.968 ...
 $ tgravityacc-mean-y       : num  -0.141 -0.142 -0.142 -0.144 -0.149 ...
 $ tgravityacc-mean-z       : num  0.1154 0.1094 0.1019 0.0999 0.0945 ...
 $ tgravityacc-std-x        : num  -0.985 -0.997 -1 -0.997 -0.998 ...
 $ tgravityacc-std-y        : num  -0.982 -0.989 -0.993 -0.981 -0.988 ...
 $ tgravityacc-std-z        : num  -0.878 -0.932 -0.993 -0.978 -0.979 ...
 $ tbodyaccjerk-mean-x      : num  0.078 0.074 0.0736 0.0773 0.0734 ...
 $ tbodyaccjerk-mean-y      : num  0.005 0.00577 0.0031 0.02006 0.01912 ...
 $ tbodyaccjerk-mean-z      : num  -0.06783 0.02938 -0.00905 -0.00986 0.01678 ...
 $ tbodyaccjerk-std-x       : num  -0.994 -0.996 -0.991 -0.993 -0.996 ...
 $ tbodyaccjerk-std-y       : num  -0.988 -0.981 -0.981 -0.988 -0.988 ...
 $ tbodyaccjerk-std-z       : num  -0.994 -0.992 -0.99 -0.993 -0.992 ...
 $ tbodygyro-mean-x         : num  -0.0061 -0.0161 -0.0317 -0.0434 -0.034 ...
 $ tbodygyro-mean-y         : num  -0.0314 -0.0839 -0.1023 -0.0914 -0.0747 ...
 $ tbodygyro-mean-z         : num  0.1077 0.1006 0.0961 0.0855 0.0774 ...
 $ tbodygyro-std-x          : num  -0.985 -0.983 -0.976 -0.991 -0.985 ...
 $ tbodygyro-std-y          : num  -0.977 -0.989 -0.994 -0.992 -0.992 ...
 $ tbodygyro-std-z          : num  -0.992 -0.989 -0.986 -0.988 -0.987 ...
 $ tbodygyrojerk-mean-x     : num  -0.0992 -0.1105 -0.1085 -0.0912 -0.0908 ...
 $ tbodygyrojerk-mean-y     : num  -0.0555 -0.0448 -0.0424 -0.0363 -0.0376 ...
 $ tbodygyrojerk-mean-z     : num  -0.062 -0.0592 -0.0558 -0.0605 -0.0583 ...
 $ tbodygyrojerk-std-x      : num  -0.992 -0.99 -0.988 -0.991 -0.991 ...
 $ tbodygyrojerk-std-y      : num  -0.993 -0.997 -0.996 -0.997 -0.996 ...
 $ tbodygyrojerk-std-z      : num  -0.992 -0.994 -0.992 -0.993 -0.995 ...
 $ tbodyaccmag-mean         : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
 $ tbodyaccmag-std          : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
 $ tgravityaccmag-mean      : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
 $ tgravityaccmag-std       : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
 $ tbodyaccjerkmag-mean     : num  -0.993 -0.991 -0.989 -0.993 -0.993 ...
 $ tbodyaccjerkmag-std      : num  -0.994 -0.992 -0.99 -0.993 -0.996 ...
 $ tbodygyromag-mean        : num  -0.969 -0.981 -0.976 -0.982 -0.985 ...
 $ tbodygyromag-std         : num  -0.964 -0.984 -0.986 -0.987 -0.989 ...
 $ tbodygyrojerkmag-mean    : num  -0.994 -0.995 -0.993 -0.996 -0.996 ...
 $ tbodygyrojerkmag-std     : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...
 $ fbodyacc-mean-x          : num  -0.995 -0.997 -0.994 -0.995 -0.997 ...
 $ fbodyacc-mean-y          : num  -0.983 -0.977 -0.973 -0.984 -0.982 ...
 $ fbodyacc-mean-z          : num  -0.939 -0.974 -0.983 -0.991 -0.988 ...
 $ fbodyacc-std-x           : num  -0.995 -0.999 -0.996 -0.996 -0.999 ...
 $ fbodyacc-std-y           : num  -0.983 -0.975 -0.966 -0.983 -0.98 ...
 $ fbodyacc-std-z           : num  -0.906 -0.955 -0.977 -0.99 -0.992 ...
 $ fbodyaccjerk-mean-x      : num  -0.992 -0.995 -0.991 -0.994 -0.996 ...
 $ fbodyaccjerk-mean-y      : num  -0.987 -0.981 -0.982 -0.989 -0.989 ...
 $ fbodyaccjerk-mean-z      : num  -0.99 -0.99 -0.988 -0.991 -0.991 ...
 $ fbodyaccjerk-std-x       : num  -0.996 -0.997 -0.991 -0.991 -0.997 ...
 $ fbodyaccjerk-std-y       : num  -0.991 -0.982 -0.981 -0.987 -0.989 ...
 $ fbodyaccjerk-std-z       : num  -0.997 -0.993 -0.99 -0.994 -0.993 ...
 $ fbodygyro-mean-x         : num  -0.987 -0.977 -0.975 -0.987 -0.982 ...
 $ fbodygyro-mean-y         : num  -0.982 -0.993 -0.994 -0.994 -0.993 ...
 $ fbodygyro-mean-z         : num  -0.99 -0.99 -0.987 -0.987 -0.989 ...
 $ fbodygyro-std-x          : num  -0.985 -0.985 -0.977 -0.993 -0.986 ...
 $ fbodygyro-std-y          : num  -0.974 -0.987 -0.993 -0.992 -0.992 ...
 $ fbodygyro-std-z          : num  -0.994 -0.99 -0.987 -0.989 -0.988 ...
 $ fbodyaccmag-mean         : num  -0.952 -0.981 -0.988 -0.988 -0.994 ...
 $ fbodyaccmag-std          : num  -0.956 -0.976 -0.989 -0.987 -0.99 ...
 $ fbodybodyaccjerkmag-mean : num  -0.994 -0.99 -0.989 -0.993 -0.996 ...
 $ fbodybodyaccjerkmag-std  : num  -0.994 -0.992 -0.991 -0.992 -0.994 ...
 $ fbodybodygyromag-mean    : num  -0.98 -0.988 -0.989 -0.989 -0.991 ...
 $ fbodybodygyromag-std     : num  -0.961 -0.983 -0.986 -0.988 -0.989 ...
 $ fbodybodygyrojerkmag-mean: num  -0.992 -0.996 -0.995 -0.995 -0.995 ...
 $ fbodybodygyrojerkmag-std : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...
```

Actvitiy:
================================
```
•	walking
•	walkingupstairs
•	walkingdownstairs
•	sitting
•	laying
```

Data Dim:
================================
```
[1] 10299    68
```

 Summary:
================================

```
  Activity_ID                  Activity    tbodyacc-mean-x   tbodyacc-mean-y    tbodyacc-mean-z   
 Min.   : 1.00   Walking           :1722   Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.00000  
 1st Qu.: 9.00   Walking Upstairs  :1544   1st Qu.: 0.2626   1st Qu.:-0.02490   1st Qu.:-0.12102  
 Median :17.00   Walking Downstairs:1406   Median : 0.2772   Median :-0.01716   Median :-0.10860  
 Mean   :16.15   Sitting           :1777   Mean   : 0.2743   Mean   :-0.01774   Mean   :-0.10892  
 3rd Qu.:24.00   Standing          :1906   3rd Qu.: 0.2884   3rd Qu.:-0.01062   3rd Qu.:-0.09759  
 Max.   :30.00   Laying            :1944   Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.00000  
 tbodyacc-std-x    tbodyacc-std-y     tbodyacc-std-z    tgravityacc-mean-x tgravityacc-mean-y 
 Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000    Min.   :-1.000000  
 1st Qu.:-0.9924   1st Qu.:-0.97699   1st Qu.:-0.9791   1st Qu.: 0.8117    1st Qu.:-0.242943  
 Median :-0.9430   Median :-0.83503   Median :-0.8508   Median : 0.9218    Median :-0.143551  
 Mean   :-0.6078   Mean   :-0.51019   Mean   :-0.6131   Mean   : 0.6692    Mean   : 0.004039  
 3rd Qu.:-0.2503   3rd Qu.:-0.05734   3rd Qu.:-0.2787   3rd Qu.: 0.9547    3rd Qu.: 0.118905  
 Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000    Max.   : 1.000000  
 tgravityacc-mean-z tgravityacc-std-x tgravityacc-std-y tgravityacc-std-z tbodyaccjerk-mean-x
 Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000   
 1st Qu.:-0.11671   1st Qu.:-0.9949   1st Qu.:-0.9913   1st Qu.:-0.9866   1st Qu.: 0.06298   
 Median : 0.03680   Median :-0.9819   Median :-0.9759   Median :-0.9665   Median : 0.07597   
 Mean   : 0.09215   Mean   :-0.9652   Mean   :-0.9544   Mean   :-0.9389   Mean   : 0.07894   
 3rd Qu.: 0.21621   3rd Qu.:-0.9615   3rd Qu.:-0.9464   3rd Qu.:-0.9296   3rd Qu.: 0.09131   
 Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000   
 tbodyaccjerk-mean-y tbodyaccjerk-mean-z tbodyaccjerk-std-x tbodyaccjerk-std-y tbodyaccjerk-std-z
 Min.   :-1.000000   Min.   :-1.000000   Min.   :-1.0000    Min.   :-1.0000    Min.   :-1.0000   
 1st Qu.:-0.018555   1st Qu.:-0.031552   1st Qu.:-0.9913    1st Qu.:-0.9850    1st Qu.:-0.9892   
 Median : 0.010753   Median :-0.001159   Median :-0.9513    Median :-0.9250    Median :-0.9543   
 Mean   : 0.007948   Mean   :-0.004675   Mean   :-0.6398    Mean   :-0.6080    Mean   :-0.7628   
 3rd Qu.: 0.033538   3rd Qu.: 0.024578   3rd Qu.:-0.2912    3rd Qu.:-0.2218    3rd Qu.:-0.5485   
 Max.   : 1.000000   Max.   : 1.000000   Max.   : 1.0000    Max.   : 1.0000    Max.   : 1.0000   
 tbodygyro-mean-x   tbodygyro-mean-y   tbodygyro-mean-z   tbodygyro-std-x   tbodygyro-std-y  
 Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.04579   1st Qu.:-0.10399   1st Qu.: 0.06485   1st Qu.:-0.9872   1st Qu.:-0.9819  
 Median :-0.02776   Median :-0.07477   Median : 0.08626   Median :-0.9016   Median :-0.9106  
 Mean   :-0.03098   Mean   :-0.07472   Mean   : 0.08836   Mean   :-0.7212   Mean   :-0.6827  
 3rd Qu.:-0.01058   3rd Qu.:-0.05110   3rd Qu.: 0.11044   3rd Qu.:-0.4822   3rd Qu.:-0.4461  
 Max.   : 1.00000   Max.   : 1.00000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000  
 tbodygyro-std-z   tbodygyrojerk-mean-x tbodygyrojerk-mean-y tbodygyrojerk-mean-z tbodygyrojerk-std-x
 Min.   :-1.0000   Min.   :-1.00000     Min.   :-1.00000     Min.   :-1.00000     Min.   :-1.0000    
 1st Qu.:-0.9850   1st Qu.:-0.11723     1st Qu.:-0.05868     1st Qu.:-0.07936     1st Qu.:-0.9907    
 Median :-0.8819   Median :-0.09824     Median :-0.04056     Median :-0.05455     Median :-0.9348    
 Mean   :-0.6537   Mean   :-0.09671     Mean   :-0.04232     Mean   :-0.05483     Mean   :-0.7313    
 3rd Qu.:-0.3379   3rd Qu.:-0.07930     3rd Qu.:-0.02521     3rd Qu.:-0.03168     3rd Qu.:-0.4865    
 Max.   : 1.0000   Max.   : 1.00000     Max.   : 1.00000     Max.   : 1.00000     Max.   : 1.0000    
 tbodygyrojerk-std-y tbodygyrojerk-std-z tbodyaccmag-mean  tbodyaccmag-std   tgravityaccmag-mean
 Min.   :-1.0000     Min.   :-1.0000     Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000    
 1st Qu.:-0.9922     1st Qu.:-0.9926     1st Qu.:-0.9819   1st Qu.:-0.9822   1st Qu.:-0.9819    
 Median :-0.9548     Median :-0.9503     Median :-0.8746   Median :-0.8437   Median :-0.8746    
 Mean   :-0.7861     Mean   :-0.7399     Mean   :-0.5482   Mean   :-0.5912   Mean   :-0.5482    
 3rd Qu.:-0.6268     3rd Qu.:-0.5097     3rd Qu.:-0.1201   3rd Qu.:-0.2423   3rd Qu.:-0.1201    
 Max.   : 1.0000     Max.   : 1.0000     Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000    
 tgravityaccmag-std tbodyaccjerkmag-mean tbodyaccjerkmag-std tbodygyromag-mean tbodygyromag-std 
 Min.   :-1.0000    Min.   :-1.0000      Min.   :-1.0000     Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9822    1st Qu.:-0.9896      1st Qu.:-0.9907     1st Qu.:-0.9781   1st Qu.:-0.9775  
 Median :-0.8437    Median :-0.9481      Median :-0.9288     Median :-0.8223   Median :-0.8259  
 Mean   :-0.5912    Mean   :-0.6494      Mean   :-0.6278     Mean   :-0.6052   Mean   :-0.6625  
 3rd Qu.:-0.2423    3rd Qu.:-0.2956      3rd Qu.:-0.2733     3rd Qu.:-0.2454   3rd Qu.:-0.3940  
 Max.   : 1.0000    Max.   : 1.0000      Max.   : 1.0000     Max.   : 1.0000   Max.   : 1.0000  
 tbodygyrojerkmag-mean tbodygyrojerkmag-std fbodyacc-mean-x   fbodyacc-mean-y   fbodyacc-mean-z  
 Min.   :-1.0000       Min.   :-1.0000      Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9923       1st Qu.:-0.9922      1st Qu.:-0.9913   1st Qu.:-0.9792   1st Qu.:-0.9832  
 Median :-0.9559       Median :-0.9403      Median :-0.9456   Median :-0.8643   Median :-0.8954  
 Mean   :-0.7621       Mean   :-0.7780      Mean   :-0.6228   Mean   :-0.5375   Mean   :-0.6650  
 3rd Qu.:-0.5499       3rd Qu.:-0.6093      3rd Qu.:-0.2646   3rd Qu.:-0.1032   3rd Qu.:-0.3662  
 Max.   : 1.0000       Max.   : 1.0000      Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000  
 fbodyacc-std-x    fbodyacc-std-y     fbodyacc-std-z    fbodyaccjerk-mean-x fbodyaccjerk-mean-y
 Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000     Min.   :-1.0000    
 1st Qu.:-0.9929   1st Qu.:-0.97689   1st Qu.:-0.9780   1st Qu.:-0.9912     1st Qu.:-0.9848    
 Median :-0.9416   Median :-0.83261   Median :-0.8398   Median :-0.9516     Median :-0.9257    
 Mean   :-0.6034   Mean   :-0.52842   Mean   :-0.6179   Mean   :-0.6567     Mean   :-0.6290    
 3rd Qu.:-0.2493   3rd Qu.:-0.09216   3rd Qu.:-0.3023   3rd Qu.:-0.3270     3rd Qu.:-0.2638    
 Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000     Max.   : 1.0000    
 fbodyaccjerk-mean-z fbodyaccjerk-std-x fbodyaccjerk-std-y fbodyaccjerk-std-z fbodygyro-mean-x 
 Min.   :-1.0000     Min.   :-1.0000    Min.   :-1.0000    Min.   :-1.0000    Min.   :-1.0000  
 1st Qu.:-0.9873     1st Qu.:-0.9920    1st Qu.:-0.9865    1st Qu.:-0.9895    1st Qu.:-0.9853  
 Median :-0.9475     Median :-0.9562    Median :-0.9280    Median :-0.9590    Median :-0.8917  
 Mean   :-0.7436     Mean   :-0.6550    Mean   :-0.6122    Mean   :-0.7809    Mean   :-0.6721  
 3rd Qu.:-0.5133     3rd Qu.:-0.3203    3rd Qu.:-0.2361    3rd Qu.:-0.5903    3rd Qu.:-0.3837  
 Max.   : 1.0000     Max.   : 1.0000    Max.   : 1.0000    Max.   : 1.0000    Max.   : 1.0000  
 fbodygyro-mean-y  fbodygyro-mean-z  fbodygyro-std-x   fbodygyro-std-y   fbodygyro-std-z  
 Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9847   1st Qu.:-0.9851   1st Qu.:-0.9881   1st Qu.:-0.9808   1st Qu.:-0.9862  
 Median :-0.9197   Median :-0.8877   Median :-0.9053   Median :-0.9061   Median :-0.8915  
 Mean   :-0.7062   Mean   :-0.6442   Mean   :-0.7386   Mean   :-0.6742   Mean   :-0.6904  
 3rd Qu.:-0.4735   3rd Qu.:-0.3225   3rd Qu.:-0.5225   3rd Qu.:-0.4385   3rd Qu.:-0.4168  
 Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000  
 fbodyaccmag-mean  fbodyaccmag-std   fbodybodyaccjerkmag-mean fbodybodyaccjerkmag-std
 Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000          Min.   :-1.0000        
 1st Qu.:-0.9847   1st Qu.:-0.9829   1st Qu.:-0.9898          1st Qu.:-0.9907        
 Median :-0.8755   Median :-0.8547   Median :-0.9290          Median :-0.9255        
 Mean   :-0.5860   Mean   :-0.6595   Mean   :-0.6208          Mean   :-0.6401        
 3rd Qu.:-0.2173   3rd Qu.:-0.3823   3rd Qu.:-0.2600          3rd Qu.:-0.3082        
 Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000          Max.   : 1.0000        
 fbodybodygyromag-mean fbodybodygyromag-std fbodybodygyrojerkmag-mean fbodybodygyrojerkmag-std
 Min.   :-1.0000       Min.   :-1.0000      Min.   :-1.0000           Min.   :-1.0000         
 1st Qu.:-0.9825       1st Qu.:-0.9781      1st Qu.:-0.9921           1st Qu.:-0.9926         
 Median :-0.8756       Median :-0.8275      Median :-0.9453           Median :-0.9382         
 Mean   :-0.6974       Mean   :-0.7000      Mean   :-0.7798           Mean   :-0.7922         
 3rd Qu.:-0.4514       3rd Qu.:-0.4713      3rd Qu.:-0.6122           3rd Qu.:-0.6437         
 Max.   : 1.0000       Max.   : 1.0000      Max.   : 1.0000           Max.   : 1.0000

```
