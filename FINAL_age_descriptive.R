# 'age' B1 
age_descriptive <- summary (hints.data$Age, na.rm=TRUE) # descriptive summary 'Age' variable

#'age' Question B2.I
library (dplyr) # open 'dplyr' package

hints.data %>%
  group_by (smokeStat) %>%
  summarise (
    mean_age = mean(Age, na.rm=TRUE), # displays mean of 'Age'
    median_age = median(Age, na.rm=TRUE), # displays median of 'Age'
    sd_age = sd(Age, na.rm=TRUE), # displays standard deviation of 'Age'
    q25_age = quantile(Age, 0.25, na.rm=TRUE), # displays 0.25 qt of 'Age'
    q75_age = quantile(Age, 0.75, na.rm=TRUE), # displays 0.75 qt of 'Age' 
    var_age = var(Age, na.rm = TRUE)
  )


# 'age' Question B2.II

library(skimr) # open 'skimr' package

skim(hints.data$Age) # provides statistical summary for 'Age' using 'skim' package