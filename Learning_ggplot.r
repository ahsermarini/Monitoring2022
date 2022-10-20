# R code looking at ggplot2
# looking at point pattern ananlysis how individuals are moving and changing their behavior
# looking at virus and how it spread in 2019
#buttefly effect - things in nature are not truly random they seem random but very little things are actually random
#Many things are realted to space and spacial 


library (ggplot2)

virus <- c(10, 30 , 40, 50, 60,80) #an array so add the c
death <- c(100, 240, 310, 470, 580, 690)
plot(virus, death)
plot(virus, death, pch=19, cex = 2)

data.frame (virus, death) #makes a table with the dataset

d <- data.frame (virus, death) #Assign the data frame to ab object

summary (d) #finding the cenral theroem 

ggplot (d, aes(x = virus, y = death)) + geom_point() #dataframe the data to use
ggplot (d, aes(x=virus, y=death)) + geom_point(size=3, col="blue", pch=17) + geom_line(col="blue)
        
