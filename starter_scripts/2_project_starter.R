#!/usr/bin/Rscript

####META DATA####
#project_starter
#v0.0.3
#Original author: Jacob Mattia
#Summary: Sets up environment and loads in appropriate libraries. Run after activating renv.
#Version change: Added "here" package and slightly modified comment formatting
#NOTE: "data", "analysis", and "results" folders will NOT sync to github

####BASE LIBRARIES####
#Installs and loads libraries necessary for basic formatting and data manipulation
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
if (!require("here", character.only = TRUE)){renv::install("here", dependencies = TRUE)}
library(here)
conflict_prefer("filter", "dplyr")
conflict_prefer("select", "dplyr")


####SPECIALIZED LIBRARIES####
#Installs and loads project-specific libraries (can also load in analysis script)

####END STUFF####
#Creates storage directories that do not sync with github snapshots the project to save its status
dir.create("data")
dir.create("results")
dir.create("analysis")

renv::snapshot()
