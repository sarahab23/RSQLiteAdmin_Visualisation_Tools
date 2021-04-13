ecoplot <- function(){
library(ggplot2)
theme_set(theme_minimal())

# For data preparation
library("tidyverse")
df <- economics%>%select(date, psavert, uempmed)%>%gather(key = "variables", value = "value", -date)

# Data Visualization
p<-ggplot(df, aes(x = date, y = value)) + geom_line(aes(color = variables)) + scale_color_manual(values = c("yellow", "green")) + ggtitle("Yearly plot showing personal savings rate and median duration of unemployment") 
p
}