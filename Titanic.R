# load the data file in R Studio (step 0)
Titanic <- read.csv(file.choose())
attach(Titanic)
# 1: Port of embarkation
Titanic$embarked[Titanic$embarked==""] <- "S"
# 2: Age
Titanic$age[is.na(Titanic$age)] <- mean(Titanic$age,na.rm=TRUE)
# mean is a method of estimation, but other machine learning methods like ANN, GA, etc can ...
# provide better estimation. because the network gets trained and based on that, it provides...
# better estimation for missing values.
# 3: Lifeboat
Titanic$boat <- as.character(Titanic$boat)
Titanic$boat[Titanic$boat==""] <- "NA"
# 4: Cabin
Titanic$has_cabin_number <- ifelse(Titanic$cabin=="", 0,1)
# # load the results in csv file
write.csv(Titanic,file="titanic_clean.csv")
