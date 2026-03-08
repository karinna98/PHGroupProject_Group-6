# Question 4.IV 

# Load ggplot2 for creating visualizations
library(ggplot2)

# Function Name: my_visual_func_I
# Purpose: Create a box plot showing the distribution of a categorical variable
# Inputs:
#    data - the dataset being used
#    variable - the categorical variable to visualize
# Output:
#    A box plot showing the frequency of each category

my_visual_func_I <- function(data, variable) { 

    # Create box plot using ggplot
    ggplot(data, aes(x = factor(.data[[variable]]))) + 

        # geom_bar counts number of observations in each category
        geom_bar(fill = "skyblue") +

        # Add labels and title
        labs(
            title = paste("Distribution of", variable),
            x = variable,
            y = "Count"
        ) + 

        # Apply minimal theme for cleaner appearance
        theme_minimal()
}

# Function Name: my_visual_func_II
# Purpose: Create a histogram showing the distribution of a continuous variable
# Inputs:
#   data - the dataset being used 
#   variable - the continuous variable to visualize
# Output:
#    A histogram showing the distribution of the variable

my_visual_func_II <- function(data, variable) {

    # Create a histogram using ggplot
    ggplot(data, aes(x = .data[[variable]])) +

        # geom_histogram displays the distribution of numeric data
        geom_histogram(fill = "orange", color = "black", bins = 30) +

        # Add labels and title
        labs(
            title = paste("Distribution of", variable),
            x = variable,
            y = "Frequency"
        ) + 

        # Apply minimal theme
        theme_minimal()
}

# Test the functions using variables from the dataset

# Run function for categorical variables
my_visual_func_I(hints.data, "QualityCare")
my_visual_func_I(hints.data, "RaceEthn5")

# Run function for continuous variables
my_visual_func_II(hints.data, "Age")
my_visual_func_II(hints.data, "BMI")
