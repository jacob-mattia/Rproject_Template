#!/usr/bin/Rscript

####META DATA####
#project_starter
#v0.0.1
#Jacob Mattia
#Sets up environment and loads in appropriate libraries. Run at the start of each session.
#Version change: added line to automatically create data and results folder without pushing them to git
#NOTE: "data", "analysis", and "results" folders will NOT sync to github

####BASE INSTALLS####
#Installs and runs libraries necessary for basic formatting and data manipulation
if (!require("renv", character.only = TRUE)){install.packages("renv", dependencies = TRUE)}
library(renv)
sys.sleep(5)
renv::restore()
if (!require("BiocManager", character.only = TRUE)){renv::install("BiocManager")}
BiocManager::install()
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
