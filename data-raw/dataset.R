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

# ----- FRED DFII5 -----

fred_id <- "DFII5"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DFII5 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DFII5,  file.path(out_dir, "rates_DFII5.rds"))
write_csv(DFII5, file.path(out_dir_raw, "rates_DFII5.csv"))

# ----- FRED DFII7 -----

fred_id <- "DFII7"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DFII7 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DFII7,  file.path(out_dir, "rates_DFII7.rds"))
write_csv(DFII7, file.path(out_dir_raw, "rates_DFII7.csv"))

# ----- FRED DFII10 -----

fred_id <- "DFII10"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DFII10 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DFII10,  file.path(out_dir, "rates_DFII10.rds"))
write_csv(DFII10, file.path(out_dir_raw, "rates_DFII10.csv"))

# ----- FRED DFII20 -----

fred_id <- "DFII20"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DFII20 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DFII20,  file.path(out_dir, "rates_DFII20.rds"))
write_csv(DFII20, file.path(out_dir_raw, "rates_DFII20.csv"))

# ----- FRED DFII30 -----

fred_id <- "DFII30"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DFII30 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DFII30,  file.path(out_dir, "rates_DFII30.rds"))
write_csv(DFII30, file.path(out_dir_raw, "rates_DFII30.csv"))

# ----- FRED DFEDTARL -----

fred_id <- "DFEDTARL"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DFEDTARL <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DFEDTARL,  file.path(out_dir, "rates_DFEDTARL.rds"))
write_csv(DFEDTARL, file.path(out_dir_raw, "rates_DFEDTARL.csv"))

# ----- FRED DFEDTARU -----

fred_id <- "DFEDTARU"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DFEDTARU <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DFEDTARU,  file.path(out_dir, "rates_DFEDTARU.rds"))
write_csv(DFEDTARU, file.path(out_dir_raw, "rates_DFEDTARU.csv"))

# ----- FRED SOFR -----

fred_id <- "SOFR"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

SOFR <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(SOFR,  file.path(out_dir, "rates_SOFR.rds"))
write_csv(SOFR, file.path(out_dir_raw, "rates_SOFR.csv"))

# ----- FRED OBFR -----

fred_id <- "OBFR"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

OBFR <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(OBFR,  file.path(out_dir, "rates_OBFR.rds"))
write_csv(OBFR, file.path(out_dir_raw, "rates_OBFR.csv"))

# ----- FRED RRPONTSYD -----

fred_id <- "RRPONTSYD"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

RRPONTSYD <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(RRPONTSYD,  file.path(out_dir, "rates_RRPONTSYD.rds"))
write_csv(RRPONTSYD, file.path(out_dir_raw, "rates_RRPONTSYD.csv"))

# ----- FRED DTB3 -----

fred_id <- "DTB3"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DTB3 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DTB3,  file.path(out_dir, "rates_DTB3.rds"))
write_csv(DTB3, file.path(out_dir_raw, "rates_DTB3.csv"))

# ----- FRED SOFR30DAYAVG -----

fred_id <- "SOFR30DAYAVG"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

SOFR30DAYAVG <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(SOFR30DAYAVG,  file.path(out_dir, "rates_SOFR30DAYAVG.rds"))
write_csv(SOFR30DAYAVG, file.path(out_dir_raw, "rates_SOFR30DAYAVG.csv"))

# ----- FRED CPIAUCSL -----

fred_id <- "CPIAUCSL"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

CPIAUCSL <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(CPIAUCSL,  file.path(out_dir, "rates_CPIAUCSL.rds"))
write_csv(CPIAUCSL, file.path(out_dir_raw, "rates_CPIAUCSL.csv"))

# ----- FRED CPILFESL -----

fred_id <- "CPILFESL"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

CPILFESL <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(CPILFESL,  file.path(out_dir, "rates_CPILFESL.rds"))
write_csv(CPILFESL, file.path(out_dir_raw, "rates_CPILFESL.csv"))

# ----- FRED PCEPI -----

fred_id <- "PCEPI"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

PCEPI <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(PCEPI,  file.path(out_dir, "rates_PCEPI.rds"))
write_csv(PCEPI, file.path(out_dir_raw, "rates_PCEPI.csv"))

# ----- FRED PCEPILFE -----

fred_id <- "PCEPILFE"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

PCEPILFE <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(PCEPILFE,  file.path(out_dir, "rates_PCEPILFE.rds"))
write_csv(PCEPILFE, file.path(out_dir_raw, "rates_PCEPILFE.csv"))

# ----- FRED T5YIE -----

fred_id <- "T5YIE"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

T5YIE <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(T5YIE,  file.path(out_dir, "rates_T5YIE.rds"))
write_csv(T5YIE, file.path(out_dir_raw, "rates_T5YIE.csv"))

# ----- FRED T10YIE -----

fred_id <- "T10YIE"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

