.libPaths("./R/App/R-Portable/library")
tryCatch({
  library(shiny)
}, error = function(e) {
  install.packages("shiny", repos = "https://cran.rstudio.com/")
  library(shiny)
})

shiny::runApp("app", launch.browser = TRUE)