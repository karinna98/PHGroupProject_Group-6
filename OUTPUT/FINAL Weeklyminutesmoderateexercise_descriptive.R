# 'Weeklyminutesmoderateexercise' B1

weeklyexercise_descriptive <- summary(hints.data$Weeklyminutesmoderateexercise, na.rm = TRUE) # Descriptive summary 'Weeklyminutesmoderateexercise' variable
weeklyexercise_descriptive

# 'Weeklyminutesmoderateexercise' B2.1 
library(dplyr) # Open 'dplyr' package

hints.data %>%
  group_by(smokeStat) %>%
  summarise(
    mean_weeklyexercise = mean(Weeklyminutesmoderateexercise, na.rm = TRUE), # Mean
    median_weeklyexercise = median(Weeklyminutesmoderateexercise, na.rm = TRUE), # Median 
    sd_weeklyexercise = sd(Weeklyminutesmoderateexercise, na.rm = TRUE), # Standard deviation
    q25_weeklyexercise = quantile(Weeklyminutesmoderateexercise, 0.25, na.rm = TRUE), # 25th percentile
    q75_weeklyexercise = quantile(Weeklyminutesmoderateexercise, 0.75, na.rm = TRUE) # 75th percentile
  )

# 'Weeklyminutesmoderateexercise' B2.2
library(skimr) # Open 'skimr' package

skim(hints.data$Weeklyminutesmoderateexercise) # Statistical summary using skimr
