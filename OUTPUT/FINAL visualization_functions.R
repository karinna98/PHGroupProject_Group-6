# Question 4.IV 

# Load ggplot2 for creating visualizations
library(ggplot2)

# Box plot for categorical variables
box_plot <- function(data, var) {
    ggplot(data, aes(x = factor(.data[[variable]]))) +
        geom_bar(fill = "skyblue") +
        labs(title = paste("Distribution of", var), x = var, y = "Count") +
        theme_minimal()
}

# Histogram for continuous variables
histogram <- function(data, var) {
    ggplot(data, aes(x = .data[[var]])) +
        geom_histogram(fill ' "orange", color = "black", bins = 30) +
        labs(title = paste("Distribution of", var), x = var, y = "Frequency") + 
        them_minimal()
}

# Examples
box_plot(hints.data, "QualityCare")
box_plot(hints.data, "RaceEthn5")

histogram(hints.data, "Age")
histogram(hints.data, "BMI")
