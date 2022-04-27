#### Preamble ####
# Purpose: Download data from Github
# Author: Mohid Sharif 
# Data: 26 April 2022
# Contact: mohid.sharif@mail.utoronto.ca [PROBABLY CHANGE THIS ALSO!!!!]
# License: MIT


#### Workspace setup ####
# Use R Projects, not setwd().
library(tidyverse)
library (readr)

### Data Download ###
### From https://raw.githubusercontent.com/Hernan4444/MyAnimeList-Database/master/data/anime.csv

# Datasets from MAL are located at "https://github.com/Hernan4444/MyAnimeList-Database/tree/master/data"
# from which we require the dataset for all listed anime on MAL
# we can do this by obtaining the url for the raw csv file that corresponds with our dataset
# dataset link (see above)

# Download data
urlfile="https://raw.githubusercontent.com/Hernan4444/MyAnimeList-Database/master/data/anime.csv"

mydata<-read_csv(url(urlfile))

mydata$Score <- as.numeric(as.character(mydata$Score))
mydata$Ranked <- as.numeric(as.character(mydata$Ranked))
mydata$Episodes <- as.numeric(mydata$Episodes)


### Save data ###
write.csv(mydata, "inputs/data/anime_data.csv")




         