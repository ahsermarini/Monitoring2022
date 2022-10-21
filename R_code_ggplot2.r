library (ggplot2)
°take the data and show r the path of where its located

setwd("~/lab/")

setwd("C:/Users/serma/OneDrive/Documents/RLab_Ecosystems")

#if you get an error because of copying and paste switch to backslash

read.table("covid_agg.csv")
read.table("covid_agg.csv", header= TRUE) 

#it will take all the numbers as data  because we have a header with the names of the column which is not data so header is TRUE no header FALSE
# seperators 
