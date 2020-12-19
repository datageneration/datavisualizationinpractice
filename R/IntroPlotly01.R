## Introduction to Plotly sample program 1
## file: introPlotly01.R
# Packages: plotly
# install.packages("plotly")
# load the plotly R package
require(plotly)
library(plotly)
require("readr")
library(readr)
library(tidyverse)
# load the diamonds dataset from the ggplot2 package
data(diamonds, package = "ggplot2")
# create three visualizations of the diamonds dataset
plot_ly(diamonds, x = ~cut)
plot_ly(diamonds, x = ~cut, y = ~clarity)
plot_ly(diamonds, x = ~cut, color = ~clarity, colors = "Accent")

hkid <- read_csv("https://raw.githubusercontent.com/kho777/data-visualization/master/data/hkid.csv")
CO2 <- read_csv("http://raw.githubusercontent.com/kho777/data-visualization/master/data/CO2.csv")
hpi2016 <- read_csv("http://raw.githubusercontent.com/kho777/data-visualization/master/data/hpi2016.csv")
require(dplyr)
library(plyr)
rename(hpi2016, c("GDPC"="GDPPC"))

plot_ly(hkid, x = ~Hongkonger)
plot_ly(hpi2016, x = ~GDPPC, y = ~HappyPlanetIndex)
# plot_ly(hpi2016, x = ~GDPPC, y = ~HappyPlanetIndex, z= ~hpi2016$AverageLifeExpectancy, type = "surface")
add_lines(plot_ly(hpi2016, x = ~GDPPC, y = ~HappyPlanetIndex))


plot_ly(CO2, x = ~CO2pc)
plot_ly(CO2, z = ~CO2pc)
plot_ly(diamonds, x = ~cut, color = ~clarity, colors = "Accent")


# add_bars(), add_lines(), add_heatmap(), add_boxplot()
hpi2016 %>% plot_ly(x = ~GDPPC, y = ~HappyPlanetIndex) %>% add_bars()
hpi2016 %>% plot_ly(x = ~GDPPC, y = ~HappyPlanetIndex, z = ~AverageLifeExpectancy) %>% add_heatmap(inherit = TRUE)
# hpi2016 %>% plot_ly(x = ~GDPPC, y = ~HappyPlanetIndex, z = ~HappyLifeYears) %>% add_histogram2dcontour()
hpi2016 %>% plot_ly(x = ~Region, y = ~HappyPlanetIndex) %>% add_boxplot()

