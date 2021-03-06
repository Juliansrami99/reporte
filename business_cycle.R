#Comentario semanal. Económico.#Descripción del trabajo de la semana#

library(shiny)
library(dygraphs)

business_page <- fluidPage(
  fluidRow(
    div(class="enc-business",
      tags$nav(class="navbar business",
        div(class="container-left",
          tags$ul(class="nav navbar-nav business",
            tags$li(class="active",
              a(href="#tab-1577-1",`data-toggle`="tab",`data-value`="Fixed-Income Markets","Fixed-Income Markets")
              ),
            tags$li(
              a(href="#tab-1577-2",`data-toggle`="tab",`data-value`="U.S. Stock Market","U.S. Stock Market")
              ),
            tags$li(
              a(href="#tab-1577-3",`data-toggle`="tab",`data-value`="Commodities Markets","Commodities Markets")
              ),
            ),
          ),
        ),
      div(class="tab-content",
          #TAB 1 - FIXED INCOME MARKETS
          div(class="tab-pane active", `data-value`="Fixed-Income Markets", id="tab-1577-1",
            div(class="enc-business",
              fluidRow(class="container-left",
                div(class="group-1-business",
                  column(3,offset = 0,style='padding-left:0px; padding-right:0px;',
                    h3(class="label-date-business","Date Range"),
                    div(class="date-business",
                      #dateRangeInput('rangeIncome',label = "Date Range",start = "2000-01-01", end = Sys.Date(),separator = " - ", format = "dd M. yyyy",startview = 'month', language = 'en', weekstart = 0)
                      dateInput('rangeIncome_start',label = "",value="1979-01-01",min="1979-01-01",format = "dd M. yyyy",startview = 'month', language = 'en', weekstart = 1),
                      span(class="input-group-addon","-"),
                      dateInput('rangeIncome_end',label = "",format = "dd M. yyyy",startview = 'month',max=Sys.Date(), language = 'en', weekstart = 1),
                      ),
                    ),
                  column(9,offset = 0,class="col-search-stock",
                    div(class="search-stock select-business",
                      selectInput('indicatorIncome','Choose a Recession Indicator',choices = list(`U.S. Business Cycle` = list('U.S. PMI'),`World Business Cycle` = list('World Industrial Production',
                       'South Korea Exports',
                       'World Total Exports')),selectize=TRUE))
                    ),
                  ),
                ),
              ),
            div(class="group-income-markets",
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph-business enc1-business",h1("Visualizations")),
                  div(class="graph-business enc2-business",h3("(Graphs)")),
                  )
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_income", dygraphOutput('graph_income_1_1', height = 470)),
                  div(id="test-legend")
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_income", dygraphOutput('graph_income_1_2', height = 470)),
                  div(id="test-legend")
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_income", dygraphOutput('graph_income_1_3', height = 470)),
                  div(id="test-legend")
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_income", dygraphOutput('graph_income_1_4', height = 470)),
                  div(id="test-legend")
                  ),
                ), 
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_income", dygraphOutput('graph_income_1_5', height = 470)),
                  div(id="test-legend")
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_income", dygraphOutput('graph_income_1_6', height = 470)),
                  div(id="test-legend")
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_income", dygraphOutput('graph_income_1_7', height = 470)),
                  div(id="test-legend")
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_income", dygraphOutput('graph_income_1_8', height = 470)),
                  div(id="test-legend")
                  ),
                ),     
              ),
            ),
          #TAB 2 - U.S. Stock
          div(class="tab-pane" ,`data-value`="U.S. Stock Market" ,id="tab-1577-2",
            div(class="enc-business",
              fluidRow(class="container-left",
                div(class="group-2-business",
                  column(3,offset = 0,style='padding-left:0px; padding-right:0px;',
                    h3(class="label-date-business","Date Range"),
                    div(class="date-business",
                      #dateRangeInput('rangeStock',label = "Date Range",start = "1979-01-01", end = Sys.Date(),separator = " - ", format = "dd M. yyyy",startview = 'month', language = 'en', weekstart = 0)),
                      dateInput('rangeStock_start',label = "",format = "dd M. yyyy",value="1979-01-01",min="1979-01-01",startview = 'month', language = 'en', weekstart = 1),
                      span(class="input-group-addon","-"),
                      dateInput('rangeStock_end',label = "",format = "dd M. yyyy",startview = 'month',max=Sys.Date(), language = 'en', weekstart = 1),
                      ),
                    ),
                  column(9,offset = 0,class="col-search-stock",
                    div(class="search-stock select-business",
                      selectInput('indicatorStock','Choose a Recession Indicator',choices = list(`U.S. Business Cycle` = list('U.S. PMI'),`World Business Cycle` = list('World Industrial Production',
                        'South Korea Exports',
                        'World Total Exports')),selectize=TRUE)
                      )
                    ),
                  )
                ),
              ),
            div(class="group-stock-market",
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph-business enc1-business",h1("Visualizations")),
                  div(class="graph-business enc2-business",h3("(Graphs)")),
                  )
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_stock", dygraphOutput('graph_stock_1_1', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_stock", dygraphOutput('graph_stock_1_2', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_stock", dygraphOutput('graph_stock_1_3', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_stock", dygraphOutput('graph_stock_1_4', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_stock", dygraphOutput('graph_stock_1_5', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_stock", dygraphOutput('graph_stock_1_6', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_stock", dygraphOutput('graph_stock_1_7', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_stock", dygraphOutput('graph_stock_1_8', height = 470))
                  ),
                ),      
              ),
            ),
          #TAB 3 - Commodities Markets
          div(class="tab-pane" ,`data-value`="Commodities Markets" ,id="tab-1577-3",
            div(class="enc-business",
              fluidRow(class="container-left",
                div(class="group-3-business",
                  column(3,offset = 0,style='padding-left:0px; padding-right:0px;',
                    h3(class="label-date-business","Date Range"),
                    div(class="date-business",
                      #dateRangeInput('rangeCommodities',label = "Date Range",start = "1979-01-01", end = Sys.Date(),separator = " - ", format = "dd M. yyyy",startview = 'month', language = 'en', weekstart = 0)),
                      dateInput('rangeCommodities_start',label = "",value="1979-01-01",min="1979-01-01",format = "dd M. yyyy",startview = 'month', language = 'en', weekstart = 1),
                      span(class="input-group-addon","-"),
                      dateInput('rangeCommodities_end',label = "",format = "dd M. yyyy",startview = 'month', max=Sys.Date(),language = 'en', weekstart = 1),
                    ),
                    ),
                  column(9,offset = 0,class="col-search-stock",
                    div(class="search-stock select-business",
                      selectInput('indicatorCommodities','Choose a Recession Indicator',choices = list(`U.S. Business Cycle` = list('U.S. PMI'),`World Business Cycle` = list('World Industrial Production',
                        'South Korea Exports',
                        'World Total Exports')),selectize=TRUE))                  ),
                  ),
                ),
              ),
            div(class="group-commodities-markets",
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph-business enc1-business",h1("Visualizations")),
                  div(class="graph-business enc2-business",h3("(Graphs)")),
                  )
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_commodities", dygraphOutput('graph_commodities_1_1', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_commodities", dygraphOutput('graph_commodities_1_2', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_commodities", dygraphOutput('graph_commodities_1_3', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_commodities", dygraphOutput('graph_commodities_1_4', height = 470))
                  ),
                ), 
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_commodities", dygraphOutput('graph_commodities_1_5', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_commodities", dygraphOutput('graph_commodities_1_6', height = 470))
                  ),
                ),
              fluidRow(class="container-left",
                column(12,offset = 0,style='padding-left:0px; padding-right:0px;',
                  div(class="graph_commodities", dygraphOutput('graph_commodities_1_7', height = 470))
                  ),
                ),    
              ),
            )
          )
),
),
) 