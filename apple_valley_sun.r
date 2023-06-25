# Load necessary packages
library(tidyverse)
library(readxl)
library(dplyr)

# Read in data
data <- read_excel("Environmentally Speaking.xlsx")

# Create new variables for countries
data$Country <- recode(data$CountryCode, 
  "CA" = "Canada",
  "MX" = "Mexico",
  "US" = "United States",
  "PL" = "Poland")

# Convert 'Date' column to date format
data$Date <- as.Date(data$Date,
  format = "%d-%b-%Y")

# Summarize data by country & date
summary_by_country_date <- data %>% 
  group_by(Country, Date) %>% 
  summarise(Total_Num_Residents = n(),
            Total_Num_Items = sum(NumItems))

# Calculate summary statistics by country
summary_by_country <- summary_by_country_date %>% 
  group_by(Country) %>% 
  summarise(Avg_Items_Per_Day = mean(Total_Num_Items),
            Stdev_Items_Per_Day = sd(Total_Num_Items),
            Max_Items_Per_Day = max(Total_Num_Items))

# Visualize data using line plot
ggplot(data, aes(Date, NumItems, colour = Country)) +
  geom_line(size = 1.5) +
  xlab("Date") +
  ylab("Number of Items Recycled") +
  ggtitle("Number of Items Recycled by Country Over Time")

# Visualize summary statistics by country using bar plot
ggplot(summary_by_country, aes(Country, Avg_Items_Per_Day, fill = Country)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  xlab("Country") +
  ylab("Average Number of Items Recycled Per Day") +
  ggtitle("Average Number of Items Recycled Per Day by Country") +
  geom_errorbar(aes(ymin = Avg_Items_Per_Day - Stdev_Items_Per_Day, 
              ymax = Avg_Items_Per_Day + Stdev_Items_Per_Day), 
              width = 0.2, size = 1) +
  geom_text(aes(label = Max_Items_Per_Day),
            vjust = -.2, size = 3.5)