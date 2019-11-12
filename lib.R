library(readr)
library(dplyr)

basico_censo_pb_utf8 <- read_csv("basico-censo-pb-utf8.csv")

basico_censo_pb_utf8 %>% 
  filter(Nome_do_municipio == "CAJAZEIRAS") %>%
  write_csv("basico-censo-cZ.csv")