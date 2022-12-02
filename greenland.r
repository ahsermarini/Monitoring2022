
# how to download and utilize data from Copernicus
library(ncdf4) #read nc files
library(raster) # typical package
library(ggplot2) # beautiful plots
library(RStoolbox) # remote sensing functions
library(viridis) # legends - color gamut
library(patchwork) # multiframe ggplot

setwd("C:/Users/serma/OneDrive/Documents/RLab_Ecosystems") #setworking directory

lst_2000 <- raster("lst_2000.tif")

# This is the panel
# this needs to be put together or will not generate plot
ggplot() +
geom_raster(lst_2000, mapping = aes(x=x, y=y, fill=lst_2000)) +
ggtitle("Landsurface Temperature 2000") +
scale_fill_viridis(option="inferno", direction=-1, alpha=0.8) #the typical viridis common legend if you use -1 it reversees the color also transparency is alpha

p1 <- ggplot() +
geom_raster(lst_2000, mapping = aes(x=x, y=y, fill=lst_2000)) +
ggtitle("Landsurface Temperature 2000") +
scale_fill_viridis(option="inferno", direction=-1, alpha=0.2)

p2 <- ggplot() +
geom_raster(lst_2000, mapping = aes(x=x, y=y, fill=lst_2000)) +
ggtitle("Landsurface Temperature 2000") +
scale_fill_viridis(option="inferno", direction=-1, alpha=0.8)

p1 + p2

# how to upload all the data
lst_2000 <- raster("lst_2000.tif")
lst_2005 <- raster("lst_2005.tif")
lst_2010 <- raster("lst_2010.tif")
lst_2015 <- raster("lst_2015.tif")

plot(lst_2000)
plot(lst_2005)
plot(lst_2010)
plot(lst_2015)

# how to use the L apply help list files if you have 100 list.filed function - first we make a working directy list firststep
# all out files start with lst
rlist <- list.files(pattern="lst")
rlist

# list of files has been created now you will need to import with lapply use raster to import we are naming all the picture import
# lapply(X, FUN)
import <- lapply(rlist, raster)

#named it tgr then stack all the imported images
TGr <- stack(import)

p1 <- ggplot() +
geom_raster(TGr$lst_2000, mapping = aes(x=x, y=y, fill=lst_2000, alpha=0.8)) +
ggtitle("Landsurface Temperature 2000") +
scale_fill_viridis(option="mako, direction=-1) 

p2 <- ggplot() +
geom_raster(TGr$lst_2015, mapping = aes(x=x, y=y, fill=lst_2015)) +
ggtitle("Landsurface Temperature 2015") +
scale_fill_viridis(option="mako", direction=-1, alpha=0.8) 

p1 + p2

#exercise make the differences between 2015 and 2000
2015 - 2000
dift = TGr$lst_2015 - TGr$lst_2000 #equal instead of arrow because mathematical but does the same thing
dift

p3 <- ggplot() +
geom_raster(dift, mapping = aes(x=x, y=y, fill=layer)) +
ggtitle("Landsurface Temperature Differences from 2000 to 2015") +
scale_fill_viridis(option="inferno", direction=-1, alpha=0.8) 

p1 + p2 + p3

#these are all the layers of the year this will show the highest temp for each year - red to green higher temps then green to blue higher temp than before
plotRGB(TGr, r=1, g=2, b=4, stretch="lin")
#or histor gram stretch="hist"
