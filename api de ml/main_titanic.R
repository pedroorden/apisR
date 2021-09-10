library(plumber)

r <- plumb ("api_modelotitanic.R")

r$run(port=8000)