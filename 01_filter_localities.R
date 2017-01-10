library("rgdal")
library("rgeos")
library("dplyr")
library(foreign)
library(readstata13)
library(sp)
library(rgdal)
library(tibble)
library(stringr)
######################################################################
#             
#                        Lectura de datos 
#
######################################################################
setwd('/home/mvilchis/Desktop/Presidencia/ideas42/')
#Localidades prueba
todas_localidades <- read.dta13("./data/RANDOMIZED_161210.dta", convert.factors = FALSE, generate.factors = FALSE, encoding = "UTF-8")
#Localidades con las que vamos a trabajar                           
localidades <- dplyr::filter(todas_localidades, assignment %in% c("1")) 
localidades <- data.frame("localidad_id" = localidades$LocalidadId, 
                          "lon" = localidades$loc_lon, 
                          "lat" =localidades$loc_lat, 
                          "distance" = localidades$distance_to_bansefi)

#Escribimos los datos de las localidades con las que vamos a trabajar
write.csv(localidades, './data/01_output_localities.csv',row.names=FALSE)
