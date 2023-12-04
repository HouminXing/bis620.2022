## code to prepare `DATASET` datasets goes here

accel = readRDS("accel.rds")
studies = readRDS("studies.rds")
conditions = readRDS("conditions.rds")
countries = readRDS("countries.rds")
endpoints = readRDS("endpoints.rds")
interventions = readRDS("interventions.rds")

usethis::use_data(accel, overwrite = TRUE)
usethis::use_data(studies, overwrite = TRUE)
usethis::use_data(conditions, overwrite = TRUE)
usethis::use_data(countries, overwrite = TRUE)
usethis::use_data(endpoints, overwrite = TRUE)
usethis::use_data(interventions, overwrite = TRUE)
