# 'Weeklyminutesmoderateexercise' B1

summary(hints.data$Weeklyminutesmoderateexercise) # Five-number summary and mean
sd(hints.data$Weeklyminutesmoderateexercise, na.rm = TRUE) # Standard deviation
var(hints.data$Weeklyminutesmoderateexercise, na.rm = TRUE) # Variance


# 'Weeklyminutesmoderateexercise' B2.1

library(dplyr) # Open 'dplyr' package

hints.data %>%
  group_by(smokeStat) %>%
  summarise(
    mean_weeklyexercise = mean(Weeklyminutesmoderateexercise, na.rm = TRUE), # Mean
    sd_weeklyexercise = sd(Weeklyminutesmoderateexercise, na.rm = TRUE), # Standard deviation
    var_weeklyexercise = var(Weeklyminutesmoderateexercise, na.rm = TRUE) # Variance
  )


# 'Weeklyminutesmoderateexercise' B2.2

library(skimr) # Open 'skimr' package
skim(hints.data$Weeklyminutesmoderateexercise)


# B3 Function

my_summary_func <- function(x){
  summary(x)
  sd(x, na.rm = TRUE)
  var(x, na.rm = TRUE)
}

my_summary_func(hints.data$Weeklyminutesmoderateexercise)
