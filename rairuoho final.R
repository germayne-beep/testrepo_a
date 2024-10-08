read.table('/Users/germayne/Desktop/test-wd2/data/rairuoho.txt', header=T, sep='\t', dec='.')
rairuoho<-read.table('/Users/germayne/Desktop/test-wd2/data/rairuoho.txt', header=T, sep='\t', dec='.')
rairuoho
library('tidyr')
rairuoho <- rename(rairuoho, 
                   enriched = nutrient)
library('tidyr')
rairuoho <- rairuoho %>%
  mutate(treatment = ifelse(treatment == 'nutrient', 'enriched', treatment))
library('dplyr')
rairuoho
rairuoho_long <- rairuoho %>%
  pivot_longer(day3:day8, names_to = "day", values_to = "mean length of grass")
rairuoho_long
rairuoho_long <- rairuoho_long %>%
  mutate(upper_left = paste(spatial1, spatial2, sep = ","))
library('dplyr')
rairuoho_long
rairuoho_long <- rairuoho_long %>%
  select(-spatial1, -spatial2)
rairuoho_long