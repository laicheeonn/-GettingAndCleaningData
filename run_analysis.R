# R script for Coursera's "Getting and Cleaning Data" course project.


## Read in the neccesary data files from the working directory.

activityNames <- read.table("./activity_labels.txt",stringsAsFactors = FALSE)
columnNames <- read.table("./features.txt",stringsAsFactors = FALSE)

dataTrain <- read.table("./X_train.txt")
activityLabelTrain <- read.table("./y_train.txt")
subjectLabelTrain <- read.table("./subject_train.txt")

dataTest <- read.table("./X_test.txt")
activityLabelTest <- read.table("./y_test.txt")
subjectLabelTest <- read.table("./subject_test.txt")


## Add the corresponding subject and activity labels to each row of data.

dataTrain <- cbind(Group = "Train", subjectLabelTrain, activityLabelTrain, dataTrain)
dataTest <- cbind(Group = "Test", subjectLabelTest, activityLabelTest , dataTest)


## Combine both test and train data into one table.

dataAggregate <- rbind(dataTrain, dataTest)


## Replace activity label with more descriptive names.

dataAggregate[,3] <- activityNames$V2[dataAggregate[,3]]


## Coerce Subject and Activity variables to factor.

dataAggregate[,2] <- as.factor(dataAggregate[,2])
dataAggregate[,3] <- as.factor(dataAggregate[,3])

## Name the columns.

colnames(dataAggregate) <- c("Group", "Subject", "Activity", columnNames$V2)


## Select the required columns.

colIndex1 <- grep("mean()",colnames(dataAggregate), fixed = TRUE)
colIndex2 <- grep("std()",colnames(dataAggregate), fixed = TRUE)
colSelect <- c(1, 2, 3, colIndex1, colIndex2)
    
dataSelect <- dataAggregate[,colSelect]


## Summarize the data using average per activity per subject.

dataGroup <- split(dataSelect, dataSelect[,3:1], drop = TRUE)

dataFinal <- sapply(dataGroup,function(x){
    colMeans(x[,4:69])
})

dataFinal <- as.data.frame(t(dataFinal))


## Rename the columns to reflect that they are averages.

colnames(dataFinal) <- paste("Average_of_", colnames(dataFinal))


## Built columns for Group, Subject and Activity identifiers.

idList <- strsplit(rownames(dataFinal), '.', fixed = TRUE)
idMatrix <- matrix(unlist(idList), nrow = 180, ncol = 3, byrow = TRUE)

dataFinal <- cbind(Group = idMatrix[,3], Subject = idMatrix[,2], 
                   Activity =  idMatrix[,1], dataFinal)


## Save the final data into a data file.

write.table(dataFinal, file = "tidyData.txt", row.names = FALSE)
