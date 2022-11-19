# title: "InflationMonitor-Update"
# author: "by : Chris at Savvy Analytics"
# date : 8/21/2021
# Auto-Update Companion to InflationMonitor.RMD

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

Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio/bin/pandoc")

rmarkdown::render("/home/woolyadmin/R/InflationMonitor.RMD")

# Initial Publishing
# A continuously updated look at inflation as measured by CPI and PPI over various time periods

# result <- rpubsUpload("Inflation Monitor",
#                       "/home/woolyadmin/R/InflationMonitor.html"
#                       ,
#                       "/home/woolyadmin/R/InflationMonitor.RMD")
#
# result$continueUrl
# This is required to paste into broswer to do the intial set-up
# "http://rpubs.com/publish/claim/801168/37b214ba1baf44dd93fd59e77563756b
# Once you paste this into the browser and finish the intial publishing take the value from
# result$id
# And use it in the RepublishID
# "https://api.rpubs.com/api/v1/document/801168/0f747d7194d84d929e1e5da4deee369e"

RepublishID <- "https://api.rpubs.com/api/v1/document/801168/0f747d7194d84d929e1e5da4deee369e"


# With R 4.X it appears we have to re-call rsconnect and be explicit with the upload params
library(rsconnect)
rpubsUpload(title = "Inflation Monitor", 
            contentFile = "/home/woolyadmin/R/InflationMonitor.html", 
            originalDoc = "/home/woolyadmin/R/InflationMonitor.RMD",
            id = RepublishID)

