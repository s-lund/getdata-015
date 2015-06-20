# getdata-015 Codebook for run_analysis.R

### Introduction

This assignment uses data from a web page  of<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"> UCI </a>. The data consists of data and meta data about activity messurements of 30 people done with an accelerometer and gyroscope of a smart phone.

### DATA:

<ul>
<li><b>X_train.txt</b>:  raw table of measurements originally used as a training set  </li>
<li><b>X_test.txt</b>:  raw table of measurements originally used as a testing set  </li>

<li><b>features.txt</b>:  column names for the raw tables "X_train.txt" and "X_test.txt"  </li>
<li><b>subject_train.txt</b>:  list of subjects per measurment in "X_train.txt"  </li>

<li><b>subject_test.txt</b>: - list of subjects per measurment in "X_test.txt"  </li>
<li><b>activity_labels.txt</b>: - names and indexes of the six possible activities  </li>

<li><b>y_train.txt</b>: - activity indexes of each measurement in "X_train.txt"   </li>
<li><b>y_test.txt</b>: - activity indexes of each measurement in "X_test.txt"   </li>
</ul>

### DATA VARIABLES:

<ul>
<li><b>set_train</b>:  holds the content of "X_train.txt"  in R.</li>
<li><b>set_test</b>:  holds the content of "X_test.txt" in R.</li>
<li><b>features</b>:  holds the content of "features.txt" in R.</li>
<li><b>subjects_train</b>:  holds the content of "subject_train.txt" in R. </li>
<li><b>subjects_test</b>:  holds the content of "subject_test.txt" in R.</li>
<li><b>activity_labels</b>:  holds the content of "activity_labels.txt" in R.</li>
<li><b>activities_train</b>:  holds the content of "y_train.txt" in R.</li>
<li><b>activities_test</b>:  holds the content of "y_test.txt" in R.</li>
</ul>

### PROCESS VARIABLES

<ul>
<li><b>set_complete </b>:  comines the content of set_train and set_test</li>
<li><b>col_names </b>:  contains the extracted column names for the measurements</li>

<li><b>mean_positions, std_positions and freq_positions </b>:  store the column names which have relevance for the task</li>
<li><b>select_positions </b>:  variable the extract the needed column names</li>
<li><b>set_complete_mean_sd </b>:  stores the needed measurements and their columnnames</li>

<li><b>activities </b>:  stores all the activities per row of the measurements</li>
<li><b>activity_mapping </b>:  is a mapping of activity names to the used activity indexes</li>
<li><b>set_complete_mean_sd_act </b>:  stores the needed measurements and their columnnames and per row the activity name</li>

<li><b>subjects </b>:  stores the number of each subject per measurement</li>
<li><b>set_complete_mean_sd_act_sub </b>:  stores the needed measurements, their columnnames and per row the activity name and the subject number</li>

<li><b>set_meansof_mean_sd_agg </b>:  stores no longe single measurements but instead mean values for all the collums per subject and activity</li>
</ul>


