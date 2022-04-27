# Anime Rating Data Study

This paper contains the R project used in creating the paper "What Effects Anime Scores On MAL".

Many people on the internet rely on anime ratings on MyAnimeList to determine what to watch next. I obtained data from MyAnimeList, the biggest anime rating site on the web and analysed the effect of popularity, fanbase, number of episodes, and genre on an anime's rating. I found that anime is ranked rather fairly whether that be a large or a small fanbase. My study can be used to show whether ratings from MAL are reliable or if the ratings are biased depending on the popularity of the anime.

The repository contains three folders: inputs, outputs, and scripts which are organised as follows:

Inputs: 
  
  Data: the cleaned data csv files obtained from https://github.com/Hernan4444/MyAnimeList-Database

Outputs:
  
  Paper: R Markdown, a final pdf document, and a bibliography

Scripts:
  
  01-data_cleaning.R: This script downloads, processes, and cleans the data obtained from MAL

To Generate the paper:
  
  Download the repository's main folder
  
  Open anime-data-study.Rproj in RStudio
  
  Install libraries using install.packages() and run webshot::install_phantomjs() in the console so the DAGs compile
  
  Run 01-data_cleaning.R to download the CVS dataset, obtain the cleaned and processed dataset
  
  Knit paper.Rmd to reproduce the paper
