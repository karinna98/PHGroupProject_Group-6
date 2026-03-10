# BMI B1

bmi.5 <- summary(hints.data$BMI) #descriptive summary of BMI variable

bmi.mean <- mean(hints.data$BMI) #displays mean of BMI

bmi.sd <- sd(hints.data$BMI) #displays standard deviation of BMI

bmi.var <- var(hints.data$BMI) #displays variance

# BMI B2.1

library(dplyr)

#displays BMI summary grouped by smoking status
hints.data %>%
  group_by(smokeStat) %>% #group the dataset by smoking status
  summarise(
    bmi.mean = mean(BMI), #mean BMI for each smoking group
    bmi.sd = sd(BMI), #standard deviation of BMI
    bmi.var = var(BMI), #variance of the BMI
    bmi.min = min(BMI), #minimum of the BMI
  )

hints.data %>%
  group_by(smokeStat) %>% #grouping remaining statistics 
  summarise(
    bmi.max = max(BMI), #maximum BMI
    bmi.q25 = quantile(BMI, 0.25), #0.25 qt of BMI
    bmi.q75 = quantile(BMI, 0.75) #0.75 of BMI
  )

#BMI B2.2

library(skimr)

skim(hints.data$BMI) #statistical summary for BMI using skim 

