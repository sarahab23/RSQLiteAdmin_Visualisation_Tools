library(ggplot2)
theme_set(theme_minimal())

head(economics)

# For data preparation
library("tidyverse")
df <- economics%>%select(date, psavert, uempmed)%>%gather(key = "variables", value = "value", -date)
head(df)

# Data Visualization
> ggplot(df, aes(x = date, y = value)) + geom_line(aes(color = variables)) + scale_color_manual(values = c("yellow", "green")) + ggtitle("Yearly plot showing personal savings rate and median duration of unemployment") 
