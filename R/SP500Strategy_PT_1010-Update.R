# title: "SP500Strategy_PT-Update"
# author: "by : Chris at Savvy Analytics"
# date : 6/19/2022
# Auto-Update Companion to SP500Strategy_PT1010.RMD

# Optional memory clear
rm(list=ls())
# Disable Scientific Notation in printing
options(scipen=999)
# Unload All Packages
lapply(names(sessionInfo()$otherPkgs), function(pkgs)
  detach(
    paste0('package:', pkgs),
    character.only = T,
    unload = T,
    force = T
  ))
library(markdown)
library(rmarkdown)
library(knitr)
library(rsconnect)

#Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio/bin/pandoc")

rmarkdown::render("/home/woolylinux01/Documents/SavvyDemoProjects/R/SP500Strategy_PT_1010.RMD")

# Initial Publishing
# A simple exploration of stock market peaks and troughs with a comparison of the current market to historic market troughs

#result <- rpubsUpload("S&P 500 Analysis of Peaks vs Troughs",
#                      "/home/woolylinux01/Documents/SavvyDemoProjectsn/R/SP500Strategy_PT_1010.html"
#                      ,
#                      "/home/woolylinux01/Documents/SavvyDemoProjects/R/SP500Strategy_PT_1010.RMD")

#result$continueUrl
# This is required to paste into broswer to do the intial set-up
# http://rpubs.com/publish/claim/916356/22d8f31610b140ce8c401e2c9466c192
# "http://rpubs.com/publish/claim/801168/37b214ba1baf44dd93fd59e77563756b
# Once you paste this into the browser and finish the intial publishing take the value from
# result$id
# And use it in the RepublishID
# "https://api.rpubs.com/api/v1/document/801168/0f747d7194d84d929e1e5da4deee369e"

RepublishID <- "https://api.rpubs.com/api/v1/document/916356/844a225d8bf54c02a5b6ce22d68c1dfe"


# With R 4.X it appears we have to re-call rsconnect and be explicit with the upload params
library(rsconnect)
rpubsUpload(title = "S&P 500 Analysis of Peaks vs Troughs", 
            contentFile = "/home/woolylinux01/Documents/SavvyDemoProjects/R/SP500Strategy_PT_1010.html", 
            originalDoc = "/home/woolylinux01/Documents/SavvyDemoProjects/R/SP500Strategy_PT_1010.RMD",
            id = RepublishID)

