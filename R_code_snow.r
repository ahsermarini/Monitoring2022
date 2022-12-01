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
