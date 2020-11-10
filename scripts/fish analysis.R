
fish_data <- read.csv("data/Gaeta_etal_CLC_data_1.csv")


library(dplyr)

# adding an additional column that classifies fish over 300m

fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

fish_data_cat_clean <- filter(fish_data_cat, scalelength > 1)

ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram()
  
  
  
