#How to sum a variable by group in R
#Cargar datos 2013

#Prerrequisitos
install.packages("data.table")
install.packages("dplyr")
library(data.table)
library(dplyr)
library(readr)

#Importar archivo
data2013 <- read_csv("~/Desktop/greenR_2013.csv")

#Transformarlo a una tabla de datos
data2013=as.data.table(data2013)


#Saber qué clase de datos son
class(data2013)

#Sumar variable agrupada por una categoría (entidad)
resultados2013=data2013 %>% 
  group_by(location_name) %>% 
  summarise(suma_GCI_2013= sum(GCI_2013, na.rm = TRUE),
           suma_GP_SINVCR= sum(GP_SINVCR, na.rm = TRUE),
           suma_GCP_2013= sum(GCP_2013, na.rm = TRUE),
           count=n())

#Ver data
resultados2013
