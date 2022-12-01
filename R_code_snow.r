# how to download and utilize data from Copernicus
library(ncdf4) #read nc files
library(raster) # typical package
library(ggplot2) # beautiful plots
library(RStoolbox) # remote sensing functions
library(viridis) # legends - color gamut
library(patchwork) # multiframe ggplot

setwd("C:/Users/serma/OneDrive/Documents/RLab_Ecosystems")

snow <- raster("c_gls_SCE_202012230000_NHEMI_VIIRS_V1.0.1.nc")

# exercise plot snow gover and gg plot and virdis


ggplot() +
geom_raster(snow, mapping = aes(x=x, y=y, fill=Snow.Cover.Extent)) + # mapping is the aesthetics fill is the layer the layer is the snow cover extent
scale_fill_viridis(option="mako")  #a function in viridis that allows for certain coloramp paletes for colorbline

ggplot() +
geom_raster(snow, mapping = aes(x=x, y=y, fill=Snow.Cover.Extent)) + # mapping is the aesthetics fill is the layer the layer is the snow cover extent
scale_fill_viridis(option="inferno")

# Crop over Europe your area of interest 
ext <- c(-2, 50, 20, 70)
snow.europe <- crop(snow, ext)

p1 <- ggplot() +
geom_raster(snow, mapping = aes(x=x, y=y, fill=Snow.Cover.Extent)) +
scale_fill_viridis(option="mako")


p2 <- ggplot() +
geom_raster(snow.europe, mapping = aes(x=x, y=y, fill=Snow.Cover.Extent)) +
scale_fill_viridis(option="mako")

p1 + p2
