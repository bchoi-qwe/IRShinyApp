library(shiny)
library(bs4Dash)
library(DT)
library(editbl)

ui <- bs4DashPage(
    bs4DashNavbar(
        bs4DashBrand(title = span(icon("wave-square"))),
        fluidRow(
            selectInput(
                "global_portfolio",
                label = NULL,
                choices = c("All", "Book A", "Book B", "Book C"),
                selected = "All"
            ),
            dateRangeInput(
                "global_dates",
                label = NULL,
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
            bs4SidebarMenuItem(
                "Portfolio",
                tabName = "portfolio",
                icon = icon("layer-group")
            ),
            bs4SidebarMenuItem(
                "PnL Attribution",
                tabName = "pnl",
                icon = icon("scale-balanced")
            ),
            bs4SidebarMenuItem("Other", tabName = "other", icon = icon("circle-info"))
        )
    ),
    
    bs4DashBody(
        bs4TabItems(
            bs4TabItem(
                tabName = "home",
                bs4TabCard(
                    id = "home_subtabs",
                    width = 12,
                    
                    
                    
                    
                    tabPanel(
                        "Tab 1",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "home_tab1_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "home_tab1_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "home_tab1_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "home_tab1_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 1",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("home_box1_plot", height = 250)
                            ),
                            bs4Card(
                                title = "box 2",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("home_box2_plot", height = 250)
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("home_box3_plot", height = 250)
                                
                            ),
                            bs4Card(
                                title = "box 4",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("home_box4_plot", height = 250)
                                
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 2",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "home_tab2_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "home_tab2_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "home_tab2_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "home_tab2_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "Tab 2 content",
                                width = 12,
                                solidHeader = TRUE,
                                status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 3",
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "home_tab3_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "home_tab3_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "home_tab3_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "home_tab3_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "Tab 3 content",
                                width = 12,
                                solidHeader = TRUE,
                                status = "primary",
                                p("Placeholder2")
                            )
                        )
                    )
                )
            ),
            
            bs4TabItem(
                tabName = "rates",
                bs4TabCard(
                    id = "rates_subtabs",
                    width = 12,
                    
                    
                    
                    
                    tabPanel(
                        "Tab 1",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "rates_tab1_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "rates_tab1_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "rates_tab1_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "rates_tab1_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 1",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("rates_box1_plot", height = 250)
                            ),
                            bs4Card(
                                title = "box 2",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("rates_box2_plot", height = 250)
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("rates_box3_plot", height = 250)
                                
                            ),
                            bs4Card(
                                title = "box 4",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("rates_box4_plot", height = 250)
                                
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 2",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "rates_tab2_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "rates_tab2_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "rates_tab2_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "rates_tab2_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "Tab 2 content",
                                width = 12,
                                solidHeader = TRUE,
                                status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 3",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "rates_tab3_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "rates_tab3_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "rates_tab3_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "rates_tab3_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            ),
                            
                            fluidRow(
                                bs4Card(
                                    title = "Tab 3 content",
                                    width = 12,
                                    solidHeader = TRUE,
                                    status = "primary",
                                    p("Placeholder2")
                                )
                            )
                        )
                    )
                )
            ),
            
            bs4TabItem(
                tabName = "risk",
                bs4TabCard(
                    id = "risk_subtabs",
                    width = 12,
                    
                    
                    
                    
                    tabPanel(
                        "Tab 1",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "risk_tab1_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "risk_tab1_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "risk_tab1_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "risk_tab1_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 1",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("risk_box1_plot", height = 250)
                            ),
                            bs4Card(
                                title = "box 2",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("risk_box2_plot", height = 250)
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("risk_box3_plot", height = 250)
                                
                            ),
                            bs4Card(
                                title = "box 4",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("risk_box4_plot", height = 250)
                                
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 2",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "risk_tab2_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "risk_tab2_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "risk_tab2_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "risk_tab2_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "Tab 2 content",
                                width = 12,
                                solidHeader = TRUE,
                                status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 3",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "risk_tab3_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "risk_tab3_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "risk_tab3_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "risk_tab3_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "Tab 3 content",
                                width = 12,
                                solidHeader = TRUE,
                                status = "primary",
                                p("Placeholder2")
                            )
                        )
                    )
                )
            ),
            
            bs4TabItem(
                tabName = "portfolio",
                bs4TabCard(
                    id = "portfolio_subtabs",
                    width = 12,
                    
                    
                    
                    
                    tabPanel(
                        "Tab 1",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab1_input1",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                ),
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab1_input2",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                ),
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab1_input3",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                ),
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab1_input4",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                )
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 1",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("portfolio_box1_plot", height = 250)
                            ),
                            bs4Card(
                                title = "box 2",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("portfolio_box2_plot", height = 250)
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("portfolio_box3_plot", height = 250)
                                
                            ),
                            bs4Card(
                                title = "box 4",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("portfolio_box4_plot", height = 250)
                                
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 2",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab2_input1",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                ),
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab2_input2",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                ),
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab2_input3",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                ),
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab2_input4",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                )
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "Tab 2 content",
                                width = 12,
                                solidHeader = TRUE,
                                status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 3",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab3_input1",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                ),
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab3_input2",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                ),
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab3_input3",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                ),
                                column(
                                    3,
                                    selectInput(
                                        "portfolio_tab3_input4",
                                        label = NULL,
                                        choices = c("1", "2", "3", "4")
                                    )
                                )
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "Tab 3 content",
                                width = 12,
                                solidHeader = TRUE,
                                status = "primary",
                                p("Placeholder2")
                            )
                        )
                    )
                )
            ),
            
            bs4TabItem(
                tabName = "pnl",
                bs4TabCard(
                    id = "pnl_subtabs",
                    width = 12,
                    
                    
                    
                    
                    tabPanel(
                        "Tab 1",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "pnl_tab1_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "pnl_tab1_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "pnl_tab1_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "pnl_tab1_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 1",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("pnl_box1_plot", height = 250)
                            ),
                            bs4Card(
                                title = "box 2",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("pnl_box2_plot", height = 250)
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("pnl_box3_plot", height = 250)
                                
                            ),
                            bs4Card(
                                title = "box 4",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("pnl_box4_plot", height = 250)
                                
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 2",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "pnl_tab2_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "pnl_tab2_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "pnl_tab2_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "pnl_tab2_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "Tab 2 content",
                                width = 12,
                                solidHeader = TRUE,
                                status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 3",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "pnl_tab3_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "pnl_tab3_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "pnl_tab3_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "pnl_tab3_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "Tab 3 content",
                                width = 12,
                                solidHeader = TRUE,
                                status = "primary",
                                p("Placeholder2")
                            )
                        )
                    )
                )
            ),
            bs4TabItem(
                tabName = "other",
                bs4TabCard(
                    id = "other_subtabs",
                    width = 12,
                    
                    
                    
                    
                    tabPanel(
                        "Tab 1",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "other_tab1_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "other_tab1_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "other_tab1_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "other_tab1_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 1",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("other_box1_plot", height = 250)
                            ),
                            bs4Card(
                                title = "box 2",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("other_box2_plot", height = 250)
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "box 3",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("other_box3_plot", height = 250)
                                
                            ),
                            bs4Card(
                                title = "box 4",
                                width = 6,
                                solidHeader = TRUE,
                                status = "primary",
                                plotOutput("other_box4_plot", height = 250)
                                
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 2",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "other_tab2_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "other_tab2_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "other_tab2_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "other_tab2_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "Tab 2 content",
                                width = 12,
                                solidHeader = TRUE,
                                status = "primary",
                                p("Placeholder")
                            )
                        )
                    ),
                    
                    tabPanel(
                        "Tab 3",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            fluidRow(
                                column(3, selectInput(
                                    "other_tab3_input1",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "other_tab3_input2",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "other_tab3_input3",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                )),
                                column(3, selectInput(
                                    "other_tab3_input4",
                                    label = NULL,
                                    choices = c("1", "2", "3", "4")
                                ))
                            )
                        ),
                        
                        fluidRow(
                            bs4Card(
                                title = "Tab 3 content",
                                width = 12,
                                solidHeader = TRUE,
                                status = "primary",
                                p("Placeholder2")
                            )
                        )
                    )
                )
            )
        )
    )
)
