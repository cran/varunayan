## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(varunayan)

## ----era5-setup, eval = FALSE-------------------------------------------------
# setup_cds_credentials(key = "your-personal-access-token")

## ----era5-bbox, eval = FALSE--------------------------------------------------
# bbox <- era5ify_bbox(
#   request_id = "quickstart_bbox",
#   variables = c("2m_temperature", "total_precipitation"),
#   start_date = "2024-01-01",
#   end_date = "2024-01-05",
#   north = 29, south = 28, east = 78, west = 76.5,
#   frequency = "daily"
# )
# head(bbox)

## ----era5-geojson, eval = FALSE-----------------------------------------------
# states <- era5ify_geojson(
#   request_id = "quickstart_states",
#   variables = "2m_temperature",
#   start_date = "2024-01-01",
#   end_date = "2024-01-01",
#   json_file = "https://geo.bharatviz.org/geojsons/admin/India-geodata-lgd-states.geojson",
#   frequency = "daily",
#   level = "feature"
# )
# head(states)

## ----era5-point, eval = FALSE-------------------------------------------------
# mumbai <- era5ify_point(
#   request_id = "quickstart_point",
#   variables = c("2m_temperature", "total_precipitation"),
#   start_date = "2024-08-01",
#   end_date = "2024-08-07",
#   lat = 19.07, lon = 72.88,
#   frequency = "daily"
# )
# mumbai

## ----era5-pressure, eval = FALSE----------------------------------------------
# profile <- era5ify_bbox(
#   request_id = "quickstart_pressure",
#   variables = "temperature",
#   start_date = "2024-01-01",
#   end_date = "2024-01-03",
#   north = 29, south = 28, east = 78, west = 76.5,
#   dataset_type = "pressure",
#   pressure_levels = c("1000", "850", "700", "500", "300", "200"),
#   frequency = "daily"
# )
# head(profile)

## ----era5-pressure-plot, eval = FALSE-----------------------------------------
# plot_series(spatial_mean(profile, "value", by = "pressure_level"),
#   x = "pressure_level", y = "value",
#   ylabel = "Temperature (°C)", title = "Temperature profile over Delhi, 1-3 January 2024"
# )

## ----search, message = FALSE--------------------------------------------------
search_variable("temperature", dataset_type = "all")

## ----describe, message = FALSE------------------------------------------------
describe_variables(
  c("2m_temperature", "total_precipitation", "surface_pressure"),
  dataset_type = "single"
)

## ----imd, eval = FALSE--------------------------------------------------------
# rain <- imd_rainfall_bbox(
#   request_id = "quickstart_imd_rain",
#   start_year = 2023, end_year = 2023,
#   north = 22, south = 16, east = 80, west = 73,
#   frequency = "monthly"
# )
# head(rain)

