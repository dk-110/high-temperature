
library(tidyverse)
library(worldmet)

# Define years
years <- 1979:2021

# Download data for each year and combine into one data frame
chicago_data <-
  importNOAA(code = "725300-94846", year = y)

# Combine yearly data
chicago_data <- bind_rows(chicago_data)

write_rds(chicago_data, "chicago.rds")
