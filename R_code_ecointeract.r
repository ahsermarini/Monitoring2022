# This is a code for investigating relationships among ecological variables

library(sp) # you can also make use of require ()

# We are using meuse:
# search for: "meuse dataset R sp package"
# https://cran.r-project.org/web/packages/gstat/vignettes/gstat.pdf

# This function is for the data set
data(meuse)
meuse

# Use View with a capitol in order to see data sets since r is casesensitive
View(meuse)

# To destroy a window which will not close BUT there is an error with licensing problem
dev.off()

# head shows the functuion of something x is something we want to use
head(meuse)

# function to show the names of an object in the columns
names(meuse)

# function to summaries all the central theorem
summary(meuse)

# ploting a variable in relation to another variable
# seeing the relation between cadium on zinc but are objects inside the meuse table and this will not work
plot(cadmium, zinc)

# you must write it in the table and your object meuse so must explain to r that they are a part of the object
# this symbol will be used a lot this is a rope that links them together $ used for linking
plot (meuse$cadmium, meuse$zinc)

cad<- meuse$cadmium
zin<- meuse$zinc
plot (cad,zin)
# building new objects 

#using with dataframes
# meuse has two tables meuse
#you can attach in order to use namnes

attach(meuse)
plot(cadmium, zinc)

detach(meuse)

pairs(meuse)
