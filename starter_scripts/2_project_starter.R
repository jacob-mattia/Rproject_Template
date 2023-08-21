#!/usr/bin/Rscript

####META DATA####
#project_starter
#v0.0.2
#Jacob Mattia
#Sets up environment and loads in appropriate libraries. Run after activating renv.
#Version change: modified to work with seperate renv_activation.R script
#NOTE: "data", "analysis", and "results" folders will NOT sync to github

####BASE INSTALLS####
#Installs and runs libraries necessary for basic formatting and data manipulation
renv::restore() #Loads in current renv.lock
options(renv.config.auto.snapshot = TRUE) #Ensures renv will automatically update
if (!require("conflicted", character.only = TRUE)){renv::install("conflicted", dependencies = TRUE)}
library(conflicted)
if (!require("tidyverse", character.only = TRUE)){renv::install("tidyverse", dependencies = TRUE)}
library(tidyverse)
if (!require("stringr", character.only = TRUE)){renv::install("stringr", dependencies = TRUE)}
library(stringr)
if (!require("dplyr", character.only = TRUE)){renv::install("dplyr", dependencies = TRUE)}
library(dplyr)
conflict_prefer("filter", "dplyr")
conflict_prefer("select", "dplyr")


####SPECIALIZED INSTALLS####


####END STUFF####

dir.create("data")
dir.create("results")
dir.create("analysis")
