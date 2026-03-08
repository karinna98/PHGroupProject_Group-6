# Q B.3

#creating a function to summarize the statisical summaries of the continous variables of intrest  

my_summary_func <- function(x) { #defines a function
  list(   
    Mean = mean(x),#mean
    SD = sd (x), #standard deviation
    Variance = var(x), #vairance
    Five.Num.Summary = summary(x) #five summary
  )
}

#applying my_summary_function to all continous variables
my_summary_func(hints.data$Age)

my_summary_func(hints.data$BMI)

my_summary_func(hints.data$AvgDrinksPerWeek)

my_summary_func(hints.data$WeeklyMinutesModerateExercise)



