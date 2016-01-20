### Access API LINKEDIN
# Scrap info on companies from Linkedin
# - Get data from the Company API on Linkedin (https://developer-programs.linkedin.com/documents/company-search)
# - Access to API with Package 'Rlinkedin' (https://github.com/mpiccirilli/Rlinkedin)

## Loads libraries
library(Rlinkedin) #To connect to the API. More info at 
library(stringr)
library(jsonlite)

## Set Access via OAuth
in.auth <- inOAuth()  #if application access, pass args: "your_app_name", "your_consumer_key", "your_consumer_secret"
my.connections <- getMyConnections(in.auth)

## Search some companies
search.comp <- searchCompanies(in.auth, keywords = "Rocket")

# Find list elements of interest:
sapply(search.comp, function(x) names(x))[[1]]
