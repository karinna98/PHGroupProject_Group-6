# BMI B1

bmi.5 <- summary(hints.data$BMI)

bmi.5

bmi.mean <- mean(hints.data$BMI)

bmi.mean

bmi.sd <- sd(hints.data$BMI)

bmi.sd

bmi.var <- var(hints.data$BMI)

bmi.var

# BMI B2.1

library(dplyr)

hints.data %>%
  group_by(smokeStat) %>%
  summarise(
    bmi.mean = mean(BMI),
    bmi.sd = sd(BMI),
    bmi.var = var(BMI),
    bmi.min = min(BMI),
  )

hints.data %>%
  group_by(smokeStat) %>%
  summarise(
    bmi.max = max(BMI),
    bmi.q25 = quantile(BMI, 0.25),
    bmi.q75 = quantile(BMI, 0.75)
  )

#BMI B2.2

library(skimr)

skim(hints.data$BMI)

