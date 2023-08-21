if (!require("renv", character.only = TRUE)){install.packages("renv", dependencies = TRUE)}
library(renv)
renv::activate()
if(!file.exists("renv.lock")){
  renv::init()
} else {
  renv::restore()
}
config$config$auto.snapshot(TRUE)
source("projet_starter.R")
