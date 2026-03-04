library(shiny)
library(bs4Dash)
library(DT)
library(editbl)

ui <- bs4DashPage(
    bs4DashNavbar(
        bs4DashBrand(title = span(icon("wave-square"))),
        rightUi = div(
            selectInput(
                "global_portfolio", label = NULL,
                choices = c("All", "Book A", "Book B", "Book C"),
                selected = "All",
            ),
            dateRangeInput(
                "global_dates", label = NULL,
                start = Sys.Date() - 30,
                end = Sys.Date(),
                format = "yyyy-mm-dd"
            )
        )
    ),
        
    bs4DashSidebar(
        minified = TRUE,
        expandOnHover = FALSE,
        bs4SidebarMenu(
            id = "tabs",
            bs4SidebarMenuItem("Home", tabName = "home", icon = icon("house")),
            bs4SidebarMenuItem("Rates", tabName = "rates", icon = icon("chart-line")),
            bs4SidebarMenuItem("Risk", tabName = "risk", icon = icon("calculator")),
            bs4SidebarMenuItem("Portfolio", tabName = "portfolio", icon = icon("layer-group")),
            bs4SidebarMenuItem("PnL Attribution", tabName = "pnl", icon = icon("scale-balanced")),
            bs4SidebarMenuItem("Other", tabName = "other", icon = icon("circle-info"))
        )
    ),
    
bs4DashBody(
        bs4TabItems(
            bs4TabItem(
                tabName = "home",
                
                bs4TabSetPanel(
                    id = "home_subtabs",
                    
                    bs4TabPanel(
                        title = "Tab 1",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("home_tab1_input1")),
                                column(3, selectInput("home_tab1_input2")),
                                column(3, selectInput("home_tab1_input3")),
                                column(3, selectInput("home_tab1_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 1", width = 6, solidHeader = TRUE, status = "primary",
                                plotOutput("home_box1_plot", height = 250),
                            ),
                            bs4Card(
                                title = "box 2", width = 6, solidHeader = TRUE, status = "primary",
                                plotOutput("home_box2_plot", height = 250),
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("home_box3_tbl"),
                                sliderInput("home_box3_slider", label = NULL, min = 0, max = 100, value = 50)
                            ),
                            bs4Card(
                                title = "box 4", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("home_box4_tbl"),
                                sliderInput("home_box4_slider", label = NULL, min = 0, max = 100, value = 50)
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 2",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("home_tab2_input1")),
                                column(3, selectInput("home_tab2_input2")),
                                column(3, selectInput("home_tab2_input3")),
                                column(3, selectInput("home_tab2_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 2 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 3",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("home_tab3_input1")),
                                column(3, selectInput("home_tab3_input2")),
                                column(3, selectInput("home_tab3_input3")),
                                column(3, selectInput("home_tab3_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 3 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    )
                )
            )
        ),
        
            bs4TabItem(
                tabName = "rates",
                
                bs4TabSetPanel(
                    id = "rates_subtabs",
                    
                    bs4TabPanel(
                        title = "Tab 1",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("rates_tab1_input1")),
                                column(3, selectInput("rates_tab1_input2")),
                                column(3, selectInput("rates_tab1_input3")),
                                column(3, selectInput("rates_tab1_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 1", width = 6, solidHeader = TRUE, status = "primary",
                                plotOutput("rates_box1_plot", height = 250),
                            ),
                            bs4Card(
                                title = "box 2", width = 6, solidHeader = TRUE, status = "primary",
                                plotOutput("rates_box2_plot", height = 250),
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("rates_box3_tbl"),
                                sliderInput("rates_box3_slider", label = NULL, min = 0, max = 100, value = 50)
                            ),
                            bs4Card(
                                title = "box 4", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("rates_box4_tbl"),
                                sliderInput("rates_box4_slider", label = NULL, min = 0, max = 100, value = 50)
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 2",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("rates_tab2_input1")),
                                column(3, selectInput("rates_tab2_input2")),
                                column(3, selectInput("rates_tab2_input3")),
                                column(3, selectInput("rates_tab2_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 2 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 3",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("rates_tab3_input1")),
                                column(3, selectInput("rates_tab3_input2")),
                                column(3, selectInput("rates_tab3_input3")),
                                column(3, selectInput("rates_tab3_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 3 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    )
                )
            )
        ),
        
        bs4TabItem(
            tabName = "risk",
            
            bs4TabSetPanel(
                id = "risk_subtabs",
                
                bs4TabPanel(
                    title = "Tab 1",
                    active = TRUE,
                    
                    bs4Card(
                        title = "Inputs",
                        width = 12,
                        fluidRow(
                            column(3, selectInput("risk_tab1_input1")),
                            column(3, selectInput("risk_tab1_input2")),
                            column(3, selectInput("risk_tab1_input3")),
                            column(3, selectInput("risk_tab1_input4")),
                        )
                    ),
                    
                    fluidRow(
                        bs4Card(
                            title = "box 1", width = 6, solidHeader = TRUE, status = "primary",
                            plotOutput("risk_box1_plot", height = 250),
                        ),
                        bs4Card(
                            title = "box 2", width = 6, solidHeader = TRUE, status = "primary",
                            plotOutput("risk_box2_plot", height = 250),
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("risk_box3_tbl"),
                                sliderInput("risk_box3_slider", label = NULL, min = 0, max = 100, value = 50)
                            ),
                            bs4Card(
                                title = "box 4", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("risk_box4_tbl"),
                                sliderInput("risk_box4_slider", label = NULL, min = 0, max = 100, value = 50)
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 2",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("risk_tab2_input1")),
                                column(3, selectInput("risk_tab2_input2")),
                                column(3, selectInput("risk_tab2_input3")),
                                column(3, selectInput("risk_tab2_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 2 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 3",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("risk_tab3_input1")),
                                column(3, selectInput("risk_tab3_input2")),
                                column(3, selectInput("risk_tab3_input3")),
                                column(3, selectInput("risk_tab3_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 3 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    )
                )
            )
        ),
        
        bs4TabItem(
            tabName = "portfolio",
            
            bs4TabSetPanel(
                id = "portfolio_subtabs",
                
                bs4TabPanel(
                    title = "Tab 1",
                    active = TRUE,
                    
                    bs4Card(
                        title = "Inputs",
                        width = 12,
                        fluidRow(
                            column(3, selectInput("portfolio_tab1_input1")),
                            column(3, selectInput("portfolio_tab1_input2")),
                            column(3, selectInput("portfolio_tab1_input3")),
                            column(3, selectInput("portfolio_tab1_input4")),
                        )
                    ),
                    
                    fluidRow(
                        bs4Card(
                            title = "box 1", width = 6, solidHeader = TRUE, status = "primary",
                            plotOutput("portfolio_box1_plot", height = 250),
                        ),
                        bs4Card(
                            title = "box 2", width = 6, solidHeader = TRUE, status = "primary",
                            plotOutput("portfolio_box2_plot", height = 250),
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("portfolio_box3_tbl"),
                                sliderInput("portfolio_box3_slider", label = NULL, min = 0, max = 100, value = 50)
                            ),
                            bs4Card(
                                title = "box 4", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("portfolio_box4_tbl"),
                                sliderInput("portfolio_box4_slider", label = NULL, min = 0, max = 100, value = 50)
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 2",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("portfolio_tab2_input1")),
                                column(3, selectInput("portfolio_tab2_input2")),
                                column(3, selectInput("portfolio_tab2_input3")),
                                column(3, selectInput("portfolio_tab2_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 2 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 3",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("portfolio_tab3_input1")),
                                column(3, selectInput("portfolio_tab3_input2")),
                                column(3, selectInput("portfolio_tab3_input3")),
                                column(3, selectInput("portfolio_tab3_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 3 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    )
                )
            )
        ),
        
        bs4TabItem(
            tabName = "pnl",
            
            bs4TabSetPanel(
                id = "pnl_subtabs",
                
                bs4TabPanel(
                    title = "Tab 1",
                    active = TRUE,
                    
                    bs4Card(
                        title = "Inputs",
                        width = 12,
                        fluidRow(
                            column(3, selectInput("pnl_tab1_input1")),
                            column(3, selectInput("pnl_tab1_input2")),
                            column(3, selectInput("pnl_tab1_input3")),
                            column(3, selectInput("pnl_tab1_input4")),
                        )
                    ),
                    
                    fluidRow(
                        bs4Card(
                            title = "box 1", width = 6, solidHeader = TRUE, status = "primary",
                            plotOutput("pnl_box1_plot", height = 250),
                        ),
                        bs4Card(
                            title = "box 2", width = 6, solidHeader = TRUE, status = "primary",
                            plotOutput("pnl_box2_plot", height = 250),
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("pnl_box3_tbl"),
                                sliderInput("pnl_box3_slider", label = NULL, min = 0, max = 100, value = 50)
                            ),
                            bs4Card(
                                title = "box 4", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("pnl_box4_tbl"),
                                sliderInput("pnl_box4_slider", label = NULL, min = 0, max = 100, value = 50)
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 2",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("pnl_tab2_input1")),
                                column(3, selectInput("pnl_tab2_input2")),
                                column(3, selectInput("pnl_tab2_input3")),
                                column(3, selectInput("pnl_tab2_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 2 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 3",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("pnl_tab3_input1")),
                                column(3, selectInput("pnl_tab3_input2")),
                                column(3, selectInput("pnl_tab3_input3")),
                                column(3, selectInput("pnl_tab3_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 3 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    )
                )
            )
        ),
        
        bs4TabItem(
            tabName = "other",
            
            bs4TabSetPanel(
                id = "other_subtabs",
                
                bs4TabPanel(
                    title = "Tab 1",
                    active = TRUE,
                    
                    bs4Card(
                        title = "Inputs",
                        width = 12,
                        fluidRow(
                            column(3, selectInput("other_tab1_input1")),
                            column(3, selectInput("other_tab1_input2")),
                            column(3, selectInput("other_tab1_input3")),
                            column(3, selectInput("other_tab1_input4")),
                        )
                    ),
                    
                    fluidRow(
                        bs4Card(
                            title = "box 1", width = 6, solidHeader = TRUE, status = "primary",
                            plotOutput("other_box1_plot", height = 250),
                        ),
                        bs4Card(
                            title = "box 2", width = 6, solidHeader = TRUE, status = "primary",
                            plotOutput("other_box2_plot", height = 250),
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("other_box3_tbl"),
                                sliderInput("other_box3_slider", label = NULL, min = 0, max = 100, value = 50)
                            ),
                            bs4Card(
                                title = "box 4", width = 6, solidHeader = TRUE, status = "primary",
                                DT::DTOutput("other_box4_tbl"),
                                sliderInput("other_box4_slider", label = NULL, min = 0, max = 100, value = 50)
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 2",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("other_tab2_input1")),
                                column(3, selectInput("other_tab2_input2")),
                                column(3, selectInput("other_tab2_input3")),
                                column(3, selectInput("other_tab2_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 2 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    bs4TabPanel(
                        title = "Tab 3",
                        active = TRUE,
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput("other_tab3_input1")),
                                column(3, selectInput("other_tab3_input2")),
                                column(3, selectInput("other_tab3_input3")),
                                column(3, selectInput("other_tab3_input4")),
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(title = "Tab 3 content", width = 12, solidHeader = TRUE, status = "primary",
                                p("Placeholder")
                            )
                        )
                    )
                )
            )
        )
    )
)
)