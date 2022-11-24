# calculating vegertation indices from remote sensing

library(raster)
setwd("C:/Users/serma/OneDrive/Documents/RLab_Ecosystems") #setworking directory

l1992 <- brick("defor1.png")

plotRGB(l1992, r=1, g=2, b=3, strech="lin")

defor2 <- brick("defor2.png")
plotRGB(defor2, r=1, g=2, b=3, stretch="lin")
# bands 
par(mfrow=c(2,1))
plotRGB(l1992, r=1, g=2, b=3, strech="lin")
plotRGB(defor2, r=1, g=2, b=3, stretch="lin")

# pure water whose up black but if it has soil maybe a little different the infred is the trees and vegetation

# going to calculate the value of change between the two images for the amount of deforestation that has occured
# 255 is vegetation is there reflecting with 100 is less for dvi calculations

dvi1992 <- l1992[[1]] - l1992[[2]]
cl <- colorRampPalette(c('darkblue','yellow','red','black'))(100)

cl <- colorRampPalette(c('darkblue','yellow','red','black'))(100) # specifying a color scheme
plot(dvi2006, col=cl)

par(mfrow=c(2,1))
plotRGB(l1992, r=1, g=2, b=3, strech="lin")
plotRGB(defor2, r=1, g=2, b=3, stretch="lin")

#classificaiton of 

library(RStoolbox)
# unsupervised classification
d1c <- unsuperClass(defor1, nClasses=2)
plot(d1c$map)
freq(d1c$map)

# class 1: forest
# class 2: human impace - 306473
#   value  count - 34819

#forest
f1992 <- 306473 / (306473+34819)
#human impact
h1992 <- 34819 / (306473+34819)

 # classification of 2006
 plot(d2c$map)
freq(d2c$map)
 # class 2: forest - 179563
 # class 1: human impact - 163163
 
 count
[1,]     1 179563
[2,]     2 163163