T10YIE <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(T10YIE,  file.path(out_dir, "rates_T10YIE.rds"))
write_csv(T10YIE, file.path(out_dir_raw, "rates_T10YIE.csv"))

# ----- FRED T10YIEM -----

fred_id <- "T10YIEM"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

T10YIEM <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(T10YIEM,  file.path(out_dir, "rates_T10YIEM.rds"))
write_csv(T10YIEM, file.path(out_dir_raw, "rates_T10YIEM.csv"))

# ----- FRED T5YIFR -----

fred_id <- "T5YIFR"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

T5YIFR <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(T5YIFR,  file.path(out_dir, "rates_T5YIFR.rds"))
write_csv(T5YIFR, file.path(out_dir_raw, "rates_T5YIFR.csv"))

# ----- FRED GDPC1 -----

fred_id <- "GDPC1"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

GDPC1 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(GDPC1,  file.path(out_dir, "rates_GDPC1.rds"))
write_csv(GDPC1, file.path(out_dir_raw, "rates_GDPC1.csv"))

# ----- FRED GDP -----

fred_id <- "GDP"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

GDP <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(GDP,  file.path(out_dir, "rates_GDP.rds"))
write_csv(GDP, file.path(out_dir_raw, "rates_GDP.csv"))

# ----- FRED UNRATE -----

fred_id <- "UNRATE"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

UNRATE <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(UNRATE,  file.path(out_dir, "rates_UNRATE.rds"))
write_csv(UNRATE, file.path(out_dir_raw, "rates_UNRATE.csv"))

# ----- FRED ICSA -----

fred_id <- "ICSA"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

ICSA <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(ICSA,  file.path(out_dir, "rates_ICSA.rds"))
write_csv(ICSA, file.path(out_dir_raw, "rates_ICSA.csv"))

# ----- FRED USREC -----

fred_id <- "USREC"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

USREC <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(USREC,  file.path(out_dir, "rates_USREC.rds"))
write_csv(USREC, file.path(out_dir_raw, "rates_USREC.csv"))

# ----- FRED T10Y2Y -----

fred_id <- "T10Y2Y"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

T10Y2Y <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(T10Y2Y,  file.path(out_dir, "rates_T10Y2Y.rds"))
write_csv(T10Y2Y, file.path(out_dir_raw, "rates_T10Y2Y.csv"))

# ----- FRED T10Y3M -----

fred_id <- "T10Y3M"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

T10Y3M <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(T10Y3M,  file.path(out_dir, "rates_T10Y3M.rds"))
write_csv(T10Y3M, file.path(out_dir_raw, "rates_T10Y3M.csv"))

# ----- FRED BAMLC0A0CM -----

fred_id <- "BAMLC0A0CM"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

BAMLC0A0CM <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(BAMLC0A0CM,  file.path(out_dir, "rates_BAMLC0A0CM.rds"))
write_csv(BAMLC0A0CM, file.path(out_dir_raw, "rates_BAMLC0A0CM.csv"))

# ----- FRED BAMLC0A4CBBB -----

fred_id <- "BAMLC0A4CBBB"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

BAMLC0A4CBBB <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(BAMLC0A4CBBB,  file.path(out_dir, "rates_BAMLC0A4CBBB.rds"))
write_csv(BAMLC0A4CBBB, file.path(out_dir_raw, "rates_BAMLC0A4CBBB.csv"))

# ----- FRED BAMLH0A0HYM2 -----

fred_id <- "BAMLH0A0HYM2"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

BAMLH0A0HYM2 <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(BAMLH0A0HYM2,  file.path(out_dir, "rates_BAMLH0A0HYM2.rds"))
write_csv(BAMLH0A0HYM2, file.path(out_dir_raw, "rates_BAMLH0A0HYM2.csv"))

# ----- FRED DAAA -----

fred_id <- "DAAA"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DAAA <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DAAA,  file.path(out_dir, "rates_DAAA.rds"))
write_csv(DAAA, file.path(out_dir_raw, "rates_DAAA.csv"))

# ----- FRED DBAA -----

fred_id <- "DBAA"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

DBAA <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(DBAA,  file.path(out_dir, "rates_DBAA.rds"))
write_csv(DBAA, file.path(out_dir_raw, "rates_DBAA.csv"))

# ----- FRED BAA10Y -----

fred_id <- "BAA10Y"
fred_url <- sprintf("https://fred.stlouisfed.org/graph/fredgraph.csv?id=%s", fred_id)

fred_data <- read_csv(
    file = fred_url,
    col_names = TRUE,
    na = c("", ".", "NA"),
    show_col_types = FALSE
)

BAA10Y <- fred_data %>% 
    transmute(
        date = as.Date(observation_date),
        series_id = fred_id,
        value = as.numeric(.data[[fred_id]])
    ) %>% 
    arrange(date)

saveRDS(BAA10Y,  file.path(out_dir, "rates_BAA10Y.rds"))
write_csv(BAA10Y, file.path(out_dir_raw, "rates_BAA10Y.csv"))

