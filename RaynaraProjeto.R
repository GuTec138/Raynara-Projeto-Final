library(tidyquant)
library(dplyr)

prices <- c("TOTS3", "ASAI3", "VALE3", "PETR4", "PETR3") |>
  paste0(".SA") |>
  tq_get(get = "stock.prices", complete_cases = TRUE, from = "2010-01-01") |>
  mutate(symbol = sub(".SA", "", symbol))

  write.csv(prices, "prices.csv", row.names = FALSE)
  prices <- read.csv("C:/Users/gusta/OneDrive/Documentos/RaynaraProjeto1/prices.csv")

