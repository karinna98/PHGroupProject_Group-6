hints.data <- read.csv("C:/Users/zlind/Downloads/HINTSData_2020_clean.csv")

head(hints.data)

str(hints.data)

dim(hints.data)

colnames(hints.data)

hints.req <- hints.data[, c("Age",
                            "AvgDrinksPerWeek",
                            "WeeklyMinutesModerateExercise",
                            "BMI",
                            "QualityCare",
                            "BirthGender",
                            "smokeStat",
                            "RaceEthn5")]
