install.packages('devtools')

devtools::install_github('rstudio/shinyapps')


shinyapps::setAccountInfo(name='mcgarvie', token='D56AF1D4B22E57FD43F8A6AEED325318', secret='RLcrvWAFNfpvYOb46uggfLN8NHb3LvTxcC+pW47n')


library(shinyapps)
shinyapps::deployApp('/Users/mcgarvie/GoogleDrive/work/R/SimilarCompanies')


