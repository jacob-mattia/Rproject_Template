#!/usr/bin/Rscript

####META DATA####
#renv_activation
#v0.0.1
#Jacob Mattia
#Activates renv environment. Run at the start of each session.
#Version change: initial version
#NOTE: Only need to run once


if (!require("renv", character.only = TRUE)){install.packages("renv", dependencies = TRUE)}
library(renv)
renv::activate()
