# 'AvgDrinksPerWeek' B1

avgdrinksperweek_descriptive <- summary(hints.data$AvgDrinksPerWeek, na.rm = TRUE) # Descriptive summary 'AvgDrinksPerWeek' variable
avgdrinksperweek_descriptive

# 'AvgDrinksPerWeek' B2.1 
library(dplyr) # Open 'dplyr' package

hints.data %>%
  group_by(smokeStat) %>%
  summarise(
    mean_avgdrinksperweek = mean(AvgDrinksPerWeek, na.rm = TRUE), # Mean
    median_avgdrinksperweek = median(AvgDrinksPerWeek, na.rm = TRUE), # Median 
    sd_avgdrinksperweek = sd(AvgDrinksPerWeek, na.rm = TRUE), # Standard deviation
    q25_avgdrinksperweek = quantile(AvgDrinksPerWeek, 0.25, na.rm = TRUE), # 25th percentile
    q75_avgdrinksperweek = quantile(AvgDrinksPerWeek, 0.75, na.rm = TRUE) # 75th percentile
    var_avgdrinksperweek = var(AvgDrinksPerWeek, na.rm = TRUE) 
  )

# 'AvgDrinksPerWeek' B2.2
library(skimr) # Open 'skimr' package

skim(hints.data$AvgDrinksPerWeek) # Statistical summary using skimr
