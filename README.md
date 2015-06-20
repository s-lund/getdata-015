# getdata-015 README.md for run_analysis.R


#### reading base data

Loading all the needed data into the associated data variables

#### Merges the training and the test sets to create one data set. (Assignment step 1)

Straint forward. Important is to make sure the data from the training set comes first.

####  Appropriately labels the data set with descriptive variable names. (Assignment step 4) 

Using the information stored in the features variable to give the columns in the set appropriately labels.
<b>Is it good enough?</b> I think yes. There is a disscussion in the forums e.g. <a href="https://class.coursera.org/getdata-015/forum/thread?thread_id=135">here</a>. The assingment is unfortunately not clear about it.


####  Extracts only the measurements on the mean and standard deviation for each measurement. (Assignment step 2) 

Only the columns with means (mean()) and standard deviation (std()) are needed. Those get extracted. The means in the columns with meanFreq() are not means in the sense of the assignment. There is a disscussion in the forums e.g. <a href="https://class.coursera.org/getdata-015/forum/thread?thread_id=121">here</a>. 

#### Creating a the list of the activities as names (in the right order) for each row in the set and adding it as the first column to the set

This part is about attaching activitiy names to the set:

<ol>
<li>Adding  the activity numbers of the training and the test data. Important is to make sure the data for the training comes first.</li>
<li>Creating a data frame with the acitivity names and the corresponding activity number for each row in the set. <b>Careful:</b> mergeing might change the order. that has to be taken into account.</li>
<li>Attaching the activity names to the set </li>
</ol>


####Creating a the list of the subjects for each row in the set and attaching it as the first column to the set. 
####Uses descriptive activity names to name the activities in the data set (Assignment step  3)

Straint forward.


#### Creating the means per column and subject + activity

The used function was aggregate. 

####  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. (Assignment step 5)

Straint forward.

