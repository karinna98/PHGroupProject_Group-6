# Question 4.1

#create bar graph for quality of care distribtion 
barplot(table(hints.data$QualityCare), #create table
        main = "Distribution of Quality of Care", #names graph
        xlab = "Quality of Care", #labels x-axis
        ylab = "Frequency") # labels y-axis

#create bar graph for race and ethnicty
barplot(table (hints.data$RaceEthn5),
        main = "Distribution of Race and Ethnicity", #names graph
        xlab = "Race", #labels x-axis
        ylab = "Frequency") #labels y-axis

