library(plumber)
r <- plumb("demo.r")
r$run(port=8001)
