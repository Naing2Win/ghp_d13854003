#1. Import the data
library(readr)
dfDengue <- read.csv("D:/Download/dengue_assignment.csv", header = TRUE)

#2. Checking the types of variables
str(dfDengue)

#3. Calculate total dengue cases in 2014

library(dplyr)

total_cases_2014 <- dfDengue %>%
  filter(year == 2014) %>%
  pull(case_number) %>%
  sum()

#4. Print the result
cat("Total dengue cases in 2014:", total_cases_2014, "\n")

