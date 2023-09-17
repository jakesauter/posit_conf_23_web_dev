# Launch the ShinyApp (Do not remove this comment)
# To deploy, run: rsconnect::deployApp()
# Or use the blue button on top of this file

# pkgload::load_all()
# options( "golem.app.prod" = TRUE)
# run_app() # add parameters here (if any)

library(bslib)
library(bsicons)


ui <- 
    bslib::page_fluid(
        bslib::layout_sidebar( 
            sidebar = 
                sidebar(
                    "Pokemon Info", 
                    position = "right"
                ), 
            bslib::card("Pokemon Select Input"), 
            bslib::layout_column_wrap(
                width = 1, 
                bslib::layout_column_wrap(
                    width = 1/2, 
                    bslib::card("Pokemon Name"), 
                    bslib::card("Pokemon Photo"), 
                    bslib::card("Pokemon Move Select"), 
                    bslib::card("Pokemon Move Description")
                ), 
                bslib::layout_column_wrap(
                    width = 1/2, 
                    bslib::card("Pokemon Map Location"), 
                    bslib::card("Pokemon Damage"), 
                    bslib::card("Pokemon Evolution"), 
                    bslib::card("Pokemon Stats")
                )
            )
        )
    )   

server <- function(input, output, session) {}

shinyApp(ui, server)

