if (!require("renv", character.only = TRUE)){install.packages("renv", dependencies = TRUE)}
library(renv)
config$config$auto.snapshot(TRUE)
renv::init()
