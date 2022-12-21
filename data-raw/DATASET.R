## code to prepare `DATASET` dataset goes here

ukb_accel <- readRDS("accel.rds")
usethis::use_data(ukb_accel, overwrite = TRUE)

library(readr)

svi_dict <- read_csv('MinorityHealthSVI_DataDictionary_2018.csv')
usethis::use_data(svi_dict, overwrite = TRUE)

svi_tb <- read_csv("mh_svi_county_2018.csv")
usethis::use_data(svi_tb, overwrite = TRUE)

