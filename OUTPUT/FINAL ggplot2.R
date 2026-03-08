# Question 4.III
# Repeat visualizations using ggplot2

library(ggplot2)

# ------------------------------------------------
# Distribution of Quality of Care
# ------------------------------------------------
ggplot(hints.data, aes(x = as.factor(QualityCare))) +
  geom_bar(fill = "steelblue") +
  labs(title = "Distribution of Quality of Care",
       x = "Quality of Care",
       y = "Frequency")

# ------------------------------------------------
# Distribution of Race and Ethnicity
# ------------------------------------------------
ggplot(hints.data, aes(x = as.factor(RaceEthn5))) +
  geom_bar(fill = "orange") +
  labs(title = "Distribution of Race and Ethnicity",
       x = "Race",
       y = "Frequency")

# ------------------------------------------------
# Histogram of Age
# ------------------------------------------------
ggplot(hints.data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "green", color = "black") +
  labs(title = "Histogram of Age",
       x = "Age",
       y = "Frequency")

# ------------------------------------------------
# Boxplot of BMI
# ------------------------------------------------
ggplot(hints.data, aes(y = BMI)) +
  geom_boxplot(fill = "purple") +
  labs(title = "BMI Boxplot",
       y = "BMI")
