## Exercise and final assessment

# Take a data set (could be yours, a data set from medicaldata or tidytuesday, or something else).
install.packages("medicaldata")
install.packages("tidyverse")
data <- medicaldata::covid_testing

# Analyze/explore the data including at least one data visualization.
View(data)
library(ggplot2)
library(stringr)
library(readr)
library(tidyverse)
data <- data%>% mutate(gender2=factor(gender), result2=factor(result))
str(data)

covid_df <- data %>% select(gender, result)
covid_df
result_positive <- subset(covid_df, result == "positive")
print(result_positive)
View(result_positive)

plot_covid <- ggplot(data = result_positive, 
                              mapping = aes(x = gender, y = result, color=gender)) + 
  geom_col(position = "stack", alpha = 0.5, fill = "white", 
           linetype = "solid", linewidth = 1.0, width = 0.5)
plot_covid

# Create a short, reproducible HTML report.
file:///C:/Users/nicol/Documents/Rcouse2024/Final_assessment/Report_assessment.html

# Push your HTML report to your GitHub repository.

# Send the link of the final HTML report (don’t forget to make your repository public!) to christian.althaus@unibe.ch (Subject: Projects in R - Assessment) by 26 April 2024.
