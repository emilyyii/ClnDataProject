# CODE BOOK: Human Activity Recognition Using Smartphones Data Set #
---
## Source of Data ##

- Original data set:[original data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
- Original description: [database](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Data Package ##
The dataset includes the following files:
> **README.txt**
> **features_info.txt**: Shows information about the variables used on the feature vector
> **features.txt**: List of all features
> **activity_labels.txt**: Links the class labels with their activity name
> **train/X_train.txt**: Training set
> **train/y_train.txt**: Training labels
> **test/X_test.txt**: Test set
> **test/y_test.txt**: Test labels

The following files are available for the train and test data. Their descriptions are equivalent.

> **train/subject_train.txt**: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
> **train/Inertial Signals/total_acc_x_train.txt**: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the **total_acc_x_train.txt** and **total_acc_z_train.txt** files for the Y and Z axis
> **train/Inertial Signals/body_acc_x_train.txt**: The body acceleration signal obtained by subtracting the gravity from the total acceleration
> **train/Inertial Signals/body_gyro_x_train.txt**: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

## Variables Names ##
The data set consists of 68 variables. 

	names(result)

	 [1] "SubjectID"                                     "ActivityName"                                 
	 [3] "time.BodyAccelerometer.mean.X"                 "time.BodyAccelerometer.mean.Y"                
	 [5] "time.BodyAccelerometer.mean.Z"                 "time.BodyAccelerometer.std.X"                 
	 [7] "time.BodyAccelerometer.std.Y"                  "time.BodyAccelerometer.std.Z"                 
	 [9] "time.GravityAccelerometer.mean.X"              "time.GravityAccelerometer.mean.Y"             
	[11] "time.GravityAccelerometer.mean.Z"              "time.GravityAccelerometer.std.X"              
	[13] "time.GravityAccelerometer.std.Y"               "time.GravityAccelerometer.std.Z"              
	[15] "time.BodyAccelerometerJerk.mean.X"             "time.BodyAccelerometerJerk.mean.Y"            
	[17] "time.BodyAccelerometerJerk.mean.Z"             "time.BodyAccelerometerJerk.std.X"             
	[19] "time.BodyAccelerometerJerk.std.Y"              "time.BodyAccelerometerJerk.std.Z"             
	[21] "time.BodyGyroscope.mean.X"                     "time.BodyGyroscope.mean.Y"                    
	[23] "time.BodyGyroscope.mean.Z"                     "time.BodyGyroscope.std.X"                     
	[25] "time.BodyGyroscope.std.Y"                      "time.BodyGyroscope.std.Z"                     
	[27] "time.BodyGyroscopeJerk.mean.X"                 "time.BodyGyroscopeJerk.mean.Y"                
	[29] "time.BodyGyroscopeJerk.mean.Z"                 "time.BodyGyroscopeJerk.std.X"                 
	[31] "time.BodyGyroscopeJerk.std.Y"                  "time.BodyGyroscopeJerk.std.Z"                 
	[33] "time.BodyAccelerometerMagnitude.mean"          "time.BodyAccelerometerMagnitude.std"          
	[35] "time.GravityAccelerometerMagnitude.mean"       "time.GravityAccelerometerMagnitude.std"       
	[37] "time.BodyAccelerometerJerkMagnitude.mean"      "time.BodyAccelerometerJerkMagnitude.std"      
	[39] "time.BodyGyroscopeMagnitude.mean"              "time.BodyGyroscopeMagnitude.std"              
	[41] "time.BodyGyroscopeJerkMagnitude.mean"          "time.BodyGyroscopeJerkMagnitude.std"          
	[43] "frequency.BodyAccelerometer.mean.X"            "frequency.BodyAccelerometer.mean.Y"           
	[45] "frequency.BodyAccelerometer.mean.Z"            "frequency.BodyAccelerometer.std.X"            
	[47] "frequency.BodyAccelerometer.std.Y"             "frequency.BodyAccelerometer.std.Z"            
	[49] "frequency.BodyAccelerometerJerk.mean.X"        "frequency.BodyAccelerometerJerk.mean.Y"       
	[51] "frequency.BodyAccelerometerJerk.mean.Z"        "frequency.BodyAccelerometerJerk.std.X"        
	[53] "frequency.BodyAccelerometerJerk.std.Y"         "frequency.BodyAccelerometerJerk.std.Z"        
	[55] "frequency.BodyGyroscope.mean.X"                "frequency.BodyGyroscope.mean.Y"               
	[57] "frequency.BodyGyroscope.mean.Z"                "frequency.BodyGyroscope.std.X"                
	[59] "frequency.BodyGyroscope.std.Y"                 "frequency.BodyGyroscope.std.Z"                
	[61] "frequency.BodyAccelerometerMagnitude.mean"     "frequency.BodyAccelerometerMagnitude.std"     
	[63] "frequency.BodyAccelerometerJerkMagnitude.mean" "frequency.BodyAccelerometerJerkMagnitude.std" 
	[65] "frequency.BodyGyroscopeMagnitude.mean"         "frequency.BodyGyroscopeMagnitude.std"         
	[67] "frequency.BodyGyroscopeJerkMagnitude.mean"     "frequency.BodyGyroscopeJerkMagnitude.std"

## Statistical Summary ##
The following box shows a statistical summary for each of the variables in the resulted tidy_data data set.

	 summary(result)

	   SubjectID                ActivityName time.BodyAccelerometer.mean.X time.BodyAccelerometer.mean.Y
	 Min.   : 1.0   LAYING            :30    Min.   :0.2216                Min.   :-0.040514            
	 1st Qu.: 8.0   SITTING           :30    1st Qu.:0.2712                1st Qu.:-0.020022            
	 Median :15.5   STANDING          :30    Median :0.2770                Median :-0.017262            
	 Mean   :15.5   WALKING           :30    Mean   :0.2743                Mean   :-0.017876            
	 3rd Qu.:23.0   WALKING_DOWNSTAIRS:30    3rd Qu.:0.2800                3rd Qu.:-0.014936            
	 Max.   :30.0   WALKING_UPSTAIRS  :30    Max.   :0.3015                Max.   :-0.001308            

	 time.BodyAccelerometer.mean.Z time.BodyAccelerometer.std.X time.BodyAccelerometer.std.Y time.BodyAccelerometer.std.Z
	 Min.   :-0.15251              Min.   :-0.9961              Min.   :-0.99024             Min.   :-0.9877             
	 1st Qu.:-0.11207              1st Qu.:-0.9799              1st Qu.:-0.94205             1st Qu.:-0.9498             
	 Median :-0.10819              Median :-0.7526              Median :-0.50897             Median :-0.6518             
	 Mean   :-0.10916              Mean   :-0.5577              Mean   :-0.46046             Mean   :-0.5756             
	 3rd Qu.:-0.10443              3rd Qu.:-0.1984              3rd Qu.:-0.03077             3rd Qu.:-0.2306             
	 Max.   :-0.07538              Max.   : 0.6269              Max.   : 0.61694             Max.   : 0.6090       
      
	 time.GravityAccelerometer.mean.X time.GravityAccelerometer.mean.Y time.GravityAccelerometer.mean.Z
	 Min.   :-0.6800                  Min.   :-0.47989                 Min.   :-0.49509                
	 1st Qu.: 0.8376                  1st Qu.:-0.23319                 1st Qu.:-0.11726                
	 Median : 0.9208                  Median :-0.12782                 Median : 0.02384                
	 Mean   : 0.6975                  Mean   :-0.01621                 Mean   : 0.07413                
	 3rd Qu.: 0.9425                  3rd Qu.: 0.08773                 3rd Qu.: 0.14946                
	 Max.   : 0.9745                  Max.   : 0.95659                 Max.   : 0.95787                

	 time.GravityAccelerometer.std.X time.GravityAccelerometer.std.Y time.GravityAccelerometer.std.Z
	 Min.   :-0.9968                 Min.   :-0.9942                 Min.   :-0.9910                
	 1st Qu.:-0.9825                 1st Qu.:-0.9711                 1st Qu.:-0.9605                
	 Median :-0.9695                 Median :-0.9590                 Median :-0.9450                
	 Mean   :-0.9638                 Mean   :-0.9524                 Mean   :-0.9364                
	 3rd Qu.:-0.9509                 3rd Qu.:-0.9370                 3rd Qu.:-0.9180                
	 Max.   :-0.8296                 Max.   :-0.6436                 Max.   :-0.6102                

	 time.BodyAccelerometerJerk.mean.X time.BodyAccelerometerJerk.mean.Y time.BodyAccelerometerJerk.mean.Z
	 Min.   :0.04269                   Min.   :-0.0386872                Min.   :-0.067458                
	 1st Qu.:0.07396                   1st Qu.: 0.0004664                1st Qu.:-0.010601                
	 Median :0.07640                   Median : 0.0094698                Median :-0.003861                
	 Mean   :0.07947                   Mean   : 0.0075652                Mean   :-0.004953                
	 3rd Qu.:0.08330                   3rd Qu.: 0.0134008                3rd Qu.: 0.001958                
	 Max.   :0.13019                   Max.   : 0.0568186                Max.   : 0.038053         
       
	 time.BodyAccelerometerJerk.std.X time.BodyAccelerometerJerk.std.Y time.BodyAccelerometerJerk.std.Z
	 Min.   :-0.9946                  Min.   :-0.9895                  Min.   :-0.99329                
	 1st Qu.:-0.9832                  1st Qu.:-0.9724                  1st Qu.:-0.98266                
	 Median :-0.8104                  Median :-0.7756                  Median :-0.88366                
	 Mean   :-0.5949                  Mean   :-0.5654                  Mean   :-0.73596                
	 3rd Qu.:-0.2233                  3rd Qu.:-0.1483                  3rd Qu.:-0.51212                
	 Max.   : 0.5443                  Max.   : 0.3553                  Max.   : 0.03102            
    
	 time.BodyGyroscope.mean.X time.BodyGyroscope.mean.Y time.BodyGyroscope.mean.Z time.BodyGyroscope.std.X
	 Min.   :-0.20578          Min.   :-0.20421          Min.   :-0.07245          Min.   :-0.9943         
	 1st Qu.:-0.04712          1st Qu.:-0.08955          1st Qu.: 0.07475          1st Qu.:-0.9735         
	 Median :-0.02871          Median :-0.07318          Median : 0.08512          Median :-0.7890         
	 Mean   :-0.03244          Mean   :-0.07426          Mean   : 0.08744          Mean   :-0.6916         
	 3rd Qu.:-0.01676          3rd Qu.:-0.06113          3rd Qu.: 0.10177          3rd Qu.:-0.4414         
	 Max.   : 0.19270          Max.   : 0.02747          Max.   : 0.17910          Max.   : 0.2677      
   
	 time.BodyGyroscope.std.Y time.BodyGyroscope.std.Z time.BodyGyroscopeJerk.mean.X time.BodyGyroscopeJerk.mean.Y
	 Min.   :-0.9942          Min.   :-0.9855          Min.   :-0.15721              Min.   :-0.07681             
	 1st Qu.:-0.9629          1st Qu.:-0.9609          1st Qu.:-0.10322              1st Qu.:-0.04552             
	 Median :-0.8017          Median :-0.8010          Median :-0.09868              Median :-0.04112             
	 Mean   :-0.6533          Mean   :-0.6164          Mean   :-0.09606              Mean   :-0.04269             
	 3rd Qu.:-0.4196          3rd Qu.:-0.3106          3rd Qu.:-0.09110              3rd Qu.:-0.03842             
	 Max.   : 0.4765          Max.   : 0.5649          Max.   :-0.02209              Max.   :-0.01320     
        
	 time.BodyGyroscopeJerk.mean.Z time.BodyGyroscopeJerk.std.X time.BodyGyroscopeJerk.std.Y time.BodyGyroscopeJerk.std.Z
	 Min.   :-0.092500             Min.   :-0.9965              Min.   :-0.9971              Min.   :-0.9954             
	 1st Qu.:-0.061725             1st Qu.:-0.9800              1st Qu.:-0.9832              1st Qu.:-0.9848             
	 Median :-0.053430             Median :-0.8396              Median :-0.8942              Median :-0.8610             
	 Mean   :-0.054802             Mean   :-0.7036              Mean   :-0.7636              Mean   :-0.7096             
	 3rd Qu.:-0.048985             3rd Qu.:-0.4629              3rd Qu.:-0.5861              3rd Qu.:-0.4741             
	 Max.   :-0.006941             Max.   : 0.1791              Max.   : 0.2959              Max.   : 0.1932  
           
	 time.BodyAccelerometerMagnitude.mean time.BodyAccelerometerMagnitude.std time.GravityAccelerometerMagnitude.mean
	 Min.   :-0.9865                      Min.   :-0.9865                     Min.   :-0.9865                        
	 1st Qu.:-0.9573                      1st Qu.:-0.9430                     1st Qu.:-0.9573                        
	 Median :-0.4829                      Median :-0.6074                     Median :-0.4829                        
	 Mean   :-0.4973                      Mean   :-0.5439                     Mean   :-0.4973                        
	 3rd Qu.:-0.0919                      3rd Qu.:-0.2090                     3rd Qu.:-0.0919                        
	 Max.   : 0.6446                      Max.   : 0.4284                     Max.   : 0.6446             
           
	 time.GravityAccelerometerMagnitude.std time.BodyAccelerometerJerkMagnitude.mean time.BodyAccelerometerJerkMagnitude.std
	 Min.   :-0.9865                        Min.   :-0.9928                          Min.   :-0.9946                        
	 1st Qu.:-0.9430                        1st Qu.:-0.9807                          1st Qu.:-0.9765                        
	 Median :-0.6074                        Median :-0.8168                          Median :-0.8014                        
	 Mean   :-0.5439                        Mean   :-0.6079                          Mean   :-0.5842                        
	 3rd Qu.:-0.2090                        3rd Qu.:-0.2456                          3rd Qu.:-0.2173                        
	 Max.   : 0.4284                        Max.   : 0.4345                          Max.   : 0.4506    
                    
	 time.BodyGyroscopeMagnitude.mean time.BodyGyroscopeMagnitude.std time.BodyGyroscopeJerkMagnitude.mean
	 Min.   :-0.9807                  Min.   :-0.9814                 Min.   :-0.99732                    
	 1st Qu.:-0.9461                  1st Qu.:-0.9476                 1st Qu.:-0.98515                    
	 Median :-0.6551                  Median :-0.7420                 Median :-0.86479                    
	 Mean   :-0.5652                  Mean   :-0.6304                 Mean   :-0.73637                    
	 3rd Qu.:-0.2159                  3rd Qu.:-0.3602                 3rd Qu.:-0.51186                    
	 Max.   : 0.4180                  Max.   : 0.3000                 Max.   : 0.08758     
               
	 time.BodyGyroscopeJerkMagnitude.std frequency.BodyAccelerometer.mean.X frequency.BodyAccelerometer.mean.Y
	 Min.   :-0.9977                     Min.   :-0.9952                    Min.   :-0.98903                  
	 1st Qu.:-0.9805                     1st Qu.:-0.9787                    1st Qu.:-0.95361                  
	 Median :-0.8809                     Median :-0.7691                    Median :-0.59498                  
	 Mean   :-0.7550                     Mean   :-0.5758                    Mean   :-0.48873                  
	 3rd Qu.:-0.5767                     3rd Qu.:-0.2174                    3rd Qu.:-0.06341                  
	 Max.   : 0.2502                     Max.   : 0.5370                    Max.   : 0.52419                  

	 frequency.BodyAccelerometer.mean.Z frequency.BodyAccelerometer.std.X frequency.BodyAccelerometer.std.Y
	 Min.   :-0.9895                    Min.   :-0.9966                   Min.   :-0.99068                 
	 1st Qu.:-0.9619                    1st Qu.:-0.9820                   1st Qu.:-0.94042                 
	 Median :-0.7236                    Median :-0.7470                   Median :-0.51338                 
	 Mean   :-0.6297                    Mean   :-0.5522                   Mean   :-0.48148                 
	 3rd Qu.:-0.3183                    3rd Qu.:-0.1966                   3rd Qu.:-0.07913                 
	 Max.   : 0.2807                    Max.   : 0.6585                   Max.   : 0.56019                 

	 frequency.BodyAccelerometer.std.Z frequency.BodyAccelerometerJerk.mean.X frequency.BodyAccelerometerJerk.mean.Y
	 Min.   :-0.9872                   Min.   :-0.9946                        Min.   :-0.9894                       
	 1st Qu.:-0.9459                   1st Qu.:-0.9828                        1st Qu.:-0.9725                       
	 Median :-0.6441                   Median :-0.8126                        Median :-0.7817                       
	 Mean   :-0.5824                   Mean   :-0.6139                        Mean   :-0.5882                       
	 3rd Qu.:-0.2655                   3rd Qu.:-0.2820                        3rd Qu.:-0.1963                       
	 Max.   : 0.6871                   Max.   : 0.4743                        Max.   : 0.2767               
        
	 frequency.BodyAccelerometerJerk.mean.Z frequency.BodyAccelerometerJerk.std.X frequency.BodyAccelerometerJerk.std.Y
	 Min.   :-0.9920                        Min.   :-0.9951                       Min.   :-0.9905                      
	 1st Qu.:-0.9796                        1st Qu.:-0.9847                       1st Qu.:-0.9737                      
	 Median :-0.8707                        Median :-0.8254                       Median :-0.7852                      
	 Mean   :-0.7144                        Mean   :-0.6121                       Mean   :-0.5707                      
	 3rd Qu.:-0.4697                        3rd Qu.:-0.2475                       3rd Qu.:-0.1685                      
	 Max.   : 0.1578                        Max.   : 0.4768                       Max.   : 0.3498      
                
	 frequency.BodyAccelerometerJerk.std.Z frequency.BodyGyroscope.mean.X frequency.BodyGyroscope.mean.Y
	 Min.   :-0.993108                     Min.   :-0.9931                Min.   :-0.9940               
	 1st Qu.:-0.983747                     1st Qu.:-0.9697                1st Qu.:-0.9700               
	 Median :-0.895121                     Median :-0.7300                Median :-0.8141               
	 Mean   :-0.756489                     Mean   :-0.6367                Mean   :-0.6767               
	 3rd Qu.:-0.543787                     3rd Qu.:-0.3387                3rd Qu.:-0.4458               
	 Max.   :-0.006236                     Max.   : 0.4750                Max.   : 0.3288           
    
	 frequency.BodyGyroscope.mean.Z frequency.BodyGyroscope.std.X frequency.BodyGyroscope.std.Y frequency.BodyGyroscope.std.Z
	 Min.   :-0.9860                Min.   :-0.9947               Min.   :-0.9944               Min.   :-0.9867              
	 1st Qu.:-0.9624                1st Qu.:-0.9750               1st Qu.:-0.9602               1st Qu.:-0.9643              
	 Median :-0.7909                Median :-0.8086               Median :-0.7964               Median :-0.8224              
	 Mean   :-0.6044                Mean   :-0.7110               Mean   :-0.6454               Mean   :-0.6577              
	 3rd Qu.:-0.2635                3rd Qu.:-0.4813               3rd Qu.:-0.4154               3rd Qu.:-0.3916              
	 Max.   : 0.4924                Max.   : 0.1966               Max.   : 0.6462               Max.   : 0.5225       
       
	 frequency.BodyAccelerometerMagnitude.mean frequency.BodyAccelerometerMagnitude.std
	 Min.   :-0.9868                           Min.   :-0.9876                         
	 1st Qu.:-0.9560                           1st Qu.:-0.9452                         
	 Median :-0.6703                           Median :-0.6513                         
	 Mean   :-0.5365                           Mean   :-0.6210                         
	 3rd Qu.:-0.1622                           3rd Qu.:-0.3654                         
	 Max.   : 0.5866                           Max.   : 0.1787                         

	 frequency.BodyAccelerometerJerkMagnitude.mean frequency.BodyAccelerometerJerkMagnitude.std
	 Min.   :-0.9940                               Min.   :-0.9944                             
	 1st Qu.:-0.9770                               1st Qu.:-0.9752                             
	 Median :-0.7940                               Median :-0.8126                             
	 Mean   :-0.5756                               Mean   :-0.5992                             
	 3rd Qu.:-0.1872                               3rd Qu.:-0.2668                             
	 Max.   : 0.5384                               Max.   : 0.3163                  
           
	 frequency.BodyGyroscopeMagnitude.mean frequency.BodyGyroscopeMagnitude.std frequency.BodyGyroscopeJerkMagnitude.mean
	 Min.   :-0.9865                       Min.   :-0.9815                      Min.   :-0.9976                          
	 1st Qu.:-0.9616                       1st Qu.:-0.9488                      1st Qu.:-0.9813                          
	 Median :-0.7657                       Median :-0.7727                      Median :-0.8779                          
	 Mean   :-0.6671                       Mean   :-0.6723                      Mean   :-0.7564                          
	 3rd Qu.:-0.4087                       3rd Qu.:-0.4277                      3rd Qu.:-0.5831                          
	 Max.   : 0.2040                       Max.   : 0.2367                      Max.   : 0.1466          
                
	 frequency.BodyGyroscopeJerkMagnitude.std
	 Min.   :-0.9976                         
	 1st Qu.:-0.9802                         
	 Median :-0.8941                         
	 Mean   :-0.7715                         
	 3rd Qu.:-0.6081                         
	 Max.   : 0.2878  

