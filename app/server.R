library(shiny)
library(DT)
library(dplyr)

server <- function(input, output, session) {

global_filters <- reactive({
  list(
    portfolio = input$global_book,
    date_range = input$global_dates,
    val_date = input$valuation_date
    )
})

portfolio_base <- reactive({
  a <- global_filters()
  
  data <- portfolio_data %>% 
    filter(
      date >= a$date_range[1],
      date <= a$date_range[2])
  
  if (a$portfolio == "All") {
    data
  } else {
    data %>% filter(book == a$portfolio)
  }
})

home_tab1_filters <- reactive({
  list(
    input1 = input$home_tab1_input1,
    input2 = input$home_tab1_input2,
    input3 = input$home_tab1_input3,
    input4 = input$home_tab1_input4
  )
})

home_tab1_data <- reactive({
  a <- global_filters()
  b <- home_tab1_filters()
  
  portfolio_base() %>% 
    filter(
      home1 == b$input1,
      home2 == b$input2,
      home3 == b$input3,
      home4 == b$input4
    )
})

home_tab2_filters <- reactive({
  list(
    input1 = input$home_tab2_input1,
    input2 = input$home_tab2_input2,
    input3 = input$home_tab2_input3,
    input4 = input$home_tab2_input4
  )
})

home_tab2_data <- reactive({
  a <- global_filters()
  b <- home_tab2_filters()
  
  portfolio_base() %>% 
    filter(
      home1 == b$input1,
      home2 == b$input2,
      home3 == b$input3,
      home4 == b$input4
    )
})

home_tab3_filters <- reactive({
  list(
    input1 = input$home_tab3_input1,
    input2 = input$home_tab3_input2,
    input3 = input$home_tab3_input3,
    input4 = input$home_tab3_input4
  )
})

home_tab3_data <- reactive({
  a <- global_filters()
  b <- home_tab3_filters()
  
  portfolio_base() %>% 
    filter(
      home1 == b$input1,
      home2 == b$input2,
      home3 == b$input3,
      home4 == b$input4
    )
})

rates_tab1_filters <- reactive({
  list(
    input1 = input$rates_tab1_input1,
    input2 = input$rates_tab1_input2,
    input3 = input$rates_tab1_input3,
    input4 = input$rates_tab1_input4
  )
})

rates_tab1_data <- reactive({
  a <- global_filters()
  b <- rates_tab1_filters()
  
  portfolio_base() %>% 
    filter(
      rates1 == b$input1,
      rates2 == b$input2,
      rates3 == b$input3,
      rates4 == b$input4
    )
})

rates_tab2_filters <- reactive({
  list(
    input1 = input$rates_tab2_input1,
    input2 = input$rates_tab2_input2,
    input3 = input$rates_tab2_input3,
    input4 = input$rates_tab2_input4
  )
})

rates_tab2_data <- reactive({
  a <- global_filters()
  b <- rates_tab2_filters()
  
  portfolio_base() %>% 
    filter(
      rates1 == b$input1,
      rates2 == b$input2,
      rates3 == b$input3,
      rates4 == b$input4
    )
})

rates_tab3_filters <- reactive({
  list(
    input1 = input$rates_tab3_input1,
    input2 = input$rates_tab3_input2,
    input3 = input$rates_tab3_input3,
    input4 = input$rates_tab3_input4
  )
})

rates_tab3_data <- reactive({
  a <- global_filters()
  b <- rates_tab3_filters()
  
  portfolio_base() %>% 
    filter(
      rates1 == b$input1,
      rates2 == b$input2,
      rates3 == b$input3,
      rates4 == b$input4
    )
})

risk_tab1_filters <- reactive({
  list(
    input1 = input$risk_tab1_input1,
    input2 = input$risk_tab1_input2,
    input3 = input$risk_tab1_input3,
    input4 = input$risk_tab1_input4
  )
})

risk_tab1_data <- reactive({
  a <- global_filters()
  b <- risk_tab1_filters()
  
  portfolio_base() %>% 
    filter(
      risk1 == b$input1,
      risk2 == b$input2,
      risk3 == b$input3,
      risk4 == b$input4
    )
})

risk_tab2_filters <- reactive({
  list(
    input1 = input$risk_tab2_input1,
    input2 = input$risk_tab2_input2,
    input3 = input$risk_tab2_input3,
    input4 = input$risk_tab2_input4
  )
})

risk_tab2_data <- reactive({
  a <- global_filters()
  b <- risk_tab2_filters()
  
  portfolio_base() %>% 
    filter(
      risk1 == b$input1,
      risk2 == b$input2,
      risk3 == b$input3,
      risk4 == b$input4
    )
})

risk_tab3_filters <- reactive({
  list(
    input1 = input$risk_tab3_input1,
    input2 = input$risk_tab3_input2,
    input3 = input$risk_tab3_input3,
    input4 = input$risk_tab3_input4
  )
})

risk_tab3_data <- reactive({
  a <- global_filters()
  b <- risk_tab3_filters()
  
  portfolio_base() %>% 
    filter(
      risk1 == b$input1,
      risk2 == b$input2,
      risk3 == b$input3,
      risk4 == b$input4
    )
})

portfolio_tab1_filters <- reactive({
  list(
    input1 = input$portfolio_tab1_input1,
    input2 = input$portfolio_tab1_input2,
    input3 = input$portfolio_tab1_input3,
    input4 = input$portfolio_tab1_input4
  )
})

portfolio_tab1_data <- reactive({
  a <- global_filters()
  b <- portfolio_tab1_filters()
  
  portfolio_base() %>% 
    filter(
      portfolio1 == b$input1,
      portfolio2 == b$input2,
      portfolio3 == b$input3,
      portfolio4 == b$input4
    )
})

portfolio_tab2_filters <- reactive({
  list(
    input1 = input$portfolio_tab2_input1,
    input2 = input$portfolio_tab2_input2,
    input3 = input$portfolio_tab2_input3,
    input4 = input$portfolio_tab2_input4
  )
})

portfolio_tab2_data <- reactive({
  a <- global_filters()
  b <- portfolio_tab2_filters()
  
  portfolio_base() %>% 
    filter(
      portfolio1 == b$input1,
      portfolio2 == b$input2,
      portfolio3 == b$input3,
      portfolio4 == b$input4
    )
})

portfolio_tab3_filters <- reactive({
  list(
    input1 = input$portfolio_tab3_input1,
    input2 = input$portfolio_tab3_input2,
    input3 = input$portfolio_tab3_input3,
    input4 = input$portfolio_tab3_input4
  )
})

portfolio_tab3_data <- reactive({
  a <- global_filters()
  b <- portfolio_tab3_filters()
  
  portfolio_base() %>% 
    filter(
      portfolio1 == b$input1,
      portfolio2 == b$input2,
      portfolio3 == b$input3,
      portfolio4 == b$input4
    )
})

pnl_tab1_filters <- reactive({
  list(
    input1 = input$pnl_tab1_input1,
    input2 = input$pnl_tab1_input2,
    input3 = input$pnl_tab1_input3,
    input4 = input$pnl_tab1_input4
  )
})

pnl_tab1_data <- reactive({
  a <- global_filters()
  b <- pnl_tab1_filters()
  
  pnl_base() %>% 
    filter(
      pnl1 == b$input1,
      pnl2 == b$input2,
      pnl3 == b$input3,
      pnl4 == b$input4
    )
})

pnl_tab2_filters <- reactive({
  list(
    input1 = input$pnl_tab2_input1,
    input2 = input$pnl_tab2_input2,
    input3 = input$pnl_tab2_input3,
    input4 = input$pnl_tab2_input4
  )
})

pnl_tab2_data <- reactive({
  a <- global_filters()
  b <- pnl_tab2_filters()
  
  pnl_base() %>% 
    filter(
      pnl1 == b$input1,
      pnl2 == b$input2,
      pnl3 == b$input3,
      pnl4 == b$input4
    )
})

pnl_tab3_filters <- reactive({
  list(
    input1 = input$pnl_tab3_input1,
    input2 = input$pnl_tab3_input2,
    input3 = input$pnl_tab3_input3,
    input4 = input$pnl_tab3_input4
  )
})

pnl_tab3_data <- reactive({
  a <- global_filters()
  b <- pnl_tab3_filters()
  
  pnl_base() %>% 
    filter(
      pnl1 == b$input1,
      pnl2 == b$input2,
      pnl3 == b$input3,
      pnl4 == b$input4
    )
})

other_tab1_filters <- reactive({
  list(
    input1 = input$other_tab1_input1,
    input2 = input$other_tab1_input2,
    input3 = input$other_tab1_input3,
    input4 = input$other_tab1_input4
  )
})

other_tab1_data <- reactive({
  a <- global_filters()
  b <- other_tab1_filters()
  
  other_base() %>% 
    filter(
      other1 == b$input1,
      other2 == b$input2,
      other3 == b$input3,
      other4 == b$input4
    )
})

other_tab2_filters <- reactive({
  list(
    input1 = input$other_tab2_input1,
    input2 = input$other_tab2_input2,
    input3 = input$other_tab2_input3,
    input4 = input$other_tab2_input4
  )
})

other_tab2_data <- reactive({
  a <- global_filters()
  b <- other_tab2_filters()
  
  other_base() %>% 
    filter(
      other1 == b$input1,
      other2 == b$input2,
      other3 == b$input3,
      other4 == b$input4
    )
})

other_tab3_filters <- reactive({
  list(
    input1 = input$other_tab3_input1,
    input2 = input$other_tab3_input2,
    input3 = input$other_tab3_input3,
    input4 = input$other_tab3_input4
  )
})

other_tab3_data <- reactive({
  a <- global_filters()
  b <- other_tab3_filters()
  
  other_base() %>% 
    filter(
      other1 == b$input1,
      other2 == b$input2,
      other3 == b$input3,
      other4 == b$input4
    )
})

book_a_holdings <- reactiveVal(
  data.frame(
    Name = character(),
    Rate = numeric(),
    MDate = as.Date(character()),
    FV = numeric(),
    Frequency = numeric(),
    VDate = as.Date(character()),
    stringsAsFactors = FALSE
  )
)

observeEvent(input$insert_bonds_book_a, {
  new_row <- data.frame(
    Name = as.character(input$bond_issuer_a),
    Rate = as.numeric(input$bond_coupon_rate_a),
    MDate = as.Date(input$bond_maturity_date_a),
    FV = as.numeric(input$face_value_a),
    Frequency = as.numeric(input$frequency_a),
    VDate = as.Date(input$valuation_date),
    stringsAsFactors = FALSE
    )

  book_a_holdings(
    rbind(
      book_a_holdings(),
      new_row
    )
  )
})
  
book_b_holdings <- reactiveVal(
  data.frame(
    Name = character(),
    Rate = numeric(),
    MDate = as.Date(character()),
    FV = numeric(),
    Frequency = numeric(),
    VDate = as.Date(character()),
    stringsAsFactors = FALSE
  )
)

observeEvent(input$insert_bonds_book_b, {
  new_row <- data.frame(
    Name = as.character(input$bond_issuer_b),
    Rate = as.numeric(input$bond_coupon_rate_b),
    MDate = as.Date(input$bond_maturity_date_b),
    FV = as.numeric(input$face_value_b),
    Frequency = as.numeric(input$frequency_b),
    VDate = as.Date(input$valuation_date),
    stringsAsFactors = FALSE
  )
  
  book_b_holdings(
    rbind(
      book_b_holdings(),
      new_row
    )
  )
})

output$bond_name_a <- renderDataTable ({
  datatable(book_a_holdings())
})
  
output$bond_name_b <- renderDataTable ({
  datatable(book_b_holdings())
})

}
