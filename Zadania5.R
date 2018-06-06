library(tidyverse)
library(dplyr)

# zad. 5-1

library(readr)
movies <- read_csv("zadania info/zajecia #5/movies.csv")
View(movies)


# zad. 5-2

filter(movies, year == 2005, Comedy)


# zad. 5-3

movies %>% select(title, year, budget) %>% arrange(desc(budget))


# zad. 5-4

filter(movies, Animation == 1, year >=1990 & year < 2000) %>%
  arrange(desc(rating))


# zad. 5-5

dramaty <- filter(movies, Drama == 1)
arrange(dramaty, desc(length))


# zad. 5-6

mpaa_rating <- group_by(movies, mpaa) %>%
  summarise (srednia = mean(rating), odchylenie = mad(rating))
