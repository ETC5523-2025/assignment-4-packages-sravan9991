library(tidyverse)
library(usethis)

netflix_raw <- read_csv("data-raw/netflix_titles.csv")

netflix_clean <- netflix_raw %>%
  mutate(
    date_added = as.Date(date_added, format = "%B %d, %Y"),
    duration_num = as.numeric(str_extract(duration, "\\d+")),
    duration_type = ifelse(str_detect(duration, "Season"), "Seasons", "Minutes"),
    type = as.factor(type),
    country = as.factor(country)
  ) %>%
  select(show_id, type, title, director, cast, country, date_added, release_year,
         rating, duration_num, duration_type, listed_in, description)

usethis::use_data(netflix_clean, overwrite = TRUE)
