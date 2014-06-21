
#
# instructions are at the following URL...
# http://shiny.rstudio.com/articles/shinyapps.html
#
library(shinyapps)

# authorize deployment - https://www.shinyapps.io/tokens
setAccountInfo(
    name="farsite", 
    token="C419EC230C4EABCF534F83566F2D1DAE", 
    secret="<SECRET>")

# deploy it!
deployApp (appName = "Project1", appDir = "app")

# https://farsite.shinyapps.io/Project1/
