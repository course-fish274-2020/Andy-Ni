
fish_data <- read.csv("data/Gaeta_etal_CLC_data.csv")


library(dplyr)

# adding an additional column that classifies fish over 300m

fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

