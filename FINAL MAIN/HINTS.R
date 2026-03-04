hints.data <- read.csv("C:/Users/zlind/Downloads/HINTSData_2020_clean.csv")

hints.var <- hints.data[, c("Age",
                            "AvgDrinksPerWeek",
                            "WeeklyMinutesModerateExercise",
                            "BMI",
                            "QualityCare",
                            "BirthGender",
                            "smokeStat",
                            "RaceEthn5")]
