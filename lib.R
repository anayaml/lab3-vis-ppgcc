library(readr)
library(dplyr)

basico_censo_pb_utf8 <- read_csv("basico-censo-pb-utf8.csv")

basico_censo_pb_utf8 %>% 
  filter(Nome_do_municipio == "CAJAZEIRAS") %>%
  write_csv("basico-censo-cZ.csv")

domicilios_cz <- read_delim("Domicilio01_PB.csv",";", escape_double = FALSE, trim_ws = TRUE)

dom <- domicilios_cz %>%
  select(Cod_setor, Situacao_setor, V001, V060, V061) %>%
  write_csv("domicilio-cZ.csv")