
# Load Packages -----------------------------------------------------------

library(tidyverse)
library(janitor)
library(sf)
library(fs)


# 2020 Wildfires Perimeter Data -------------------------------------------

# download.file(url = "https://opendata.arcgis.com/datasets/5da472c6d27b4b67970acc7b5044c862_0.geojson",
#               destfile = "data-raw/current-wildfire-perimeter-data.geojson")

wildfires_current <- st_read("data-raw/current-wildfire-perimeter-data.geojson")

wildfires_current %>% 
  st_drop_geometry() %>% 
  view()

# download.file(url = "https://opendata.arcgis.com/datasets/bf373b4ff85e4f0299036ecc31a1bcbb_0.geojson",
#               destfile = "data-raw/2020-wildfire-perimeter-data.geojson")

wildfires_2020 <- st_read("data-raw/2020-wildfire-perimeter-data.geojson")

wildfires_2020 %>% 
  st_drop_geometry() %>% 
  view()

