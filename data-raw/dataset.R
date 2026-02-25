library(readr)
library(dplyr)
library(lubridate)

# Global Environment

out_dir <- file.path("app", "data")
dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)
out_dir_raw <- file.path("data-raw", "downloads")
dir.create(out_dir_raw, recursive = TRUE, showWarnings = FALSE)

# ----- FRED DFF -----

fred_id <- "DFF"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

dff <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(dff,  file.path(out_dir, "rates_dff.rds"))
write_csv(dff, file.path(out_dir_raw, "rates_dff.csv"))

# ----- FRED IORB -----

fred_id <- "IORB"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

iorb <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(iorb,  file.path(out_dir, "rates_iorb.rds"))
write_csv(iorb, file.path(out_dir_raw, "rates_iorb.csv"))

# ----- FRED DGS1MO -----

fred_id <- "DGS1MO"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DGS1MO <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DGS1MO,  file.path(out_dir, "rates_DGS1MO.rds"))
write_csv(DGS1MO, file.path(out_dir_raw, "rates_DGS1MO.csv"))

# ----- FRED DGS3MO -----

fred_id <- "DGS3MO"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DGS3MO <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DGS3MO,  file.path(out_dir, "rates_DGS3MO.rds"))
write_csv(DGS3MO, file.path(out_dir_raw, "rates_DGS3MO.csv"))

# ----- FRED DGS6MO -----

fred_id <- "DGS6MO"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DGS6MO <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DGS6MO,  file.path(out_dir, "rates_DGS6MO.rds"))
write_csv(DGS6MO, file.path(out_dir_raw, "rates_DGS6MO.csv"))

# ----- FRED DGS1 -----

fred_id <- "DGS1"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DGS1 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DGS1,  file.path(out_dir, "rates_DGS1.rds"))
write_csv(DGS1, file.path(out_dir_raw, "rates_DGS1.csv"))

# ----- FRED DGS2 -----

fred_id <- "DGS2"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DGS2 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DGS2,  file.path(out_dir, "rates_DGS2.rds"))
write_csv(DGS2, file.path(out_dir_raw, "rates_DGS2.csv"))

# ----- FRED DGS3 -----

fred_id <- "DGS3"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DGS3 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DGS3,  file.path(out_dir, "rates_DGS3.rds"))
write_csv(DGS3, file.path(out_dir_raw, "rates_DGS3.csv"))

# ----- FRED DGS5 -----

fred_id <- "DGS5"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DGS5 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DGS5,  file.path(out_dir, "rates_DGS5.rds"))
write_csv(DGS5, file.path(out_dir_raw, "rates_DGS5.csv"))

# ----- FRED DGS7 -----

fred_id <- "DGS7"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DGS7 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DGS7,  file.path(out_dir, "rates_DGS7.rds"))
write_csv(DGS7, file.path(out_dir_raw, "rates_DGS7.csv"))

# ----- FRED DGS10 -----

fred_id <- "DGS10"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DGS10 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DGS10,  file.path(out_dir, "rates_DGS10.rds"))
write_csv(DGS10, file.path(out_dir_raw, "rates_DGS10.csv"))

# ----- FRED DGS20 -----

fred_id <- "DGS20"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DGS20 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DGS20,  file.path(out_dir, "rates_DGS20.rds"))
write_csv(DGS20, file.path(out_dir_raw, "rates_DGS20.csv"))

# ----- FRED DGS30 -----

fred_id <- "DGS30"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DGS30 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DGS30,  file.path(out_dir, "rates_DGS30.rds"))
write_csv(DGS30, file.path(out_dir_raw, "rates_DGS30.csv"))