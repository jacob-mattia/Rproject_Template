#!/usr/bin/Rscript

####META DATA####
#project_starter
#v0.0
#Jacob Mattia
#Sets up environment and loads in appropriate libraries. Run at the start of each session.


####BASE INSTALLS####
#Installs and runs libraries necessary for basic formatting and data manipulation
if (!require("renv", character.only = TRUE)){install.packages("renv", dependencies = TRUE)}
library(renv)
if(!exists("renv_initialized")){
  renv::init()
  renv_initialized=TRUE
}
renv::restore()


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
#

renv::snapshot()