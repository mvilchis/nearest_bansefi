library(readstata13)

setwd('/home/mvilchis/Desktop/bansefiBranches/')

selection <- read.dta13("./data/RANDOMIZED_161210.dta", convert.factors = FALSE)

branches_location <- data.frame(selection$loc_lon, selection$loc_lat, selection$Desc_mun, selection$Desc_loc)



#https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-100.25990,25.67732&radius=500&key=AIzaSyDGpP7-Zq7XMiuoeL2tgG6mjof4PmKeyVY
