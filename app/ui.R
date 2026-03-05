library(shiny)
library(bs4Dash)
library(DT)
library(fresh)

ui <- bs4DashPage(
    title = "IR Management Portfolio Dashboard",
    help = NULL,
    dark = NULL,
    fullscreen = FALSE,
    bs4DashNavbar(
        skin = "primary",
        status = "white",
        border = TRUE,
        controlbarIcon = NULL,
        
        div(style = "width: 100%;",
        fluidRow(
            column(1, div(align = "center", tags$h5("Book"))),
            column(2, selectInput("global_book", 
                label = NULL,
                choices = c("All", "Book A", "Book B"),
                selected = "All",
                width = "100%",
                selectize = FALSE
            ),),
            column(2, div(align = "center", tags$h5(tagList(icon("calendar"), " Date Range")))),
            column(3, dateRangeInput("global_dates", 
                label = NULL,
                start = Sys.Date() - 30,
                end = Sys.Date(),
                format = "yyyy-mm-dd",
                width = "100%"
            ),),
            column(2, div(align = "center", tags$h5(tagList("Valuation Date ", icon("calendar"))))),
            column(2, dateInput("valuation_date", label = NULL, 
                value = NULL,
                width = "100%"
            )))
        )
    ),
    
    bs4DashSidebar(
        minified = FALSE,
        expandOnHover = FALSE,
        bs4SidebarMenu(
            id = "tabs",
            bs4SidebarMenuItem("Bonds", tabName = "bonds", icon = icon("sliders")),
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
        tags$head(tags$style(HTML("
        .content-wrapper .content { padding: 0 !important; }
        .row { margin-left: 0 !important; margin-right: 0 !important; }
        [class*='col-'] { padding-left: 0 !important; padding-right: 0 !important; }
        .card { margin-bottom: 0 !important; }
        .card-body { padding: 0 !important; }
        .form-group { margin-bottom: 0.25rem !important; }
                                  "))
                  ),
    
        
        bs4TabItems(
            bs4TabItem(
                tabName = "bonds",
                fluidRow(
                    column(
                        width = 4,
                        bs4Card(
                            title = "All | ",
                            width = 12,
                            solidHeader = TRUE,
                            status = "primary",
                            height = "80vh"
                        )
                    ),
                    column(
                        width = 4,
                        bs4Card(
                            title = "Book A",
                            width = 12,
                            solidHeader = TRUE,
                            status = "primary",
                            height = "80vh",
                            fluidRow(
                                column(3, div(title = "Issuer", textInput("bond_issuer_a", label = NULL, placeholder = "Issuer"))),
                                column(2, div(title = "Coupon Rate", numericInput("bond_coupon_rate_a", label = NULL, value = NA, min = 0, step = 0.01))),
                                column(3, div(title = "Maturity Date", dateInput("bond_maturity_date_a", label = NULL, value = NULL))),
                                column(2, div(title = "Bond Type", selectInput("bond_type_a", label = NULL, choices = c("GOVT", "NA"), selected = "NA"))),
                                column(2, div(title = "Bond Currency", selectInput("bond_currency_a", label = NULL, choices = c("USD", "NA"), selected = "NA")))),
                            div(style = "height: 12px;"),
                        bs4Card(
                            title = "Book A | Holdings",
                            width = 12,
                            solidHeader = TRUE,
                            status = "primary",
                            DTOutput("bond_name_a")
                        )
                        )
                    ),
                    column(
                        width = 4,
                        bs4Card(
                            title = "Book B",
                            width = 12,
                            solidHeader = TRUE,
                            status = "primary",
                            height = "80vh",
                            fluidRow(
                                column(3, div(title = "Issuer", textInput("bond_issuer_b", label = NULL, placeholder = "Issuer"))),
                                column(2, div(title = "Coupon Rate", numericInput("bond_coupon_rate_b", label = NULL, value = NA, min = 0, step = 0.01))),
                                column(3, div(title = "Maturity Date", dateInput("bond_maturity_date_b", label = NULL, value = NULL))),
                                column(2, div(title = "Bond Type", selectInput("bond_type_b", label = NULL, choices = c("GOVT", "NA"), selected = "NA"))),
                                column(2, div(title = "Bond Currency", selectInput("bond_currency_b", label = NULL, choices = c("USD", "NA"), selected = "NA")))),
                            div(style = "height: 12px;"),
                        bs4Card(
                            title = "Book B | Holdings",
                            width = 12,
                            solidHeader = TRUE,
                            status = "primary",
                            DTOutput("bond_name_b")
                        )
                        )
                    )
                ),
                fluidRow(
                    column(
                        width = 4
                    ),
                    column(
                        width = 2,
                        actionButton(
                            "bonds_upload_book_a",
                            "Upload CSV/Excel",
                            icon = icon("upload"),
                            class = "btn-sm"
                        )
                    ),
                    column(
                        width = 2,
                        actionButton(
                            "insert_bonds_book_a",
                            "Insert Bond",
                            icon = icon("arrow-up"),
                            class = "btn-sm"
                        )
                    ),
                    column(
                        width = 2,
                        actionButton(
                            "bonds_upload_book_b",
                            "Upload CSV/Excel",
                            icon = icon("upload"),
                            class = "btn-sm"
                        )
                    ),
                    column(
                        width = 2,
                        actionButton(
                            "insert_bonds_book_b",
                            "Insert Bond",
                            icon = icon("arrow-up"),
                            class = "btn-sm"
                        )
                    ),
                )
            ),
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                    solidHeader = TRUE,
                    status = "primary",
                    
                    
                    
                    
                    tabPanel(
                        "Tab 1",
                        
                        
                        bs4Card(
                            title = "Inputs",
                            width = 12,
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
                            solidHeader = TRUE,
                            status = "primary",
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
