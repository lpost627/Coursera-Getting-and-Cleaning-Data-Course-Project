# Code Book

This code book describes the data, variables, and transformations for the resulting data fields in `tidy_dataset.txt`

## Data

The final data provided in the `tidy_dataset.txt` file is a text file containing space-separated values. The first row contains variable names for each subject and activity identifiers followed by the rows containing the associated values.

## Variables

Each row contains 79 averaged signal measurements for an associated subject and activity.

### Identifiers

* `subject`: the ID of the test subject, integer, ranges from 1 to 30
* `activity`: the type of activity performed by the subject, string with 6 possible values
  * `WALKING`: test subject was walking
  * `WALKING_UPSTAIRS`: test subject was walking upstairs
  * `WALKING_DOWNSTAIRS`: test subject was walking downstairs
  * `SITTING`: test subject was sitting
  * `STANDING`: test subject was standing
  * `LAYING`: test subject was laying
  
### Measurements

All measurements are floating-point values and are normalized and bounded within [-1,1].

The measurements are classified into two domains:
* Time-domain signals: these capture the accelerometer (made in g's) and gyroscope (made in radians per second) 3-axial raw signals
* Frequency-domain signals: these applied Fast Fourier Transform (FFT) to some of the time-domain signals

#### Time-Domain Signals

* Average time-domain body acceleration in X, Y, and Z directions:
  * `timeDomainBodyAccelerometerMeanX`
  * `timeDomainBodyAccelerometerMeanY`
  * `timeDomainBodyAccelerometerMeanZ`
  
* Standard deviation of the time-domain body acceleration in the X, Y and Z directions:
  * `timeDomainBodyAccelerometerStandardDeviationX`
  * `timeDomainBodyAccelerometerStandardDeviationY`
  * `timeDomainBodyAccelerometerStandardDeviationZ`
  
* Average time-domain gravity acceleration in the X, Y and Z directions:
  * `timeDomainGravityAccelerometerMeanX`
  * `timeDomainGravityAccelerometerMeanY`
  * `timeDomainGravityAccelerometerMeanZ`
  
* Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
  * `timeDomainGravityAccelerometerStandardDeviationX`
  * `timeDomainGravityAccelerometerStandardDeviationY`
  * `timeDomainGravityAccelerometerStandardDeviationZ`
  
* Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * `timeDomainBodyAccelerometerJerkMeanX`
  * `timeDomainBodyAccelerometerJerkMeanY`
  * `timeDomainBodyAccelerometerJerkMeanZ`
  
* Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * `timeDomainBodyAccelerometerJerkStandardDeviationX`
  * `timeDomainBodyAccelerometerJerkStandardDeviationY`
  * `timeDomainBodyAccelerometerJerkStandardDeviationZ`
  
* Average time-domain body angular velocity in the X, Y and Z directions:
  * `timeDomainBodyGyroscopeMeanX`
  * `timeDomainBodyGyroscopeMeanY`
  * `timeDomainBodyGyroscopeMeanZ`
  
* Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:
  * `timeDomainBodyGyroscopeStandardDeviationX`
  * `timeDomainBodyGyroscopeStandardDeviationY`
  * `timeDomainBodyGyroscopeStandardDeviationZ`
  
* Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
  * `timeDomainBodyGyroscopeJerkMeanX`
  * `timeDomainBodyGyroscopeJerkMeanY`
  * `timeDomainBodyGyroscopeJerkMeanZ`
  
* Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
  * `timeDomainBodyGyroscopeJerkStandardDeviationX`
  * `timeDomainBodyGyroscopeJerkStandardDeviationY`
  * `timeDomainBodyGyroscopeJerkStandardDeviationZ`
  
* Average and standard deviation of the time-domain magnitude of body acceleration:
  * `timeDomainBodyAccelerometerMagnitudeMean`
  * `timeDomainBodyAccelerometerMagnitudeStandardDeviation`
  
* Average and standard deviation of the time-domain magnitude of gravity acceleration:
  * `timeDomainGravityAccelerometerMagnitudeMean`
  * `timeDomainGravityAccelerometerMagnitudeStandardDeviation`
  
* Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
  * `timeDomainBodyAccelerometerJerkMagnitudeMean`
  * `timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
  
* Average and standard deviation of the time-domain magnitude of body angular velocity:
  * `timeDomainBodyGyroscopeMagnitudeMean`
  * `timeDomainBodyGyroscopeMagnitudeStandardDeviation`
  
* Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
  * `timeDomainBodyGyroscopeJerkMagnitudeMean`
  * `timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
  
#### Frequency-domain signals

* Average frequency-domain body acceleration in the X, Y and Z directions:
  * `frequencyDomainBodyAccelerometerMeanX`
  * `frequencyDomainBodyAccelerometerMeanY`
  * `frequencyDomainBodyAccelerometerMeanZ`
  
* Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
  * `frequencyDomainBodyAccelerometerStandardDeviationX`
  * `frequencyDomainBodyAccelerometerStandardDeviationY`
  * `frequencyDomainBodyAccelerometerStandardDeviationZ`
  
* Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:
  * `frequencyDomainBodyAccelerometerMeanFrequencyX`
  * `frequencyDomainBodyAccelerometerMeanFrequencyY`
  * `frequencyDomainBodyAccelerometerMeanFrequencyZ`
  
* Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * `frequencyDomainBodyAccelerometerJerkMeanX`
  * `frequencyDomainBodyAccelerometerJerkMeanY`
  * `frequencyDomainBodyAccelerometerJerkMeanZ`
  
* Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * `frequencyDomainBodyAccelerometerJerkStandardDeviationX`
  * `frequencyDomainBodyAccelerometerJerkStandardDeviationY`
  * `frequencyDomainBodyAccelerometerJerkStandardDeviationZ`
  
* Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * `frequencyDomainBodyAccelerometerJerkMeanFrequencyX`
  * `frequencyDomainBodyAccelerometerJerkMeanFrequencyY`
  * `frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`
  
* Average frequency-domain body angular velocity in the X, Y and Z directions:
  * `frequencyDomainBodyGyroscopeMeanX`
  * `frequencyDomainBodyGyroscopeMeanY`
  * `frequencyDomainBodyGyroscopeMeanZ`
  
* Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
  * `frequencyDomainBodyGyroscopeStandardDeviationX`
  * `frequencyDomainBodyGyroscopeStandardDeviationY`
  * `frequencyDomainBodyGyroscopeStandardDeviationZ`
  
* Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
  * `frequencyDomainBodyGyroscopeMeanFrequencyX`
  * `frequencyDomainBodyGyroscopeMeanFrequencyY`
  * `frequencyDomainBodyGyroscopeMeanFrequencyZ`
  
* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
  * `frequencyDomainBodyAccelerometerMagnitudeMean`
  * `frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
  * `frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`
  
* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
  * `frequencyDomainBodyAccelerometerJerkMagnitudeMean`
  * `frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
  * `frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`
  
* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
  * `frequencyDomainBodyGyroscopeMagnitudeMean`
  * `frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
  * `frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`
  
* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
  * `frequencyDomainBodyGyroscopeJerkMagnitudeMean`
  * `frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
  * `frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`

## Transformations

The following transformations were applied to the source data (found here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip):
* The training and test sets were merged to create one data set.
* Only the measurements on mean and standard deviation were extracted, while all other measurements were discarded.
* The activity names were replaced with descriptive activity names.
* The variable names were replaced with descriptive variable names by doing the following:
  * Special characters `(`, `)`, and `-` were removed.
  * `t` and `f` were replaced with `timeDomain` and `frequencyDomain`, respectively.
  * `Acc`, `Gyro`, `Mag`, `Freq`, `mean`, and `std` were replaced with `Accelerometer`, `Gyroscope`, `Magnitude`, `Frequency`, `Mean`, and `StandardDeviation` respectively.
  * Replaced incorrect `BodyBody` with `Body`.
* The final independent tidy data set was created with the average of each variable for each activity and each subject.
