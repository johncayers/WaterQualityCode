# install devtools package
# install.packages("devtools")
# install BASEmetab package
devtools::install_github("dgiling/BASEmetab")
# Remove the package zip after installation
# unlink("BASEmetab.zip")
# load R2jags to connect to JAGS
library(R2jags)
##Link to JAGS
library(BASEmetab)
library(readr)
setwd("C:/Users/ayersj.VANDERBILT/OneDrive - Vanderbilt/Projects/StreamMetabolism")
# Read datafile
# Data <- read_csv("Yallakool_example.csv", col_types = cols(Date = col_date(format = "%m/%d/%Y"), 
#                                                   Time = col_time(format = "%H:%M:%S")), 
#                  locale = locale(tz = "America/Chicago"))
# View(Data)
data.dir <- file.path(getwd(), "Input")
results.dir <- file.path(getwd(), "Output")
# "interval" is the time interval in seconds.
# I think there has to be at least one full day where measurements are made for the full 24 hours.
# Only one csv file should be in the input folder
results <- bayesmetab(data.dir, results.dir, interval = 600)